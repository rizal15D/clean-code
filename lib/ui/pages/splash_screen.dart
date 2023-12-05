import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/routes/route_name.dart';
import '../../utils/extension.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), ((){
      Get.offAllNamed(RouteName.homePage);
    }));
    
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 20.0.hp),
          child: Center(
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/images/logo.png'),
                  width: 80.0.wp,
                ),
                Text('v 1.0.0'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}