import 'package:flutter/material.dart';

class LoginBotton extends StatelessWidget {
  const LoginBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: MaterialButton(
          height: 40,
          color: Theme.of(context).colorScheme.primary,
          onPressed: () {},
          child: const Text(
            'Login',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ))
      ],
    );
  }
}
