import 'package:final_smart_farm/controller/auth_controller.dart';
import 'package:final_smart_farm/data/model/app_user_model.dart';
import 'package:final_smart_farm/screens/default_screen.dart';
import 'package:final_smart_farm/screens/login.dart';
import 'package:final_smart_farm/screens/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class RootPage extends GetView<AuthController> {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot<User?> user) {
        if(user.hasData) {
          return FutureBuilder<AppUserModel?>(
              future: controller.loginUser(user.data!.uid),
              builder: (context, snapshot){
                if (snapshot.hasData) {
                  return DefaultScreen();
                } else {
                  return Obx(() => controller.user.value.uid != null
                      ? const DefaultScreen()
                      : SignupPage(uid: user.data!.uid));
                }
              });
        }else {
          return const Login();
        }
        });
  }
}
