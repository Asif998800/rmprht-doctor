import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImagePath;
  final String doctorName;
  final String doctorProfession;

  const DoctorCard(
      {super.key,
      required this.doctorImagePath,
      required this.doctorName,
      required this.doctorProfession});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            //doctor picture
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                doctorImagePath,
                height: 100,
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            //doctor name
            Text(
              doctorName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //doctor title
            Text(doctorProfession),
          ],
        ),
      ),
    );
  }
}
