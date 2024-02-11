import 'package:flutter/material.dart';
import 'package:messenger_screen/screens/login_screen.dart';
import 'package:messenger_screen/screens/signup_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text(
          'First App',
          style: TextStyle(
            fontSize: 30.5,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.print,
            ),
            onPressed: () {
              debugPrint('Hello mohamed');
            },
          ),
          const IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed:
                printMessage, // to call function as an anonymous fun. ,Just type the function name without ()
          ),
        ],
        elevation: 20.0,
        // controls the size of the shadow below the appBar
        shadowColor: Colors.blueGrey,
        // The color of the shadow below the appBar
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
         shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Welcome, Flutter!",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                color: Colors.deepPurple,
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginScreen();
                      },
                    ),
                  );
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                color: Colors.deepPurple,
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignupScreen();
                      },
                    ),
                  );
                },
                child: const Text(
                  'Signup',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void printMessage() {
  debugPrint('Hello Mohamed');
  // print('Hello Mohamed');
}
