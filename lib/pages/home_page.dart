import 'package:flutter/material.dart';
import 'package:ramptht_health/util/category_card.dart';
import 'dart:math' as math;

import '../util/doctor_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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

            const SizedBox(
              height: 25,
            ),

            //card => how do you feel
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
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
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'How do you feel?',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                            'Fill out your madical card now',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
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
            const SizedBox(
              height: 25,
            ),

            //search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'How can we help you',
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
            ),

            const SizedBox(
              height: 25,
            ),
            //horizental listview => Category
            SizedBox(
              height: 80,
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
              height: 25,
            ),
            //doctor list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Doctor list',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 25,
            ),
            Expanded(
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
