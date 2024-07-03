import 'package:buy_order_project/components/my_button.dart';
import 'package:buy_order_project/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<StatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

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
              "Let's create an account for you", 
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

            MyTextfield(
              controller: confirmPasswordController,
              hintText: 'Confirm Password',
              obscureText: true,
            ),

            const SizedBox(height: 10),

            // sign in button
            MyButton(
              text: 'Sign Up',
              onTap: () {

              },
            ),

            const SizedBox(height: 25),

            // not a member register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'already have an account?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Login now',
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