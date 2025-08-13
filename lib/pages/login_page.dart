import 'package:chatapp/component/button.dart';
import 'package:chatapp/component/square_tile.dart';
import 'package:chatapp/component/textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  //login method
  void login() {}
  void googleSignIn() {}
  void appleSignIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                //LOGO
                Text(
                  'Capsules',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Icon(
                  Icons.mark_chat_read,
                ),
                const SizedBox(
                  height: 90,
                ),
                //EMAIL TEXTFIELD
                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                //PASSWORD TEXTFIELD
                MyTextField(
                  controller: emailController,
                  hintText: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),

                //forgot password
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //LOGIN BUTTON
                Button(
                  text: 'Login',
                  onTap: login,
                ),
                const SizedBox(
                  height: 10,
                ),
                //or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //Google and Apple Sign In

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(
                      onTap: googleSignIn,
                      image: 'lib/images/google.png',
                    ),
                    SquareTile(
                      onTap: appleSignIn,
                      image: 'lib/images/apple2.png',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
