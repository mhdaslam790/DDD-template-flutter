import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_template/domain/{{name}}/i_{{name}}_facade.dart';
import 'package:flutter_template/domain/{{name}}/{{name}}_failure.dart';

part '{{name}}_event.dart';
part '{{name}}_state.dart';
part '{{name}}_bloc.freezed.dart';

@injectable
class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  final I{{name.pascalCase()}}Facade _{{name.camelCase()}}Facade;

  {{name.pascalCase()}}Bloc(this._{{name.camelCase()}}Facade) : super({{name.pascalCase()}}State.initial()) {
    on<_Started>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        failureOrSuccessOption: none(),
      ));
      
      // TODO: Call your facade methods here
      // final opt = await _{{name.camelCase()}}Facade.performAction();
      
      // emit(
      //   opt.fold(
      //     (l) => state.copyWith(isLoading: false, failureOrSuccessOption: some(left(l))),
      //     (r) => state.copyWith(isLoading: false, failureOrSuccessOption: some(right(r))),
      //   ),
      // );
      
      emit(state.copyWith(isLoading: false));
    });
  }
}
