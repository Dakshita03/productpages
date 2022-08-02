import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
//830/160=5.18
  //393/20
  static double productCard = screenHeight / 5.18;

  static double width10 = screenWidth / 39.3;
  static double height3 = screenWidth / 276.7;
  static double height10 = screenHeight / 83.0;
  static double width20 = screenWidth / 19.65;
  static double height20 = screenHeight / 41.50;
  static double radius20 = screenHeight / 41.50;
}
