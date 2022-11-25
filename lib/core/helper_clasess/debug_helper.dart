// main.dart
import 'package:logger/logger.dart';

// Blue text
var logger = Logger(
  printer: PrettyPrinter(),
);
void logInfo(String msg) {
  logger.i(msg);
}

// Green text
void logSuccess(String msg) {
  logger.d(msg);
}

// Yellow text
void logWarning(String msg) {
  logger.w(msg);
}

// Red text
void logError(String msg) {
  logger.e(msg);
}
