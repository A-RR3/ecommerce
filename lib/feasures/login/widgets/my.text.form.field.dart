import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({super.key, required this.hint});
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: hint,
          labelStyle: const TextStyle(shadows: [
            BoxShadow(
              // color: Theme.of(context).colorScheme.shadow,
              color: Colors.black,
              offset: Offset(0, 0),
              blurRadius: 30,
              spreadRadius: -17,
            )
          ]),
          contentPadding: const EdgeInsets.all(10),
          hintStyle: Theme.of(context).textTheme.displaySmall,
          errorStyle: TextStyle(
              fontSize: 12, color: Theme.of(context).colorScheme.error),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Theme.of(context).colorScheme.shadow.withOpacity(.05)),
    );
  }
}
