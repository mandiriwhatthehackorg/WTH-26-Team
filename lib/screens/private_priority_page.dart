import 'package:flutter/material.dart';
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
                  onPressed: () {}),
            ),
            Container(
              margin: EdgeInsets.only(top: 72),
              width: SizeConfig.screenWidth,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 32),
                    child: Text(
                      'Private and Priority',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff003d79),
                      ),
                    ),
                  ),
                  _menuCard('images/ic_debit.png', "Booking Meeting\nRoom"),
                  _menuCard('images/ic_debit.png', "Market Update"),
                  _menuCard('images/ic_debit.png',
                      "Consultation with\nRetail Manager"),
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
      margin: EdgeInsets.only(top: 16),
      width: SizeConfig.blockSizeHorizontal * 60,
      child: Card(
        color: Colors.white.withOpacity(0.75),
        child: Container(
          margin: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
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
