import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../util/doctor_card.dart';
import 'all_doctors.dart';
import 'category/head_category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double ph = MediaQuery.of(context).size.height;
    double pw = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: [
            //appbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              //name
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hello',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Asif',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  //profile pic
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.person),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: ph * 0.013,
            ),

            //card => never lose your prescription
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: ph * 0.17,
                width: pw,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[300],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    //animation
                    Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(math.pi),
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset('lib/images/headerdoctor.png'),
                      ),
                    ),
                    //text
                    SizedBox(
                      width: ph * 0.02,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Never lose Prescription',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: ph * 0.012,
                          ),
                          const Text(
                            'Save all prescription & report',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: ph * 0.012,
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(12)),
                            child: const Center(
                              child: Text(
                                'Get started',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: ph * 0.015,
            ),

            //search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: ph * 0.07,
                width: pw,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  readOnly: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'How can we help you',
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
            ),
            SizedBox(
              height: ph * 0.015,
            ),

            //horizental listview => Category
            /*SizedBox(
              height: 60,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: const [
                CategoryCard(
                  categoryName: 'Dentist',
                  iconImagePath: 'lib/icons/tooth.png',
                ),
                CategoryCard(
                  categoryName: 'Surgeon',
                  iconImagePath: 'lib/icons/surgeon.png',
                ),
                CategoryCard(
                  categoryName: 'Drugs',
                  iconImagePath: 'lib/icons/drugs.png',
                ),
                CategoryCard(
                  categoryName: 'Maternity',
                  iconImagePath: 'lib/icons/maternity.png',
                ),
              ]),
            ),
            const SizedBox(
              height: 10,
            ),
            */

            //Category
            const HeadCategory(),
            SizedBox(
              height: ph * 0.015,
            ),

            //doctor list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Doctor list',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AllDoctors()),
                      );
                    },
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: ph * 0.02,
            ),
            //doctor card
            SizedBox(
              height: ph * 0.28,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  DoctorCard(
                      doctorImagePath: 'lib/images/doctor1.jpg',
                      doctorName: 'Dr. Abu Nasim',
                      doctorProfession: 'Therapist, 7 y.e'),
                  DoctorCard(
                      doctorImagePath: 'lib/images/doctor2.jpg',
                      doctorName: 'Dr. Hirak Kanti',
                      doctorProfession: 'Surgeon, 5 y.e'),
                  DoctorCard(
                      doctorImagePath: 'lib/images/doctor3.jpg',
                      doctorName: 'Dr. Monirul Islam',
                      doctorProfession: 'Nephrologist, 10 y.e'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
