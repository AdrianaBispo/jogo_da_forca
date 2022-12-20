import 'package:flutter/material.dart';

//routes

//ads Mobile
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../shared/models/ad_helper.dart';
import '../../shared/utils/app_routes.dart';
//components
import 'components/button.dart';
import 'components/imagem.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late BannerAd _bannerAd;
  bool _isBannerAdReady = false;
  InterstitialAd? _interstitialAd;
  bool _isInterstitialAdReady = false;
  RewardedAd? _rewardedAd;
  bool _isRewardedAdReady = false;

  @override
  void initState() {
    super.initState();
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBannerAdReady = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          _isBannerAdReady = false;
          ad.dispose();
        },
      ),
    );

    _bannerAd.load();
  }

    @override
  void dispose() {
    // COMPLETE: Dispose a BannerAd object
    _bannerAd.dispose();

    // COMPLETE: Dispose an InterstitialAd object
    _interstitialAd?.dispose();

    // COMPLETE: Dispose a RewardedAd object
    _rewardedAd?.dispose();

    //QuizManager.instance.listener = null;

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FD),
      body: FutureBuilder<void>(
          //future: _initGoogleMobileAds(),
          builder: (context, snapshot) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Center(child: Imagem()),
            Center(
              child: CustomButton(onPressed: () {
                Navigator.pushNamed(
                  //adciona essa tela a pilha de navegação
                  context,
                  AppRoutes.GAME,
                );
              }),
            ),
            if (_isBannerAdReady)
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: _bannerAd.size.width.toDouble(),
                  height: _bannerAd.size.height.toDouble(),
                  child: AdWidget(ad: _bannerAd),
                ),
              ),
          ],
        );
      }),
    );
  }

  // COMPLETE: Change return type to Future<InitializationStatus>
  Future<InitializationStatus> _initGoogleMobileAds() {
    // TODO: Initialize Google Mobile Ads SDK
    return MobileAds.instance.initialize();
  }
}
