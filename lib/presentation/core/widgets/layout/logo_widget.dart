import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final double? size;
  const AppLogo({super.key, this.size});
  @override
  Widget build(BuildContext context) {
    return FlutterLogo(size: size);
  }
}

class AppLogoFull extends StatelessWidget {
  final double? width;
  final double? height;
  const AppLogoFull({super.key, required this.width, required this.height});
  @override
  Widget build(BuildContext context) {
    return const FlutterLogo();
  }
}
