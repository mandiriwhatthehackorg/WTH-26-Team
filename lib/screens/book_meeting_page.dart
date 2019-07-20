import 'package:flutter/material.dart';
import 'package:mandiri_wth/utils/size_config.dart';

class BookMeetingPage extends StatefulWidget {
  @override
  _BookMeetingPageState createState() => _BookMeetingPageState();
}

class _BookMeetingPageState extends State<BookMeetingPage> {
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
                'images/background.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 36),
              child: Image.asset(
                'images/logo_white.png',
                width: SizeConfig.blockSizeHorizontal * 20,
              ),
            ),
            Container(
              width: SizeConfig.screenWidth,
              margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 15),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'images/ic_calendar.png',
                        width: SizeConfig.blockSizeHorizontal * 7.5,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 16, bottom: SizeConfig.blockSizeVertical * 5),
                      child: Text(
                        'Book Meeting Room',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    _roomMenu("PARANG"),
                    _roomMenu("TENUN"),
                    _roomMenu("MANDALA"),
                    _roomMenu("LASEM"),
                    _roomMenu("KERATON"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _roomMenu(String title) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: InkWell(
          child: Container(
            width: SizeConfig.blockSizeHorizontal * 70,
            height: SizeConfig.blockSizeVertical * 7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white.withOpacity(0.9),
              image: DecorationImage(
                  image: AssetImage("images/ic_batik_background.png"),
                  fit: BoxFit.cover),
            ),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                    color: Color(0xff003d79), letterSpacing: 3, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          onTap: () {
            print("you clicked my");
          }),
    );
  }
}
