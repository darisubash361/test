import 'package:flutter/material.dart';

class inputField extends StatelessWidget {
  const inputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              style: const TextStyle(color: Colors.red, fontSize: 20),
              decoration: InputDecoration(
                hintText: 'Enter Your Email',
                labelText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            TextField(
              style: const TextStyle(color: Colors.red),
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Enter Your Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  suffixIcon: const Icon(Icons.lock),
                  labelText: 'Password'),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                print('Successful');
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                elevation: 50,
              ),
              child: const Text('Login'),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                print('Password Forgotten');
              },
              child: const Text('Forget your Password?'),
            ),
          ],
        ),
      ),
    );
  }
}
