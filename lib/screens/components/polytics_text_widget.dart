import 'package:flutter/material.dart';

class PolyticsTextWidget extends StatelessWidget {
  const PolyticsTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return RichText(
      maxLines: 3,
      text: TextSpan(style: textTheme.bodyMedium, children: [
        const TextSpan(text: "Нажимая на кнопку, вы соглашаетесь с "),
        TextSpan(
          text: "Правилами и политикой компании",
          style: textTheme.bodyMedium
              ?.copyWith(decoration: TextDecoration.underline),
        ),
      ]),
    );
  }
}
