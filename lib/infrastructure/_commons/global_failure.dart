import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_failure.freezed.dart';

@freezed
abstract class GlobalFailure with _$GlobalFailure {
  const factory GlobalFailure.serverError(String? errorText) = ServerError;
  const factory GlobalFailure.unauthorized(String errorText) = Unauthorized;
  const factory GlobalFailure.noNetwork() = NoNetwork;
}
