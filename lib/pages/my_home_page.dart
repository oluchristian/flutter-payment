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
            _listBills(),
          ],
        ),
      ),
    );
  }

  _headSection() {
    return Container(
      height: 310,
      child: Stack(
        children: [
          _mainBackground(),
          _curvedImageContainer(),
          _buttonContainer(),
        ],
      ),
    );
  }

  _buttonContainer() {
    return Positioned(
      right: 58,
      bottom: 15,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/lines.png'),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              offset: Offset(0, 1),
              color: Color(0xFF11324D).withOpacity(0.2),
            ),
          ],
        ),
      ),
    );
  }

  _mainBackground() {
    return Positioned(
      bottom: 10,
      left: 0,
      child: Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: Colors.grey
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'images/background.png',
            ),
          ),
        ),
      ),
    );
  }

  _curvedImageContainer() {
    return Positioned(
      left: 0,
      right: -2,
      bottom: 10,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'images/curve.png',
            ),
          ),
        ),
      ),
    );
  }

  _listBills() {
    return Positioned(
      top: 320,
      child: Container(
        height: 130,
        width: MediaQuery.of(context).size.width - 20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFdbdbe0),
              offset: Offset(1, 1),
              blurRadius: 20.0,
              spreadRadius: 10,
            ),
          ],
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 10, left: 18),
          child: Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'images/brand1.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
