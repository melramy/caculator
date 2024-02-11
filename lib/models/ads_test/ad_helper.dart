// import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdHelper2 {
  static const bool _testMode = false;

  static String get bannerAdUnitId {
    if (_testMode == true) {
      //  return "ca-app-pub-3940256099942544/6300978111";
      // return "ca-app-pub-7902687174188931/2999673670";
      //  return "ca-app-pub-7902687174188931/3867485097";
       return "ca-app-pub-7902687174188931/3867485097";
    } else {
      // return "ca-app-pub-7902687174188931/2999673670";
      // return "ca-app-pub-3940256099942544/6300978111";
      // return "ca-app-pub-7902687174188931/3867485097";
        return "ca-app-pub-7902687174188931/3867485097";
    }
  }
}
