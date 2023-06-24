import 'package:flutter/material.dart';
import 'package:alo_moves/ui/resources/theme_manager.dart';

class DefaultElevatedButton extends StatelessWidget {
  const DefaultElevatedButton({
    required this.label,
    required this.onPressed,
    this.height,
    this.width,
    this.backgroundColor,
    this.isLoading = false,
  });

  final String label;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          width ?? screenSize.width,
          height ?? screenSize.height * 0.06,
        ),
        backgroundColor: backgroundColor,
      ),
      onPressed: () {
        if (!isLoading) onPressed();
      },
      child: isLoading
          ? SizedBox(
              height: screenSize.height * 0.035,
              width: screenSize.height * 0.035,
              child: const CircularProgressIndicator(
                color: ColorPalette.white,
              ),
            )
          : Text(label),
    );
  }
}
