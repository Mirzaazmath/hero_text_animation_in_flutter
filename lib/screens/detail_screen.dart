
import 'package:flutter/material.dart';

import '../data/actor_data.dart';
import '../utils/Animation_utils.dart';
import '../utils/text_utlis.dart';


class DetailScreen extends StatelessWidget {
 final Actor actor;
 final String tag;
   DetailScreen({super.key,required this.actor,required this.tag});

  int delayAmount = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,),
          Positioned.fill(
            right: -350,
              top: -100,
              bottom: -100,

              child:

          Hero(
              tag:tag,
              child: Image.asset(actor.image))),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShowUpAnimation(
                    delay: delayAmount,
                    child: TextUtil(text: actor.name,
                      size: 40,
                      weight: true,

                    ),
                  ),


                  ShowUpAnimation(
                    delay: delayAmount+200,
                    child: TextUtil(text: "American actor",
                      size: 18,),
                  ),
                  const SizedBox(height: 60,),
                  ShowUpAnimation(
                    delay: delayAmount+400,
                    child: TextUtil(text: actor.born,
                      size: 18,),
                  ),
                 const Spacer(),
                  ShowUpAnimation(
                    delay: delayAmount+400,
                    child:Container(
                      margin:const  EdgeInsets.only(bottom: 10),
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                      ),

                      child: Image.asset("assets/instagram.png"),
                    )
                  ),
                  ShowUpAnimation(
                      delay: delayAmount+400,
                      child:Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        height: 50,
                        width: 50,
                        decoration:const  BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),

                        child: Image.asset("assets/twitter.png"),
                      )
                  ),
                  ShowUpAnimation(
                      delay: delayAmount+400,
                      child:Container(
                        margin:const  EdgeInsets.only(bottom: 10),
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),

                        child: Image.asset("assets/facebook.png"),
                      )
                  ),
                  //Born: 30 November 1965 (age 57 years)
                ],
              ),
            ),
          ),


        ],
      ),

    );
  }
}
