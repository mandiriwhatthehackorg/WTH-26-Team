import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mandiri_wth/screens/private_priority_page.dart';
import 'package:mandiri_wth/stores/customer.dart';
import 'package:mandiri_wth/utils/size_config.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _customer = Customer();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _customer.getResponseCustomer(context);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Observer(builder: (context) {
        return Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: SizeConfig.screenHeight,
                width: SizeConfig.screenWidth,
                child: Image.asset(
                  'images/background.png',
                  fit: BoxFit.cover,
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
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 24),
                child: IconButton(
                    icon: Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
              ),
              _getProfileWidget(),
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    _cardShowcase(),
                    Column(
                      children: <Widget>[
                        _getBankingMenu(),
                        _promoShowCase(),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }

  Container _getProfileWidget() {
    return Container(
      margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _getProfilePicture(),
              _getNameAndBalance(),
            ],
          )
        ],
      ),
    );
  }

  Container _getBankingMenu() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 5,
                right: SizeConfig.blockSizeHorizontal * 5,
                top: SizeConfig.blockSizeVertical * 1),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    child: _getMenu("Debit", 'images/ic_debit.png'),
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: _getMenu("Credit", 'images/ic_credit.png'),
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: _getMenu(
                        "Entertaintment", 'images/ic_entertaintment.png'),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 5,
                right: SizeConfig.blockSizeHorizontal * 5,
                top: SizeConfig.blockSizeVertical * 3),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    child: _getMenu("E-Channel", 'images/ic_payment.png'),
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child:
                        _getMenu("Private & Priority", 'images/ic_private.png'),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => PrivatePriorityPage(),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: _getMenu("More", 'images/ic_more.png'),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _getNameAndBalance() {
    return Container(
      margin: EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              _customer.responseCustomer.response != null
                  ? "Hi, ${_customer.responseCustomer.response.cif.cIFName1} ${_customer.responseCustomer.response.cif.cIFName2}"
                  : "Hi!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xff003d79),
              ),
            ),
          ),
          Container(
            child: Text(
              _customer.responseCustomer.response != null
                  ? "Debit Card - Saldo IDR ${_customer.responseCustomer.response.cif.codeAmount1}"
                  : "",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff003d79),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardShowcase() {
    return Container(
      margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 22),
      height: SizeConfig.blockSizeVertical * 20,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: SizeConfig.blockSizeHorizontal * 60,
            height: SizeConfig.blockSizeVertical * 20,
            margin: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 1),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment(0, 0),
                    image: AssetImage('images/blue_card.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Container(
            width: SizeConfig.blockSizeHorizontal * 60,
            margin: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 1),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment(0, 0),
                    image: AssetImage('images/silver_card.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Container(
            width: SizeConfig.blockSizeHorizontal * 60,
            margin: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 6),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment(0, 0),
                    image: AssetImage('images/yellow_card.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _promoShowCase() {
    return Container(
      margin: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 7,
          bottom: SizeConfig.blockSizeVertical * 3),
      height: SizeConfig.blockSizeVertical * 15,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: SizeConfig.blockSizeHorizontal * 60,
            height: SizeConfig.blockSizeVertical * 20,
            margin: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 3, left: SizeConfig.blockSizeHorizontal * 3),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment(0, 0),
                    image: AssetImage('images/promo.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Container(
            width: SizeConfig.blockSizeHorizontal * 60,
            margin: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 3),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment(0, 0),
                    image: AssetImage('images/promo.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Container(
            width: SizeConfig.blockSizeHorizontal * 60,
            margin: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 3),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment(0, 0),
                    image: AssetImage('images/promo.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _getProfilePicture() {
  return Container(
    padding: EdgeInsets.all(1.0),
    // Add 1.0 point padding to create border
    height: 50,
    // ProfileImageSize = 50.0;
    width: 50,
    // ProfileImageSize = 50.0;
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(50 / 2)),
    // import 'package:cached_network_image/cached_network_image.dart'; at the top to use CachedNetworkImage
    child: CachedNetworkImage(
      imageUrl:
          "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7",
      placeholder: (context, url) => new CircularProgressIndicator(),
      errorWidget: (context, url, error) => new Icon(Icons.error),
    ),
  );
}

Widget _getMenu(String menuTitle, String image) {
  return Column(
    children: <Widget>[
      Container(
        padding: const EdgeInsets.all(10.0),
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: new Border.all(color: Colors.black12),
        ),
        child: Image.asset(
          image,
          width: 40,
          height: 40,
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 4),
        child: Text(
          menuTitle,
          style: TextStyle(
            fontSize: 12,
            color: Color(0xff003d79),
          ),
        ),
      )
    ],
  );
}
