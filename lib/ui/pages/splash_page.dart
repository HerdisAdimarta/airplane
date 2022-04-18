import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class splashPage extends StatelessWidget {
  const splashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/ic_plane.png',
                ),
              ),
            ),
          ),
          Text(
            'AIRPLANE',
            style: whiteTextStyle.copyWith(
              fontSize: 32,
              fontWeight: medium,
              letterSpacing: 10,
            ),
          )
      ],
    ),
    ),

    );
  }
}