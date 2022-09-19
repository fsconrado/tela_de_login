import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../service/ad_help.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late BannerAd _bottomBannerAd;
  bool isbottomBannerAdLoad = false;

  void _createBottomBannerAd() {
    _bottomBannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: AdHelp.bannerAdUnitId,
      request: const AdRequest(),
      listener: BannerAdListener(onAdLoaded: (_) {
        setState(() {
          isbottomBannerAdLoad = true;
        });
      }, onAdFailedToLoad: (ad, error) {
        ad.dispose();
      }),
    );
    _bottomBannerAd.load();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _createBottomBannerAd();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _bottomBannerAd.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: isbottomBannerAdLoad ? Container(
        height: _bottomBannerAd.size.height.toDouble(),
        width: _bottomBannerAd.size.width.toDouble(),
        child: AdWidget(ad: _bottomBannerAd),
      ) : null,
      body: const Center(
        child: Text("Home Page"),
      ),
    );
  }
}
