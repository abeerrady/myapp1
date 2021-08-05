import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.menu , color: Colors.white , size: 30,),
          SizedBox(height: 35,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Find Your' , style: GoogleFonts.lalezar(fontSize: 25 , color: Colors.white , height: 1)),
                  Text('Resturant in The City' , style: GoogleFonts.lalezar(fontSize: 25 , color: Colors.white , height: 1)),
                ],
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(image:AssetImage('assets/image/profile.jpg'), fit: BoxFit.cover),
                    shape: BoxShape.circle
                ),

              )
            ],
          ),

        ],
      ),
    );
  }
}
