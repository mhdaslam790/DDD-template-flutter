import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/styles/app_theme.dart';

class LinkText extends StatelessWidget {
  const LinkText({
    super.key,
    required this.text,
    required this.onTap,
    this.hasUnderline = false,
  });
  final String text;
  final bool hasUnderline;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: hasUnderline ? AppTheme.linkStyle : null,
      ),
    );
  }
}
