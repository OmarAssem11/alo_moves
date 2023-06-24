import 'package:flutter/material.dart';
import 'package:alo_moves/generated/l10n.dart';
import 'package:alo_moves/ui/resources/values_manager.dart';

class ErrorIndicator extends StatelessWidget {
  const ErrorIndicator();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Icon(
          Icons.error,
          color: theme.primaryColor,
          size: Sizes.s40,
        ),
        const SizedBox(height: Sizes.s12),
        Text(
          S.current.somethingWentWrong,
          style: theme.textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
