import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryListScreen extends StatefulWidget {
  @override
  _CategoryListScreenState createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  int _counter = 1;
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: 10,
        itemBuilder: (context, index){
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    color: Colors.grey.shade200,
                    child: Text('Cream Sandwich' , style: GoogleFonts.cairo(fontSize: 20 , color: Colors.black),),
                  ),
                ),

                Container(
                    child: Row(
                      children: [
                        InkWell(
                            onTap: (){
                              setState(() {
                                number++;
                              });
                            },
                            child: Icon(Icons.add , color: Colors.blueGrey, size: 25,)),
                        SizedBox(width: 5,),
                        Text(number.toString() , style: TextStyle(fontSize: 20 , color: Colors.black, fontWeight: FontWeight.bold),),
                        SizedBox(width: 5,),
                        InkWell(
                            onTap: (){
                              setState(() {
                                // number>1 ? number--: number;
                                if(number>1){
                                  number-- ;
                                }
                              });
                            },
                            child: Icon(Icons.remove , color: Colors.blueGrey, size: 25,)),
                      ],
                    )
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget counterButton(int number){
    return Container(
      child: Row(
        children: [
          InkWell(
              onTap: (){
                setState(() {
                  number++;
                });
              },
              child: Icon(Icons.add , color: Colors.blueGrey, size: 25,)),
          SizedBox(width: 5,),
          Text(number.toString() , style: TextStyle(fontSize: 20 , color: Colors.black, fontWeight: FontWeight.bold),),
          SizedBox(width: 5,),
          InkWell(
              onTap: (){
                setState(() {
                  // number>1 ? number--: number;
                  if(number>1){
                    number-- ;
                  }
                });
              },
              child: Icon(Icons.remove , color: Colors.blueGrey, size: 25,)),
        ],
      )
    );
  }
}
