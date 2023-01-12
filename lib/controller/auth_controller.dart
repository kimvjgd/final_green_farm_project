import 'package:final_smart_farm/data/model/app_user_model.dart';
import 'package:final_smart_farm/data/repository/user_repository.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.find();

  Rx<AppUserModel> user = AppUserModel().obs;
  RxString name = "".obs;

  void signOut() {
    user.value = AppUserModel();
  }

  Future<AppUserModel?> loginUser(String uid) async {
    var userData = await UserRepository.loginUserByUid(uid);
    if(userData != null){
      user(userData);
      // InitBinding.additionalBinding();
    }
    return userData;
  }
  void signup(AppUserModel User) async {
    _submitSignup(User);
  }


  void _submitSignup(AppUserModel signupUser)async {
    var result = await UserRepository.signup(signupUser);
    if(result){
      loginUser(signupUser.uid!);
    }
  }

}