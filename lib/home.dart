

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp1/navigator.dart';
import 'package:myapp1/search.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
      Text('Food' , style: GoogleFonts.cairo(fontSize: 30, color: Colors.black ),),
                SizedBox(width: 3,),
      Text('Pikry' , style: GoogleFonts.homemadeApple(fontSize: 30, color: Colors.yellow ),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Enjoy Your Meal',  style: GoogleFonts.happyMonkey(fontSize: 15 , color: Colors.black),),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            child: Image.asset('assets/image/delivery.jpg'),
          ),

          Container(
            child: Column(
              children: [
                Text('GET YOUR' , style: GoogleFonts.lalezar(fontSize: 30 , color: Colors.black , height: 1),),

                Text('BEST FAVOURITE FOODS' , style: GoogleFonts.lalezar(fontSize: 20 , color: Colors.black , height: 1),),
                Text('Order & Get YOur Food ' , style: GoogleFonts.cairo(fontSize: 15 , color: Colors.black , height: 2),),
                Text('exactly on time ' , style: GoogleFonts.cairo(fontSize: 15 , color: Colors.black , height: 1),),
              ],
            ),
          ),
      SizedBox(
        height: 30,
      ),
          InkWell(
            onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationScreen(index: 0,))); },
            child: Container(
              width: 200,
              height: 50,

              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text('Get Started' , style: GoogleFonts.lalezar(fontSize: 20 , color: Colors.black),),),
            ),
          ),
        ],
      ),

    );
  }
}



