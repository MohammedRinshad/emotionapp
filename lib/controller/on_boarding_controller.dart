import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

class OnboardingController extends GetxController {
  final liquidController = LiquidController();
  var currentPage = 0.obs;

  void onPageChange(int page) {
    currentPage.value = page;
  }

  @override
  void onClose() {
    super.onClose();
  }
}
