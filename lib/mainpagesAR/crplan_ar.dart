// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quantity_input/quantity_input.dart';
import 'package:firebase_auth/firebase_auth.dart';
 
import '../mainpagesEN/planlist.dart';

class CreatePlanPageAR extends StatefulWidget {
  const CreatePlanPageAR({super.key});

  @override
  State<CreatePlanPageAR> createState() => _CreatePlanPageARState();
}

class _CreatePlanPageARState extends State<CreatePlanPageAR> {
  int simpleIntInput = 1;
  final String? userId = FirebaseAuth.instance.currentUser?.uid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: const Color.fromRGBO(40, 87, 69, 1),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "خطط لرحلتك",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                "كم عدد أيام رحلتك؟",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Color.fromRGBO(40, 87, 69, 1),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              QuantityInput(
                  decoration: const InputDecoration(border: InputBorder.none),
                  maxValue: 7,
                  buttonColor: const Color.fromRGBO(40, 87, 69, 1),
                  acceptsZero: false,
                  value: simpleIntInput,
                  onChanged: (value) => setState(() =>
                      simpleIntInput = int.parse(value.replaceAll(',', '')))),
              Text('Value: $simpleIntInput',
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  if (simpleIntInput == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlanList1AR(),
                      ),
                    );
                  } else if (simpleIntInput == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlanList2AR(),
                      ),
                    );
                  } else if (simpleIntInput == 3) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlanList3AR(),
                      ),
                    );
                  } else if (simpleIntInput == 4) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlanList4AR(),
                      ),
                    );
                  } else if (simpleIntInput == 5) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlanList5AR(),
                      ),
                    );
                  } else if (simpleIntInput == 6) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlanList6AR(),
                      ),
                    );
                  } else if (simpleIntInput == 7) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlanList7AR(),
                      ),
                    );
                  }
                },
                child: Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(40, 87, 69, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                      child: Text(
                    "أظهر خطتي",
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              const Text(
                "خططك المحفوظه",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Color.fromRGBO(40, 87, 69, 1),
                ),
              ),
              SizedBox(height: 10),
              StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('plans')
                    .where('userId', isEqualTo: userId)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text('حدث خطأ في جلب البيانات');
                  }
                  if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return Center(child: Text('لا توجد خطط محفوظة إلى الآن'));
                  }
                  final documents = snapshot.data!.docs;
                  return Container(
                    height: 300,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: documents.length,
                      itemBuilder: (context, index) {
                        Map<String, dynamic>? data =
                            documents[index].data() as Map<String, dynamic>?;
                        String planName = data?['nameplan'] ?? 'Unnamed Plan';
                        String day = data?['day'] ?? '0';
                        return GestureDetector(
                          onTap: () {
                            switch (day) {
                              case '1':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PlanList1AR()));
                                break;
                              case '2':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PlanList2AR()));
                                break;
                              case '3':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PlanList3AR()));
                                break;
                              case '4':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PlanList4AR()));
                                break;
                              case '5':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PlanList5AR()));
                                break;
                              case '6':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PlanList6AR()));
                                break;
                              case '7':
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PlanList7AR()));
                                break;
                              default:
                                break;
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.all(8),
                            width: 300,
                            height: 70,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(15)),
                            child: ListTile(
                              title: Center(
                                child: Text(
                                  '$planName - Day: $day',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
