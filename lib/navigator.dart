import 'package:flutter/material.dart';
import 'package:myapp1/bizzascreen.dart';
import 'package:myapp1/home.dart';
import 'package:myapp1/mycard.dart';
import 'package:myapp1/offerscreen.dart';
import 'package:myapp1/profile.dart';
import 'package:myapp1/search.dart';

class NavigationScreen extends StatefulWidget {
  final int index;
  const NavigationScreen({Key key, this.index}) : super(key: key);
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedTabIndex = 0;

  @override
  void initState(){
    _selectedTabIndex = widget.index;
    super.initState();
  }


  var _pages = [
    SearchScreen(),
    PizzaKingScreen(),
    CartScreen(),
    CartScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_selectedTabIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTabIndex,
            onTap: (index){
              print(index);
              setState(() {
                _selectedTabIndex = index ;
              });
            },
            type: BottomNavigationBarType.fixed,
           selectedItemColor: Colors.black,
            items: [
        BottomNavigationBarItem(icon: Icon(Icons.home , size: 30,), title: Text("")),
    BottomNavigationBarItem(
    icon: Icon(Icons.format_list_bulleted_outlined , size: 30,), title: Text("")),
    BottomNavigationBarItem(
    icon: Icon(Icons.shopping_cart , size: 30,), title: Text("")),
    BottomNavigationBarItem(
    icon: Icon(Icons.account_circle , size: 30,), title: Text("")),

   ],
        ),
    );
  }
}
