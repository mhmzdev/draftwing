import 'package:draftwing/configs/configs.dart';
import 'package:hive/hive.dart';

/// [Fault] is a sealed class that represents a fault in the system.
/// It handles exceptions, errors, unknown faults, and custom faults.
sealed class Fault<T> {
  const Fault._internal(this.stackTrace);
  final StackTrace stackTrace;

  factory Fault.fromObjectAndStackTrace(Object object, StackTrace stackTrace) =>
      switch (object) {
        final Exception ex => ExceptionFault(ex, stackTrace),
        final Error err => ErrorFault(err, stackTrace),
        _ => UnknownFault(object.toString(), stackTrace),
      };
}

/// Represents a fault caused by a Hive error
final class HiveFault<T> extends Fault<T> {
  final HiveError error;
  const HiveFault(this.error, StackTrace stackTrace)
    : super._internal(stackTrace);
}

/// Represents a fault caused by an exception
final class ExceptionFault<T> extends Fault<T> {
  final Exception exception;
  const ExceptionFault(this.exception, StackTrace stackTrace)
    : super._internal(stackTrace);
}

/// Represents a fault caused by an error
final class ErrorFault<T> extends Fault<T> {
  final Object error;
  const ErrorFault(this.error, StackTrace stackTrace)
    : super._internal(stackTrace);
}

/// Represents a fault with unknown cause
final class UnknownFault<T> extends Fault<T> {
  final String text;
  const UnknownFault(this.text, StackTrace stackTrace)
    : super._internal(stackTrace);
}

/// Represents a fault with custom information
final class CustomFault<T> extends Fault<T> {
  final T faultInfo;
  const CustomFault(this.faultInfo, StackTrace stackTrace)
    : super._internal(stackTrace);
}

/// Returns the message of the fault
extension FaultExtension on Fault {
  String get message => switch (this) {
    final ExceptionFault ex => ex.exception.toString().splitError,
    final ErrorFault err => err.error.toString(),
    final UnknownFault text => text.text,
    final CustomFault fault => fault.faultInfo.toString(),
    final HiveFault hive => hive.error.message.splitError,
  };
}