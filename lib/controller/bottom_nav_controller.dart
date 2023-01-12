import 'package:get/get.dart';

enum PageName { First, Second, Third, Fourth, Fifth }

class BottomNavController extends GetxController {
  RxInt pageIndex = 0.obs;

  void changeBottomNav(int value) {
    var page = PageName.values[value];
    switch (page) {
      case PageName.First:
      case PageName.Second:
      case PageName.Third:
      case PageName.Fourth:
      case PageName.Fifth:
        _chagePage(value);
        break;
    }
    print("page change");
  }

  void _chagePage(int value) {
    pageIndex(value);
  }
}
