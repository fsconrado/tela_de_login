import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:tela_de_login/views/home_page.dart';
import 'package:tela_de_login/views/login_page.dart';
import 'package:tela_de_login/views/splash_page.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(
    MaterialApp(
      initialRoute: '/splash',
      routes: {
        '/home':(_)=> HomePage(),
        "/splash":(_)=> SplashPage(),
        '/login': (_)=> LoginPage(),
      },
    )
  );
}