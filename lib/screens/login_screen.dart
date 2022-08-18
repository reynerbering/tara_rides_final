import 'package:flutter/material.dart';
import 'package:ta_rides_final/screens/create_profile_screen.dart';
import 'package:ta_rides_final/screens/map_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Ta',
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'RIDES',
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFF2020),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  TextFormField(
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                    ),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 50),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      hintText: 'Username',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                    ),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 50),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () => print('ON TAP PRINT'),
                    child: const Text(
                      'Forgotten Password?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreateProfileScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Or Create a New Account',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MapScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      primary: const Color(0xFF35B73A),
                      padding: const EdgeInsets.fromLTRB(70, 20, 70, 20),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/bike.png',
            ),
          ],
        ),
      ),
    );
  }
}
