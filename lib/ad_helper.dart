import 'dart:io';

class AdHelper {

  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-6218817239680955/5038604498';
    } /*else if (Platform.isIOS) {
      return '<YOUR_IOS_BANNER_AD_UNIT_ID>';
    } */ else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-6218817239680955/5038604498';
    } /*else if (Platform.isIOS) {
      return '<YOUR_IOS_INTERSTITIAL_AD_UNIT_ID>';
    } else*/ {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-6218817239680955/5038604498';
    } /*else if (Platform.isIOS) {
    //   return '<YOUR_IOS_INTERSTITIAL_AD_UNIT_ID>';
    }*/ else {
      throw UnsupportedError('Unsupported platform');
    }
  }
}