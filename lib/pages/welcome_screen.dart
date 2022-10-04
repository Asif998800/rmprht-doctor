import 'package:flutter/material.dart';
import 'package:ramptht_health/pages/home_page.dart';
import 'package:ramptht_health/pages/onboard_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Expanded(child: OnBoardScreen()),
            //const Text('Ready to book appointment from home?'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (() {}),
              child: const Text('Set your location'),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: RichText(
                text: const TextSpan(
                    text: 'Already a customer',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: '   Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
