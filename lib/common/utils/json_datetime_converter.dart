import 'package:json_annotation/json_annotation.dart';

class SafeDateTimeConverter implements JsonConverter<DateTime?, Object?> {
  const SafeDateTimeConverter();

  @override
  DateTime? fromJson(Object? json) {
    if (json == null) return null;
    final s = json.toString();
    if (s.isEmpty) return null;
    return DateTime.tryParse(s);
  }

  @override
  Object? toJson(DateTime? date) => date?.toIso8601String();
}
