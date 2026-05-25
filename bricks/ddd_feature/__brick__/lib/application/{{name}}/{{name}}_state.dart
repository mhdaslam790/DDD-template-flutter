import 'package:dartz/dartz.dart';

part of '{{name}}_bloc.dart';

@freezed
abstract class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State({
    required bool isLoading,
    required Option<Either<{{name.pascalCase()}}Failure, Unit>> failureOrSuccessOption,
  }) = _{{name.pascalCase()}}State;

  factory {{name.pascalCase()}}State.initial() => {{name.pascalCase()}}State(
        isLoading: false,
        failureOrSuccessOption: none(),
      );
}
