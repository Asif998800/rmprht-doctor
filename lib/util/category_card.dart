import 'package:flutter/material.dart';
import 'package:ramptht_health/pages/doctor_list.dart';

class CategoryCard extends StatelessWidget {
  final iconImagePath;
  final String categoryName;

  const CategoryCard(
      {super.key, required this.iconImagePath, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: GestureDetector(
        onTap: (() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DoctorList()),
          );
        }),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Image.asset(
                iconImagePath,
                height: 40,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(categoryName),
            ],
          ),
        ),
      ),
    );
  }
}
