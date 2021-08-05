import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 80 , left: 50 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My Cart  ( 03 )' , style: GoogleFonts.cagliostro(fontSize: 20 , color: Colors.black),),
            SizedBox(height: 30,),
            Row(

              children: [
                Container(
                  width: 60,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/image/2450.jpg'), fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width-150,
                  height: 50,
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Cream Sandwich' , style: GoogleFonts.cairo(fontSize: 20 , color: Colors.black),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(

              children: [
                Container(
                  width: 60,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/image/2450.jpg'), fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width-150,
                  height: 50,
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Cream Sandwich' , style: GoogleFonts.cairo(fontSize: 20 , color: Colors.black),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(

              children: [
                Container(
                  width: 60,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/image/2450.jpg'), fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width-150,
                  height: 50,
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Cream Sandwich' , style: GoogleFonts.cairo(fontSize: 20 , color: Colors.black),),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 280,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10),
                  ),
                   child: Center(child: Text('Confirm Order ' , style: GoogleFonts.cagliostro(fontSize: 20 , color: Colors.black),)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
