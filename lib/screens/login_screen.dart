
import 'package:flutter/material.dart';
import 'package:messenger_screen/components.dart';
import 'package:messenger_screen/screens/home_screen.dart';
import 'package:messenger_screen/screens/messenger_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool hide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const HomeScreen();
                },
              ),
            );
          },
        ),
        elevation: 20.0,
        // controls the size of the shadow below the appBar
        shadowColor: Colors.blueGrey,
        // The color of the shadow below the appBar
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                defaultFormField(
                  controller: emailController,
                  boardType: TextInputType.emailAddress,
                  prefix: Icons.email,
                  label: 'Email',
                  validate: (String? val) {
                    if (val!.isEmpty) {
                      return 'email must not be empty';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                defaultFormField(
                  controller: passwordController,
                  boardType: TextInputType.emailAddress,
                  prefix: Icons.email,
                  suffix: hide ? Icons.visibility : Icons.visibility_off,
                  suffixPressed: () {
                    setState(() {
                      hide = !hide;
                    });
                  },
                  label: 'Password',
                  onChange: (val) {
                    debugPrint(val);
                  },
                  validate: (String? val) {
                    if (val!.isEmpty) {
                      return 'password must not be empty';
                    }
                    return null;
                  },
                  obscure: hide,
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    color: Colors.deepPurple,
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        debugPrint(emailController.text);
                        debugPrint(passwordController.text);
                        if (emailController.text == 'mohammedsayed7414@gmail.com' &&
                            passwordController.text == '0000') {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MessengerScreen(),
                            ),
                          );
                        } else {
                          emailController.text = '';
                          passwordController.text = '';
                        }
                      }
                    },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                /// stop here ******************************************************************************************

                const SizedBox(
                  height: 15,
                ),
                defaultButton(
                  text: 'reusable',
                  onPressedFunction: () {},
                  background: Colors.green,
                ),
                const SizedBox(
                  height: 15,
                ),
                defaultButton(
                  text: 'reusable',
                  onPressedFunction: () {},
                  isUpperCase: false,
                  width: 200.0,
                  background: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
