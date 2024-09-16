import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // update current index when page scroll
  void UpDatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  // Update Current Index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // last screen
      Get.offAll(const LoginScreen());
    } else {
      int _page = currentPageIndex.value + 1;
      pageController.jumpToPage(_page);
    }
  }

  // Update Current Index & jump to the last Page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
