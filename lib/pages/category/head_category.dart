import 'package:flutter/material.dart';
import 'package:ramptht_health/pages/category/surgeon_doctor.dart';

import 'dental_doc.dart';
import 'kidney_doc.dart';
import 'ortho_doc.dart';

class HeadCategory extends StatelessWidget {
  const HeadCategory({super.key});

  @override
  Widget build(BuildContext context) {
    double pw = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),

              //Ortho
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OrthoDoctor()),
                  );
                },
                child: Container(
                  width: pw / 4,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'lib/icons/broken-bone.png',
                        height: 20,
                      ),
                      const Text("ortho"),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),

              //Surgeon
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SurgeonDoctor()),
                  );
                },
                child: Container(
                  width: pw / 3.4,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'lib/icons/surgeon.png',
                        height: 20,
                      ),
                      const Text("physicn"),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),

              //Dental
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DentalDoc()),
                  );
                },
                child: Container(
                  width: pw / 3.4,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'lib/icons/tooth.png',
                        height: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Dental"),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),

          //Second category row
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              children: [
                //Kisney

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const KidneyDoc()),
                    );
                  },
                  child: Container(
                    width: pw / 4,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'lib/icons/kidney.png',
                          height: 20,
                        ),
                        const Text("Kidne"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),

                //eye
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrthoDoctor()),
                    );
                  },
                  child: Container(
                    width: 100,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'lib/icons/eye.png',
                          height: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("Eye"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),

                //gastro
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrthoDoctor()),
                    );
                  },
                  child: Container(
                    width: 120,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'lib/icons/stomach.png',
                          height: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("Gastro"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 8,
          ),
          //third category row
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              children: [
                //Kisney

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const KidneyDoc()),
                    );
                  },
                  child: Container(
                    width: pw / 4,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'lib/icons/kidney.png',
                          height: 20,
                        ),
                        const Text("Kidne"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),

                //eye
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrthoDoctor()),
                    );
                  },
                  child: Container(
                    width: 100,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'lib/icons/eye.png',
                          height: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("Eye"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),

                //gastro
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrthoDoctor()),
                    );
                  },
                  child: Container(
                    width: 120,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'lib/icons/stomach.png',
                          height: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("Gastro"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
