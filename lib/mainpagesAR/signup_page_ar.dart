// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:testapp1/mainpagesAR/home_page_ar.dart';
import 'package:testapp1/mainpagesAR/login_page_ar.dart';
import 'package:testapp1/mainpagesAR/page1_ar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../widgets/form_container_widget.dart';

class SignUpPageAR extends StatefulWidget {
  const SignUpPageAR({super.key});

  @override
  State<SignUpPageAR> createState() => _SignUpPageARState();
}

class _SignUpPageARState extends State<SignUpPageAR> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "تسجيل",
            style: TextStyle(
                fontSize: 30,
                color: Color.fromRGBO(40, 87, 69, 1),
                fontWeight: FontWeight.w500),
          ),
          leading: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Page1AR()));
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
                    height: 15,
                  ),
                  FormContainerWidget(
                    controller: _usernameController,
                    hintText: "اسم المستخدم",
                    icon: const Icon(Icons.person),
                    isPasswordField: false,
                  ),
                  const SizedBox(
                    height: 10,
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
                    height: 10,
                  ),
                  const FormContainerWidget(
                    hintText: "تأكيد كلمة المرور",
                    icon: Icon(Icons.lock),
                    isPasswordField: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    child: GestureDetector(
                      onTap: () async {
                        // التحقق من طول كلمة المرور
                        if (_passwordController.text.trim().length < 6) {
                          // عرض رسالة تنبيه للمستخدم
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  'كلمة المرور يجب أن تكون على الأقل 6 أحرف'),
                              backgroundColor: Colors.red,
                            ),
                          );
                        } else if (!_emailController.text.trim().contains(
                            RegExp(
                                r'^[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]+'))) {
                          // التحقق من صحة البريد الإلكتروني
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content:
                                  Text('ادخل بريد الكتروني صالح'),
                              backgroundColor: Colors.red,
                            ),
                          );
                        } else {
                          try {
                            await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                              email: _emailController.text.trim(),
                              password: _passwordController.text.trim(),
                            );

                            // الحصول على معلومات المستخدم بعد التسجيل
                            User? user = FirebaseAuth.instance.currentUser;

                            // تخزين معلومات إضافية للمستخدم في Firestore
                            await FirebaseFirestore.instance
                                .collection('users')
                                .doc(user?.uid)
                                .set({
                              'username': _usernameController.text.trim(),
                              'email': _emailController.text.trim(),
                              'password': _passwordController.text.trim(),
                              'type': 'user',
                            });

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePageAR(),
                              ),
                            );
                          } catch (e) {
                            // عرض رسالة خطأ في حالة فشل التسجيل
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('حدث خطأ أثناء التسجيل: $e'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          }
                        }
                      },
                      child: Container(
                        width: 200, // Adjust the width as needed
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
                            'تسجيل',
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
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
                                  builder: (context) => const LoginPageAR()));
                        },
                        child: const Text(
                          "تسجيل الدخول",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(40, 87, 69, 1),
                          ),
                        ),
                      ),
                      const Text(
                        "لديك حساب من قبل؟ ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
