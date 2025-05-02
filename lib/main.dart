import 'dart:async';
import 'dart:developer';

import 'package:flora_care/bootstrap.dart';


Future<void> main() async {
  await runZonedGuarded(bootstrap, (error, stackTrace) {
    log('runZonedGuarded', error:error, stackTrace: stackTrace);
  });
}
