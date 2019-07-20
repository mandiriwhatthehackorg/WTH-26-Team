import 'package:flutter/material.dart';
import 'package:mandiri_wth/screens/biodata_oob_page.dart';
import 'package:mandiri_wth/screens/login_page.dart';
import 'package:mandiri_wth/screens/register_page.dart';
import 'package:mandiri_wth/utils/fade_transition.dart';
import 'package:mandiri_wth/utils/size_config.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Image.asset(
              'images/background.png',
              width: SizeConfig.blockSizeHorizontal * 100,
              height: SizeConfig.blockSizeVertical * 100,
              fit: BoxFit.fitHeight,
            ),
            Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        bottom: SizeConfig.blockSizeVertical * 10,
                        left: SizeConfig.blockSizeHorizontal * 20),
                    alignment: Alignment.centerLeft,
                    child: Image.asset('images/logo_white.png'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: SizeConfig.blockSizeHorizontal * 20,
                      bottom: SizeConfig.blockSizeVertical * 5),
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Make Easy\nTransaction',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.blockSizeVertical * 4,
                      color: Color(0xff003d79), //color: Color(0xffffb750),
                    ),
                  ),
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 30),
                        width: SizeConfig.blockSizeHorizontal * 60,
                        child: Image.asset('images/illustration.png'),
                      ),
                    ),
                    Container(
                      child: MaterialButton(
                        height: SizeConfig.blockSizeVertical * 7,
                        minWidth: SizeConfig.blockSizeHorizontal * 60,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => BiodataOobPage()),
                          );
                        },
                        child: Container(
                          child: Text(
                            'REGISTER',
                            style: TextStyle(
                                color: Color(0xff003d79),
                                fontSize: SizeConfig.blockSizeVertical * 2.5,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                      bottom: SizeConfig.blockSizeVertical * 8,
                      top: SizeConfig.blockSizeVertical * 1),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => LoginPage()),
                      );
                    },
                    child: Text(
                      'I ALREADY HAVE AN ACCOUNT',
                      style: TextStyle(
                          color: Color(0xff003d79),
                          fontSize: SizeConfig.blockSizeVertical * 2.5,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
