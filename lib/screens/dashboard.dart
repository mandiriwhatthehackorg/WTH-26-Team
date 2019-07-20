import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mandiri_wth/screens/account_page.dart';
import 'package:mandiri_wth/screens/cs_page.dart';
import 'package:mandiri_wth/screens/home_page.dart';
import 'package:mandiri_wth/screens/login_page.dart';
import 'package:mandiri_wth/stores/customer.dart';
import 'package:mandiri_wth/utils/size_config.dart';
import 'package:provider/provider.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int selectedIndex = 0;

  final widgetPager = [
    Consumer<Customer>(
      builder: (context, value, _) => HomePage(),
    ),
    CsPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return WillPopScope(
      onWillPop: _willPopCallback,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xff003d79),
          unselectedItemColor: Colors.white,
          selectedItemColor: Color(0xffffb700),
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('images/ic_menu_home.png'),
              ),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('images/ic_menu_chat.png'),
              ),
              title: Text('Customer Service'),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('images/ic_account.png'),
              ),
              title: Text('Account'),
            ),
          ],
          currentIndex: selectedIndex,
          onTap: onItemTapped,
        ),
        body: widgetPager.elementAt(selectedIndex),
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  String getTitle(int index) {
    switch (index) {
      case 0:
        return "Home";
        break;
      case 1:
        return "Customer Service";
        break;
      default:
        return "Account";
        break;
    }
  }

  Future<bool> _willPopCallback() async {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text(
            "Quit App?",
            style: TextStyle(
              color: Color(0xff003d79),
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(
                "CANCEL",
                style: TextStyle(
                  color: Color(0xff003d79),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              color: Color(0xffffb700),
              child: Text(
                "YES",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (_) => LoginPage(),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
    return Future.value(false);
  }
}
