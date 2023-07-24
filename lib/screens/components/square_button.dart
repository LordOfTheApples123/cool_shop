
import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  const SquareButton({Key? key, this.onTap, required this.icon})
      : super(key: key);

  final VoidCallback? onTap;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      height: 32,
      width: 32,
      color: onTap == null ? colors.outlineVariant : colors.onBackground,
      child: Align(
        child: IconButton(
          icon: Center(
            child: icon,
          ),
          onPressed: onTap,
        ),
      ),
    );
  }
}
