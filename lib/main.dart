import 'package:flutter/material.dart';
import 'package:tela_de_login/views/home_page.dart';
import 'package:tela_de_login/views/login_page.dart';
import 'package:tela_de_login/views/splash_page.dart';


void main(){
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