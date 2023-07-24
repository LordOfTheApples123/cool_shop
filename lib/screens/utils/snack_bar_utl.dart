import 'package:flutter/material.dart';

extension SnackBarExtension on BuildContext {
  void showSnackBar(String msg) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        padding: const EdgeInsets.all(10),
        content: Text(msg),
      ),
    );
  }
}
