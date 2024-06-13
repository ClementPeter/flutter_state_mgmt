//

//
//
//
//
//
//
//
//
//
//
import 'package:flutter/material.dart';
import 'package:value_notifier/form_validation/form_value_notifier.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final FormValueNotifier formNotifier = FormValueNotifier();

  bool? showFormState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form value notifier'),
      ),
      body: ValueListenableBuilder(
        valueListenable: ValueNotifier<bool>(formNotifier.isValid),
        builder: (context, isValid, child) {
          return Padding(
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
                showFormState == true
                    ? const Text('Valid: Both Field are filled')
                    : const Text('Invalid: One or both field is empty'),
                const Divider(),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      formNotifier.isValid
                          ? showFormState = true
                          : showFormState = false;
                    });

                    if (isValid) {
                      print('Valid: Both Field are filled');
                    } else {
                      print('Invalid: One or both field is empty');
                    }
                  },
                  child: const Text('Login'),
                ),
              ],
            ),
          );
        },
        //Wont reflect
        // child: const Text('test data'),
        // child: showFormState == true
        //     ? const Text('Valid: Both Field are filled')
        //     : const Text('Invalid: One or both field is empty'),
      ),
    );
  }
}
