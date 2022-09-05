import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../contact_page.dart';

class DentalDoc extends StatefulWidget {
  const DentalDoc({super.key});

  @override
  State<DentalDoc> createState() => _DentalDocState();
}

class _DentalDocState extends State<DentalDoc> {
  final List _dentalDoctors = [];

  fetchSkinDoctors() async {
    var firestoreInstance = FirebaseFirestore.instance;
    QuerySnapshot qn = await firestoreInstance
        .collection('doctors')
        .where("Dcategory", isEqualTo: "dental")
        .get();
    setState(() {
      for (int i = 0; i < qn.docs.length; i++) {
        _dentalDoctors.add({
          "doctr-name": qn.docs[i]["Dname"],
          "doctr-cat": qn.docs[i]["Dcategory"],
          "doctr-exp": qn.docs[i]["Dexp"],
          "doctr-img": qn.docs[i]["Dimg"],
        });
      }
    });
    return qn.docs;
  }

  @override
  void initState() {
    fetchSkinDoctors();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: ListView.builder(
        itemCount: _dentalDoctors.length,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              Container(
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
                            'lib/images/doctorm.png',
                            height: 90,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${_dentalDoctors[index]["doctr-name"]}',
                                style: const TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                '${_dentalDoctors[index]["doctr-exp"]}',
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),

                              //Appoinment Button
                              GestureDetector(
                                onTap: (() {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ContactPage()),
                                  );
                                }),
                                child: Container(
                                  height: 40,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Colors.deepPurple[400],
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.deepPurple
                                              .withOpacity(0.15),
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
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          );
        }),
      ),
    );
  }
}
