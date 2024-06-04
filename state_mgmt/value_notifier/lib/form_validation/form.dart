import 'package:flutter/material.dart';
import 'package:value_notifier/form_validation/form_value_notifier.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final FormValueNotifier formNotifier = FormValueNotifier();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form value notifier'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (emailValue) {
                setState(() {
                  formNotifier.email.value = emailValue;
                });
              },
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            const SizedBox(height: 20),
            TextField(
              onChanged: (passwordValue) {
                setState(() {
                  formNotifier.password.value = passwordValue;
                });
              },
              decoration: const InputDecoration(hintText: 'Passsword'),
            ),
            const SizedBox(height: 20),
            ValueListenableBuilder(
              valueListenable: ValueNotifier<bool>(formNotifier.isValid),
              builder: (context, isValid, child) {
                return ElevatedButton(
                  onPressed: () {
                    if (isValid) {
                      print('Valid: Both Field are filled');
                    } else {
                      print('Invalid: One or both field is empty');
                    }
                  },
                  child: const Text('Login'),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
