import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isCancel;

  const MyButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isCancel = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isCancel ? Colors.white : theme.colorScheme.primary,
        foregroundColor: isCancel ? theme.colorScheme.primary : Colors.white,
        elevation: isCancel ? 0 : 2,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side:
              isCancel
                  ? BorderSide(color: theme.colorScheme.primary)
                  : BorderSide.none,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
      ),
    );
  }
}
