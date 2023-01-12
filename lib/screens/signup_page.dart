import 'dart:io';

import 'package:final_smart_farm/controller/auth_controller.dart';
import 'package:final_smart_farm/data/model/app_user_model.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  final String uid;

  const SignupPage({required this.uid, Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController nicknameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  void update() => setState(() {});

  Widget _avatar() {
    return Column(
      children: [

        const SizedBox(height: 15),
      ],
    );
  }

  Widget _nickname() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: TextField(
        controller: nicknameController,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10), hintText: '닉네임'),
      ),
    );
  }

  Widget _description() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: TextField(
        controller: descriptionController,
        decoration:
            InputDecoration(contentPadding: EdgeInsets.all(10), hintText: "이메일"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          '회원가입',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 30,
            ),
            _avatar(),
            SizedBox(
              height: 30,
            ),
            _nickname(),
            SizedBox(
              height: 30,
            ),
            _description(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
          child: ElevatedButton(
            onPressed: () {
              //validation
              var signupUser = AppUserModel(
                  uid: widget.uid,
                  name: nicknameController.text,
                  email: descriptionController.text);
              AuthController.to.signup(signupUser);
            },
            child: Text('회원가입'),
          ),
        ),
      ),
    );
  }
}
