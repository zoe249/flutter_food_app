import 'package:buy_order_project/components/my_textfield.dart';
import 'package:buy_order_project/components/my_button.dart';
import 'package:buy_order_project/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage()
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25),
            // message
            Text(
              'Food Delivery App', 
              style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).colorScheme.inversePrimary
              ),
            ),

            const SizedBox(height: 25),
            // email
            MyTextfield(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),

            const SizedBox(height: 10),

            MyTextfield(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),

            const SizedBox(height: 10),

            // sign in button
            MyButton(
              text: 'Login',
              onTap: login,
            ),

            const SizedBox(height: 25),

            // not a member register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Register now',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}