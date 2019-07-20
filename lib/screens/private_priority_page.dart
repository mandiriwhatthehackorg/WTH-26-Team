import 'package:flutter/material.dart';
import 'package:mandiri_wth/screens/book_meeting_page.dart';
import 'package:mandiri_wth/screens/market_update_page.dart';
import 'package:mandiri_wth/screens/rm_consultation_page.dart';
import 'package:mandiri_wth/utils/size_config.dart';

class PrivatePriorityPage extends StatefulWidget {
  @override
  _PrivatePriorityPageState createState() => _PrivatePriorityPageState();
}

class _PrivatePriorityPageState extends State<PrivatePriorityPage> {
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
            Container(
              margin: EdgeInsets.only(top: 24),
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
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
              margin: EdgeInsets.only(top: 72),
              width: SizeConfig.screenWidth,
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 32, left: 45),
                    child: Text(
                      'Private and\nPriority',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff003d79),
                      ),
                    ),
                  ),
                  _menuCard('images/ic_calendar.png', "Booking Meeting\nRoom"),
                  _menuCard('images/ic_market.png', "Market Update"),
                  _menuCard('images/ic_cs.png',
                      "Consultation with\nRelationship Manager"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _menuCard(String image, String title) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: SizeConfig.blockSizeHorizontal * 75,
      child: MaterialButton(
        onPressed: () {
          if (title.contains("Room")) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => BookMeetingPage(),
              ),
            );
          } else if (title.contains("Market")) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => MarketUpdatePage(),
              ),
            );
          } else {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => RmConsultationPage(),
              ),
            );
          }
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: Colors.white.withOpacity(0.75),
        child: Container(
          margin: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                width: SizeConfig.blockSizeHorizontal * 15,
                height: SizeConfig.blockSizeHorizontal * 15,
                child: Image.asset(
                  image,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Color(0xff003d79),
                  ),
                  textAlign: TextAlign.left,
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
