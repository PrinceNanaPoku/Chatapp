import 'package:chatapp/component/button.dart';
import 'package:chatapp/component/square_tile.dart';
import 'package:chatapp/component/textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  //login method
  void register() {}
  void googleSignUp() {}
  void appleSignUp() {}
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
                  height: 70,
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
                  controller: passwordController,
                  hintText: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                //PASSWORD TEXTFIELD
                MyTextField(
                  controller: confirmPasswordController,
                  hintText: 'Confirm Password',
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),

                //ALREADY REGISTERED
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 5.0),
                        child: Text(
                          'Already Registered?',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(
                          context,
                          '/login',
                        ),
                        child: const Text('Login Here',
                            style: TextStyle(fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //LOGIN BUTTON
                Button(
                  text: 'Sign Up',
                  onTap: register,
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
                      onTap: googleSignUp,
                      image: 'lib/images/google.png',
                    ),
                    SquareTile(
                      onTap: appleSignUp,
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
