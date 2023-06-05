import 'dart:ui';

import 'package:cities_app/screens/homescreen.dart';
import 'package:flutter/material.dart';

import '../utils/clipperclass.dart';
class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
          },
          child: Container(
            height: 60,
            width: 60,
            decoration:const  BoxDecoration(
              boxShadow: [
                BoxShadow(
                color:  Color(0xff2998f4),
                  offset: Offset(5,5),
                  blurRadius: 20


                )
              ],
              shape: BoxShape.circle, // circular shape
              gradient: LinearGradient(
                colors: [
                  Color(0xff2998f4),
                  Color(0xff317fdc)
                ],
              ),
            ),
            child: const Icon(
              Icons.arrow_forward_rounded,
              color: Colors.white,
            ),
          ),
        ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/burj.webp"),fit: BoxFit.fill
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(30),


                ),

                child:BackdropFilter(
                  filter:ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),

                    child:
                  const   Padding(
                      padding:  EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text("Get latest travel newa from all countries",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
                        ],
                      ),
                    ),

                ),

              ),
            ),
          const   SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
