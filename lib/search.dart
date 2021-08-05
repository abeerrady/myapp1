import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp1/navigator.dart';
import 'package:myapp1/nearlist.dart';
import 'package:myapp1/offerscreen.dart';
import 'package:myapp1/profile.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                image: DecorationImage(
                    image: AssetImage('assets/image/restaurant2.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.7), BlendMode.darken)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ProfileScreen(),
                    Container(
                      height: 45,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search Here',
                          fillColor: Colors.white,
                          focusColor: Colors.yellow,
                          hoverColor: Colors.yellow,
                          filled: true,
                          suffixIcon: Icon(
                            Icons.add_road, color: Colors.black, size: 30,
                          ),
                          suffixIconConstraints: BoxConstraints(
                            maxWidth: 35,
                            minWidth: 30,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30 ),
                      child: Row(

                        children: [
                          Text(
                            'Categories/Snacks',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(width: 180,),
                          Text(
                            'Edit',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'Near you',
                    style: GoogleFonts.cairo(color: Colors.black, fontSize: 20),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Text(
                    'See All',
                    style:
                        GoogleFonts.cairo(color: Colors.blueGrey, fontSize: 17),
                  ),
                ],
              ),
            ),
            NearListScreen(),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'Best Offers',
                    style: GoogleFonts.cairo(color: Colors.black, fontSize: 20),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Text(
                    'See All',
                    style:
                        GoogleFonts.cairo(color: Colors.blueGrey, fontSize: 17),
                  ),
                ],
              ),
            ),
            OfferScreen(),
          ],
        )
      ]),
    );
  }
}
