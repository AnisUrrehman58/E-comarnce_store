import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../Login/login_screen.dart';


class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();


  /// Variables
final pageController = PageController();
Rx<int> currentPageIndex = 1.obs;

 /// update current index when next page Scroll
void updatePageIndicator(index) => currentPageIndex.value = index;

/// jump to see specific dot  selected page
void dotNavigationClick(index) {

  currentPageIndex.value = index;

  pageController.jumpTo(index);
}

/// update current index & jump  to next page

void nextPage() {
  if (currentPageIndex.value == 2){
    final storage = GetStorage();

    if (kDebugMode){
      print('============= GET STORAGE Next Button Repo ===============');
      print(storage.read('ISFirstTime'));
    }

    storage.write('IsFirstTime', false);



    Get.offAll( const LoginScreen());
  }else{
    int page = currentPageIndex.value +1;
    pageController.jumpToPage(page);
  }
}

/// update Current Index & jump to the last page

void skipPage() {
  currentPageIndex.value = 2;
  pageController.jumpTo(2);
}

}