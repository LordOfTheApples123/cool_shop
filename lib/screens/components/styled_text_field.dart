import 'package:cool_shop/screens/utils/value_stream_wrapper.dart';
import 'package:flutter/material.dart';

class StyledTextFieldWithValidation extends StatelessWidget {
  const StyledTextFieldWithValidation({
    Key? key,
    required this.textController,
    required this.errorTextStream,
    required this.hintText,
    this.isPhone = false,
  }) : super(key: key);

  final String hintText;
  final bool isPhone;
  final TextEditingController textController;
  final ValueStreamWrapper<String?> errorTextStream;


  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;
    return StreamBuilder<String?>(
      stream: errorTextStream.stream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          debugPrint("wtf");
        }

        return TextField(
          keyboardType: isPhone? TextInputType.number : TextInputType.text,
          controller: textController,
          style: textTheme.labelSmall,
          decoration: InputDecoration(
            hintText: hintText,
            errorText: errorTextStream.valueOrNull,
          ),
        );
      },
    );
  }
}
