import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    required this.pageIndex,
    this.onTap,
    required this.currentIndex,
    required this.text,
  });

  final int pageIndex;
  final int currentIndex;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = ColorScheme.of(context);
    final fonts = TextTheme.of(context);
    return FilledButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          pageIndex == currentIndex ? colors.primary : colors.surfaceContainer,
        ),
        foregroundColor: WidgetStatePropertyAll(
          pageIndex == currentIndex ? colors.onPrimary : colors.onSurface,
        ),
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        ),
      ),
      child: Text(
        text,
        style: fonts.bodySmall?.copyWith(
          fontWeight: FontWeight.w600,
          color:
              pageIndex == currentIndex ? colors.onPrimary : colors.onSurface,
        ),
      ),
    );
  }
}
