import 'package:flutter/material.dart';

class CenterButtonWithInfo extends StatelessWidget {
  const CenterButtonWithInfo({
    super.key,
    this.onTap,
    required this.infoText,
    required this.buttonText,
  });

  final VoidCallback? onTap;
  final String infoText;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Text(
            infoText,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SizedBox(
            height: 50,
            child: FilledButton(
              onPressed: onTap,
              child: Center(
                child: Text(
                  buttonText,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}