import 'package:flutter/material.dart';
import 'package:mandiri_wth/utils/size_config.dart';

class MarketUpdatePage extends StatefulWidget {
  @override
  _MarketUpdatePageState createState() => _MarketUpdatePageState();
}

class _MarketUpdatePageState extends State<MarketUpdatePage> {
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
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'images/ic_private.png',
                        width: SizeConfig.blockSizeHorizontal * 7.5,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 16, bottom: SizeConfig.blockSizeVertical * 5),
                      child: Text(
                        'Market Update',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 10,
                        right: SizeConfig.blockSizeHorizontal * 10,
                      ),
                      child: Divider(
                        height: 0.0,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 10,
                        right: SizeConfig.blockSizeHorizontal * 10,
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: Text(
                                'STOCK IN NEWS',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.chevron_left,
                                color: Color(0xffffb700),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.chevron_right,
                                color: Color(0xffffb700),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              left: SizeConfig.blockSizeHorizontal * 10,
                              right: SizeConfig.blockSizeHorizontal * 10,
                            ),
                            child: Text(
                              'Nifty Financial Service Index Bajaj Finance 5%',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ),
                          _marketContainer(false, "264.5", "-1.23%"),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 10,
                        right: SizeConfig.blockSizeHorizontal * 10,
                      ),
                      child: Divider(
                        height: 0.0,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 10,
                        right: SizeConfig.blockSizeHorizontal * 10,
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: Text(
                                'WEEKLY LOSERS',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.chevron_left,
                                color: Color(0xffffb700),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.chevron_right,
                                color: Color(0xffffb700),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              left: SizeConfig.blockSizeHorizontal * 10,
                              right: SizeConfig.blockSizeHorizontal * 10,
                            ),
                            child: Text(
                              'Nifty Financial Service Index Bajaj Finance 5%',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ),
                          _marketContainer(false, "264.5", "-1.23%"),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 10,
                        right: SizeConfig.blockSizeHorizontal * 10,
                      ),
                      child: Divider(
                        height: 0.0,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 10,
                        right: SizeConfig.blockSizeHorizontal * 10,
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: Text(
                                'COMMODITY GAINERS',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.chevron_left,
                                color: Color(0xffffb700),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.chevron_right,
                                color: Color(0xffffb700),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              left: SizeConfig.blockSizeHorizontal * 10,
                              right: SizeConfig.blockSizeHorizontal * 10,
                            ),
                            child: Text(
                              'Nifty Financial Service Index Bajaj Finance 5%',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ),
                          _marketContainer(true, "264.5", "+3.23%"),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 10,
                        right: SizeConfig.blockSizeHorizontal * 10,
                      ),
                      child: Divider(
                        height: 0.0,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 10,
                        right: SizeConfig.blockSizeHorizontal * 10,
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: Text(
                                'COMMODITY LOSERS',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.chevron_left,
                                color: Color(0xffffb700),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.chevron_right,
                                color: Color(0xffffb700),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              left: SizeConfig.blockSizeHorizontal * 10,
                              right: SizeConfig.blockSizeHorizontal * 10,
                            ),
                            child: Text(
                              'Nifty Financial Service Index Bajaj Finance 5%',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ),
                          _marketContainer(false, "264.5", "-1.23%"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _marketContainer(bool status, String value, String percentage) {
    return Container(
      margin: EdgeInsets.only(
        left: SizeConfig.blockSizeHorizontal * 8,
        right: SizeConfig.blockSizeHorizontal * 10,
      ),
      child: Row(
        children: <Widget>[
          Icon(
            status ? Icons.arrow_drop_up : Icons.arrow_drop_down,
            color: status ? Colors.green : Colors.red,
            size: 30,
          ),
          Container(
            child: Text(
              '264.5',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 8),
            child: Text(
              '-1.91%',
              style: TextStyle(
                color: status ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
