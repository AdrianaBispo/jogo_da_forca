import 'package:flutter/material.dart';

//routes
import 'package:jogo_da_forca/utils/app_routes.dart';

//ads Mobile
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../ad_helper.dart';

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

  Widget _buildImagem(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    MediaQuery.of(context).padding.top;

    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Image.asset(
        'imagens/imagem_inicial.png',
        height: 250,
        width: width * .7,
      ),
    );
  }

  Widget _buildButton() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .7,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(124, 181, 248, 1),
            Color.fromRGBO(148, 135, 253, 1),
          ],
        ),
      ),
      child: TextButton(
        child: const Text(
          'Jogar',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            fontSize: 22.0,
            color: Color(0xFFFFFFFF),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(
            //adciona essa tela a pilha de navegação
            context,
            AppRoutes.GAME,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FD),
      body: FutureBuilder<void>(
          future: _initGoogleMobileAds(),
          builder: (context, snapshot) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(child: _buildImagem(context)),
                Center(child: _buildButton()),
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
