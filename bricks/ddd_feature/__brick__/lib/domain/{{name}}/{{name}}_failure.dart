import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name}}_failure.freezed.dart';

/// Represents all expected failures for the {{name.pascalCase()}} feature.
@freezed
class {{name.pascalCase()}}Failure with _${{name.pascalCase()}}Failure {
  const factory {{name.pascalCase()}}Failure.serverError() = _ServerError;
  const factory {{name.pascalCase()}}Failure.unexpected() = _Unexpected;
}
