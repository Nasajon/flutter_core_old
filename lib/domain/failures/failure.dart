import 'package:flutter_dependencies/flutter_dependencies.dart';

part 'failure.freezed.dart';

/// A base failure class
@Freezed()
class Failure with _$Failure {
  /// Creates a [Failure]
  const factory Failure({
    required String message,
  }) = _Failure;
}
