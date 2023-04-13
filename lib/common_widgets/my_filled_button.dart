import 'package:flutter/material.dart';

class MyFilledButton extends StatelessWidget {
  const MyFilledButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.padding,
    this.minimumSize,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final Size? minimumSize;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        padding: padding,
        minimumSize: minimumSize,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
