import 'package:flutter/material.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(),
        body: Container(
          height: 150,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),

            //doctor list card
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'lib/images/doctor2.jpg',
                      height: 90,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        const Text(
                          'Dr Abu Nasim',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          'General Pactitioner',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        //Appoinment Button
                        Container(
                          height: 40,
                          width: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.deepPurple[400],
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.deepPurple.withOpacity(0.15),
                                  spreadRadius: 4,
                                  blurRadius: 1,
                                  offset: const Offset(0, 3),
                                )
                              ]),
                          child: const Center(
                            child: Text(
                              'Make an appoinment',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
