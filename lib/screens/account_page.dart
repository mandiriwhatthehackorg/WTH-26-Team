import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mandiri_wth/stores/customer.dart';
import 'package:mandiri_wth/utils/size_config.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
      body: Observer(
        builder: (context) {
          return Container(
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
                Container(
                  margin: EdgeInsets.only(
                      top: SizeConfig.blockSizeVertical * 12, right: 16, left: 16),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(bottom: 12),
                        child: Text(
                          'PROFILE',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Divider(
                        height: 0.0,
                        color: Colors.white,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(top: 12),
                            child: Container(
                              padding: EdgeInsets.all(1.0),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50 / 2),
                              ),
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7",
                                placeholder: (context, url) =>
                                    new CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    new Icon(Icons.error),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 16, top: 8),
                            child: Text(
                              _customer.responseCustomer.response != null
                                  ? "${_customer.responseCustomer.response.cif.cIFName1} ${_customer.responseCustomer.response.cif.cIFName2}"
                                  : "",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(top: SizeConfig.blockSizeVertical * 5),
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          'CIF NUMBER',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        _customer.responseCustomer.response !=
                                                null
                                            ? _customer.responseCustomer.response
                                                .cif.cIFNumber
                                            : "",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                height: 16.0,
                                color: Colors.white,
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          'ACCOUNT NUMBER',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "XXXXXXXXX",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                height: 16.0,
                                color: Colors.white,
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          'ADDRESS',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        _customer.responseCustomer.response !=
                                                null
                                            ? _customer.responseCustomer.response
                                                .cif.address4
                                            : "",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: SizeConfig.blockSizeVertical * 7),
                                child: Divider(
                                  height: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          'CITY',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        _customer.responseCustomer.response !=
                                                null
                                            ? _customer.responseCustomer.response
                                                .cif.iDIssuePlace
                                            : "",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                height: 16.0,
                                color: Colors.white,
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          'DISTRICT',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        _customer.responseCustomer.response !=
                                                null
                                            ? _customer.responseCustomer.response
                                                .cif.address3
                                            : "",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                height: 16.0,
                                color: Colors.white,
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          'EMAIL',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "XXXXXXXXX",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                height: 16.0,
                                color: Colors.white,
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          'PHONE',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        _customer.responseCustomer.response != null
                                            ? _customer.responseCustomer.response
                                            .cif.handphone
                                            : "",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Divider(
                                height: 16.0,
                                color: Colors.white,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: SizeConfig.blockSizeVertical * 7),
                                child: FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    'LOG OUT',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
