import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramptht_health/pages/home_page.dart';
import 'package:ramptht_health/pages/onboard_screen.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 70),
        child: Column(
          children: [
            const Expanded(child: OnBoardScreen()),
            //const Text('Ready to book appointment from home?'),
            const SizedBox(
              height: 30,
            ),
            //buttons

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.location_fill),
                        label: const Padding(
                          padding: EdgeInsets.only(
                            top: 15,
                            bottom: 15,
                          ),
                          child: Text('Around Me'),
                        )),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: const Text(
                'Set your Location Manually',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
