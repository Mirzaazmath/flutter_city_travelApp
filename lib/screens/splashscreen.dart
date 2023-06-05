import 'dart:async';

import 'package:cities_app/screens/landingscreen.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late final AnimationController _controller=AnimationController(vsync: this,duration: const Duration(milliseconds: 1000));

  @override
  void initState() {
    super.initState();
    _controller.forward();
    // Timer(const Duration(seconds: 3 ), () {
    //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LandingScreen()));
    // });

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body:SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
          const   Positioned(
              bottom: -90,
              left: -90,
              child: CircleAvatar(
                radius: 270,
                backgroundColor: Color(0xffeaf8fb),
              ),

            ),
            AnimatedBuilder(
              animation: _controller,
              builder: (_,child) {
                return Positioned(
                  bottom: -(_controller.value*20),
                  left: -(_controller.value*20),
                  child: Transform.rotate(

                    angle: -math.pi / 18,
                    child:child
                  ),
                );
              },
              child:  Container(
                height: 320,
                width: 200,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage("assets/city1.jpeg"),fit: BoxFit.fill
                    )
                ),
              ),
            ),
            Positioned(
              bottom: -10,
              left: 80,

              child: Container(
                height: 350,
                width: 200,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage("assets/city2.jpeg"),fit: BoxFit.fill
                    )
                ),
              ),
            ),
            AnimatedBuilder(
              animation: _controller,
              builder: (_,child) {

                return Positioned(
                  bottom:-(_controller.value*30),
                  right: -(_controller.value*25),
                  child: Transform.rotate(

                    angle:  -math.pi / -18,
                    child: child,
                  ),
                );

              },
              child: Container(
                height: 330,
                width: 200,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage("assets/city3.jpeg"),fit: BoxFit.fill
                    )
                ),
              ),
            ),
            SizedBox(height: 200,
              width: double.infinity,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 const  Icon(Icons.rocket_launch_outlined,size: 80,color: Color(0xff3e78a1),),
                 const  SizedBox(height: 20,),

                  RichText(
                    text: const TextSpan(
                      text: 'World ',
                      style:TextStyle(fontWeight: FontWeight.bold,color: Color(0xff3e78a1),fontSize: 30),
                      children:    <TextSpan>[
                        TextSpan(text: 'JOURNAL', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),

                      ],
                    ),
                  )

                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
