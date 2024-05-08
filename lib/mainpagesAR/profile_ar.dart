// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../landingpage.dart';

class ProfilePageAR extends StatefulWidget {
  const ProfilePageAR({super.key});

  @override
  State<ProfilePageAR> createState() => _ProfilePageARState();
}

class _ProfilePageARState extends State<ProfilePageAR> {

  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _bloodTypeController = TextEditingController();
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  TextEditingController _dateOfBirthController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _bloodTypeController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    _dateOfBirthController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _fetchUserData();
  }

  Future<void> _fetchUserData() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final userData = await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .get();

      if (userData.exists) {
        setState(() {
          _firstNameController.text = userData.data()?['firstName'] ?? '';
          _lastNameController.text = userData.data()?['lastName'] ?? '';
          _bloodTypeController.text = userData.data()?['bloodType'] ?? '';
          _heightController.text = userData.data()?['height'] ?? '';
          _weightController.text = userData.data()?['weight'] ?? '';
          _dateOfBirthController.text = userData.data()?['dateOfBirth'] ?? '';
        });
      }
    }
  }

  Future<void> _updateUserData() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .update({
        'firstName': _firstNameController.text,
        'lastName': _lastNameController.text,
        'bloodType': _bloodTypeController.text,
        'height': _heightController.text,
        'weight': _weightController.text,
        'dateOfBirth': _dateOfBirthController.text,
      }).then((_) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('تم تحديث البيانات بنجاح')),
        );
      }).catchError((error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('حدث خطأ أثناء تحديث البيانات')),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: const Color.fromRGBO(40, 87, 69, 1),
          title: const Text('صفحة الحساب',
              style: TextStyle(fontSize: 30, color: Colors.white)),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LandingPage()));
                },
                child: const Icon(
                  Icons.exit_to_app_outlined,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ]),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20.0),
                child: const Icon(
                  Icons.account_circle,
                  size: 100,
                  color: Color.fromRGBO(40, 87, 69, 1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _firstNameController,
                  decoration: const InputDecoration(
                    labelText: 'الاسم الأول',
                    prefixIcon: Icon(Icons.person, color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _lastNameController,
                  decoration: const InputDecoration(
                    labelText: 'الاسم الأخير',
                    prefixIcon: Icon(Icons.person, color: Colors.grey),
                  ),

                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'المعلومات الطبية',
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _bloodTypeController,
                  decoration: const InputDecoration(
                    labelText: 'فصيلة الدم',
                    prefixIcon: Icon(Icons.opacity, color: Colors.grey),
                  ),
                  onChanged: (value) {

                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _heightController,
                  decoration: const InputDecoration(
                    labelText: 'الطول',
                    prefixIcon: Icon(Icons.height, color: Colors.grey),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _weightController,
                  decoration: const InputDecoration(
                    labelText: 'الوزن',
                    prefixIcon: Icon(Icons.fitness_center, color: Colors.grey),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _dateOfBirthController,
                  decoration: const InputDecoration(
                    labelText: 'تاريخ الميلاد',
                    prefixIcon: Icon(Icons.cake, color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: _updateUserData,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(253, 198, 81, 1),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 2),
                              blurRadius: 8)
                        ]),
                    child: const Center(
                        child: Text(
                      'Save',
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
