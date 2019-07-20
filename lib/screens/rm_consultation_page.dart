import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mandiri_wth/screens/rm_chat_page.dart';
import 'package:mandiri_wth/utils/size_config.dart';

class RmConsultationPage extends StatefulWidget {
  @override
  _RmConsultationPageState createState() => _RmConsultationPageState();
}

class _RmConsultationPageState extends State<RmConsultationPage> {
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
                        'images/ic_cs.png',
                        width: SizeConfig.blockSizeHorizontal * 7.5,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 16, bottom: SizeConfig.blockSizeVertical * 5),
                      child: Text(
                        'Consultation',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    _menuCard(
                        "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7",
                        "Roberto Donadoni",
                        "Relationship Manager"),
                    _menuCard(
                        "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7",
                        "Barbara Bonansea",
                        "Assistant\nRelationship Manager"),
                    _menuCard(
                        "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7",
                        "Others",
                        ""),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuCard(String image, String title, String subtitle) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: SizeConfig.blockSizeHorizontal * 75,
      child: MaterialButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => RmChatPage(),
            ),
          );
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
                child: CachedNetworkImage(
                  imageUrl:
                      "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7",
                  placeholder: (context, url) =>
                      new CircularProgressIndicator(),
                  errorWidget: (context, url, error) => new Icon(Icons.error),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Text(
                      title,
                      style: TextStyle(color: Color(0xff003d79), fontSize: 18),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Text(
                      subtitle,
                      style: TextStyle(
                          color: Color(0xff003d79),
                          fontStyle: FontStyle.italic,
                          fontSize: 12),
                      textAlign: TextAlign.left,
                    ),
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
