class AppSize {
  // full screen width and height

  static const double xdHeightSize = 667.0;
  static const double xdWidthSize = 375.0;


  static double heightPercentage(double size) {
    return size / xdHeightSize;
  }

  static double widthPercentage(double size) {
    return size / xdWidthSize;
  }
}

// double setWidth(double value) {
//   return value * AppSize.widthPercentage;
// }

// double setHeight(double value) {
//   return value * AppSize.heightPercentage;
// }