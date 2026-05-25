import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/{{name}}/i_{{name}}_facade.dart';
import 'package:flutter_template/domain/{{name}}/{{name}}_failure.dart';

/// Implementation of the {{name.pascalCase()}} facade.
@LazySingleton(as: I{{name.pascalCase()}}Facade)
class {{name.pascalCase()}}Facade implements I{{name.pascalCase()}}Facade {
  // TODO: Inject remote/local data sources if needed
  const {{name.pascalCase()}}Facade();

  // @override
  // Future<Either<{{name.pascalCase()}}Failure, Unit>> performAction() async {
  //   try {
  //     // Perform logic here
  //     return right(unit);
  //   } catch (e) {
  //     return left(const {{name.pascalCase()}}Failure.serverError());
  //   }
  // }
}
