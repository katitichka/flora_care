import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class NotificationService {
  static final NotificationService _instance = NotificationService._internal();
  factory NotificationService() => _instance;
  NotificationService._internal();

  final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> initialize() async {
    try {
      tz.initializeTimeZones();
      
      const AndroidInitializationSettings initializationSettingsAndroid =
          AndroidInitializationSettings('@mipmap/ic_launcher');
      
      const InitializationSettings initializationSettings =
          InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: DarwinInitializationSettings(),
      );
      
      await _notificationsPlugin.initialize(
        initializationSettings,
        onDidReceiveNotificationResponse: (details) {},
      );
    } catch (e) {
      print('Ошибка инициализации уведомлений: $e');
    }
  }

  Future<void> scheduleWateringReminder({
    required int id,
    required String plantName,
    required int wateringFreq,
  }) async {
    await _notificationsPlugin.zonedSchedule(
      id,
      'Пора полить растение!',
      'Ваше растение "$plantName" требует полива',
      _nextInstanceOfWateringTime(wateringFreq),
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'watering_channel',
          'Напоминания о поливе',
          importance: Importance.high,
          priority: Priority.high,
          channelDescription: 'Уведомления о необходимости полива растений',
        ),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      payload: 'plant_$id',
      matchDateTimeComponents: DateTimeComponents.time,
    );
  }

  tz.TZDateTime _nextInstanceOfWateringTime(int days) {
    final now = tz.TZDateTime.now(tz.local);
    return tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day + days,
      12,
      0,
    );
  }

  Future<void> cancelReminder(int id) async {
    await _notificationsPlugin.cancel(id);
  }

  Future<bool> hasScheduledNotification(int id) async {
    final pendingNotifications = await _notificationsPlugin.pendingNotificationRequests();
    return pendingNotifications.any((notification) => notification.id == id);
  }

  Future<void> showImmediateNotification({
    required int id,
    required String plantName,
  }) async {
    await _notificationsPlugin.show(
      id,
      'Срочно полейте растение!',
      'Ваше растение "$plantName" давно не поливали',
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'watering_channel',
          'Напоминания о поливе',
          importance: Importance.high,
          priority: Priority.high,
          channelDescription: 'Уведомления о необходимости полива растений',
        ),
      ),
      payload: 'plant_$id',
    );
  }


}