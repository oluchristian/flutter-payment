import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        height: h,
        width: w,
        child: Stack(
          children: [
            _headSection(),

          ],
        ),
      ),
    );
  }
  _headSection(){
    return Container(
      height: 310,
      
      child: Stack(
        children: [

        ],
      ),
    );
  }
}