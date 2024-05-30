import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int leftsidenum=1;
 int rightsidenum=2;
 void onitemchange(){
   if (leftsidenum <=5){
   leftsidenum++;
 }
 else {
   leftsidenum=1;
   }
 if (rightsidenum<=5){
   rightsidenum++;
 }
 else{
   rightsidenum=2;
 }
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
     appBar: AppBar(
       centerTitle: true,
       title: Text("DICEE",
       style: TextStyle(
         color: Colors.white,
       ),),
       backgroundColor: Colors.red,
     ),
      body:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
             setState(() {
               onitemchange();
             });
              },
              child: Image.asset('asset/images/dice$leftsidenum.png',
              height: 150,
              width: 150,),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  onitemchange();
                });
              },
              child: Image.asset('asset/images/dice$rightsidenum.png',
                height: 150,
                width: 150,
              ),
            )
          ],
        ),
      )

    );
  }
}
