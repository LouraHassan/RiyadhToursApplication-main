import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:testapp1/AdminPages/AdminScreen.dart';
import 'package:testapp1/AdminPages/adminhome_page_ar.dart';
import 'package:testapp1/mainpagesAR/home_page_ar.dart';
import 'package:testapp1/mainpagesAR/page1_ar.dart';
import 'package:testapp1/mainpagesAR/signup_page_ar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../widgets/form_container_widget.dart';

class LoginPageAR extends StatefulWidget {
  const LoginPageAR({super.key});

  @override
  _LoginPageARState createState() => _LoginPageARState();
}

class _LoginPageARState extends State<LoginPageAR> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "تسجيل الدخول",
          style: TextStyle(
            fontSize: 30,
            color: Color.fromRGBO(40, 87, 69, 1),
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
          ),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Page1AR()),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 40,
              color: Color.fromRGBO(40, 87, 69, 1),
            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Image.asset(
                  'images/gplogo.jpg',
                  height: 200,
                ),
                const SizedBox(
                  height: 20,
                ),
                FormContainerWidget(
                  controller: _emailController,
                  hintText: "البريد الإلكتروني",
                  icon: const Icon(Icons.mail),
                  isPasswordField: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                FormContainerWidget(
                  controller: _passwordController,
                  hintText: "كلمة المرور",
                  icon: const Icon(Icons.lock),
                  isPasswordField: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () async {
                    try {
                      UserCredential userCredential = await FirebaseAuth
                          .instance
                          .signInWithEmailAndPassword(
                        email: _emailController.text.trim(),
                        password: _passwordController.text.trim(),
                      );

                      DocumentSnapshot<Map<String, dynamic>> userDoc =
                          await FirebaseFirestore.instance
                              .collection('users')
                              .doc(userCredential.user!.uid)
                              .get();

                      if (userDoc.exists) {
                        String userType = userDoc.data()!['type'];
                        if (userType == 'user') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePageAR()),
                          );
                        } else if (userType == 'admin') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AdminHomePageAR()),
                          );
                        } else {}
                      } else {}
                    } on FirebaseAuthException catch (e) {
                      print("حدث خطأ أثناء تسجيل الدخول: ${e.message}");

                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text("خطأ"),
                          content: Text("تسجيل الدخول فشل: ${e.message}"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("موافق"),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(253, 198, 81, 1),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 8,
                        )
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPageAR()),
                        );
                      },
                      child: const Text(
                        "انشئ حساب",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(40, 87, 69, 1),
                        ),
                      ),
                    ),
                    const Text(
                      "مستخدم جديد؟",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
