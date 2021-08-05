import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp1/categorylist.dart';
class PizzaKingScreen extends StatefulWidget {
  @override
  _PizzaKingScreenState createState() => _PizzaKingScreenState();
}

class _PizzaKingScreenState extends State<PizzaKingScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/restaurant1.jpg') , fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken)
                  ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                )
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20 , top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back , size: 25, color: Colors.white,),

                        Text('Pizaa King' , style: GoogleFonts.cairo(fontSize: 35 , color: Colors.white),),

                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(Icons.favorite , size: 25 , color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RatingBar.builder(
                        initialRating: 5,
                        minRating: 1,
                        itemSize: 20,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 140,),
                  Text('Newyork Street Codex' , style: GoogleFonts.aBeeZee(fontSize: 20 , color: Colors.white),),
                  Text('Road #2 Hours #23 , NYC 2231' , style: GoogleFonts.aBeeZee(fontSize: 15 , color: Colors.white),),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Category/Snacks' , style: GoogleFonts.allerta(fontSize: 20 , color: Colors.black),),

                  Text('Edit' , style: GoogleFonts.allerta(fontSize: 15 , color: Colors.grey),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            CategoryListScreen()
          ],
        )
      ],
    );
  }
}
