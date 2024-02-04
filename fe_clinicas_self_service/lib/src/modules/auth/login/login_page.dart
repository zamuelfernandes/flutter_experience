import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        constraints: BoxConstraints(minHeight: sizeOf.height),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_login.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: sizeOf.width * 0.8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  Text('Login'),
                  const SizedBox(height: 32),
                  TextFormField(
                    decoration: const InputDecoration(label: Text('E-mail')),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    decoration: const InputDecoration(label: Text('Password')),
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: sizeOf.width * 0.8,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('ENTRAR'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
