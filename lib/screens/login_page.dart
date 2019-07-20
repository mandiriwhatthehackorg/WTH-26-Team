import 'package:flutter/material.dart';
import 'package:mandiri_wth/screens/dashboard.dart';
import 'package:mandiri_wth/screens/otp_oob_page.dart';
import 'package:mandiri_wth/utils/size_config.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: SizeConfig.screenHeight,
              width: SizeConfig.screenWidth,
              child: Image.asset(
                'images/background_login.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 10,
                        top: SizeConfig.blockSizeVertical * 15),
                    child: Text(
                      'Welcome\nBack',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.blockSizeVertical * 4,
                        color: Color(0xff003d79), //color: Color(0xffffb750),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    height: SizeConfig.blockSizeVertical * 3,
                    margin: EdgeInsets.only(
                        top: SizeConfig.blockSizeVertical * 5,
                        bottom: SizeConfig.blockSizeVertical * 15,
                        right: SizeConfig.blockSizeHorizontal * 15),
                    child: Image.asset('images/logo_white.png'),
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal * 10,
                          right: SizeConfig.blockSizeHorizontal * 10,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            counterText: "",
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: SizeConfig.blockSizeVertical * 2,
                          left: SizeConfig.blockSizeHorizontal * 10,
                          right: SizeConfig.blockSizeHorizontal * 10,
                        ),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            counterText: "",
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 2,
                            right: SizeConfig.blockSizeHorizontal * 10),
                        child: Text(
                          'FORGOT PASSWORD?',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical * 10,
                            bottom: SizeConfig.blockSizeVertical * 10),
                        child: MaterialButton(
                          height: SizeConfig.blockSizeVertical * 7,
                          minWidth: SizeConfig.blockSizeHorizontal * 60,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (_) => DashboardPage(),
                              ),
                            );
                          },
                          child: Container(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                  color: Color(0xff003d79),
                                  fontSize: SizeConfig.blockSizeVertical * 2.5,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
