import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/infrastructure/core/system/injection.dart';
import 'package:flutter_template/application/{{name}}/{{name}}_bloc.dart';
import 'package:flutter_template/presentation/core/widgets/layout/app_scaffold.dart';

@RoutePage()
class {{name.pascalCase()}}Page extends StatelessWidget {
  const {{name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: const Text('{{name.pascalCase()}}'),
      ),
      body: BlocBuilder<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('{{name.pascalCase()}} Page'),
                state.failureOrSuccessOption.fold(
                  () => const SizedBox.shrink(),
                  (either) => either.fold(
                    (failure) => Text('Error: $failure'),
                    (_) => const Text('Success!'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
