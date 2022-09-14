import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);


  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    
    Future<void>.delayed(Duration(seconds: 3)).then((_) {
     Navigator.pushReplacementNamed(context, '/login');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade200,
      child: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo_ifal.png',
                height: MediaQuery.of(context).size.height*0.7,
              width: MediaQuery.of(context).size.width*0.7,
            ),
            CircularProgressIndicator(backgroundColor: Colors.green.shade50, color: Colors.green.shade900,),
          ],
        ),
      ),
    );
  }
}
