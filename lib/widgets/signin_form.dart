import 'package:ecommerce/widgets/label.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Form(
          // key: _key,
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Label(text: 'Email Address'),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'e.g name@example.com',
              contentPadding: const EdgeInsets.all(10),
              hintStyle: const TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              errorStyle: const TextStyle(fontSize: 14, color: Colors.red),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Label(text: 'Password'),
          TextFormField(
            obscureText: true,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              hintText: 'e.g ***********',
              contentPadding: const EdgeInsets.all(10),
              hintStyle: const TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              'Forgot Password?',
              style: TextStyle(color: Colors.blue[900], fontSize: 16),
            ),
          )
        ],
      )),
      const SizedBox(
        height: 30,
      ),
      Row(
        children: [
          Expanded(
              child: MaterialButton(
            height: 55,
            color: Colors.purple[900],
            onPressed: () {},
            child: const Text(
              'Login',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ))
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Dont have account?"),
          TextButton(
              onPressed: () {},
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.purple[900], fontSize: 15),
              ))
        ],
      )
    ]);
  }
}
