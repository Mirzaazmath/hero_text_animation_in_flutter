import 'package:flutter/material.dart';

import '../data/actor_data.dart';
import 'detail_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
     // backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment:  CrossAxisAlignment.center,
          children: [

            for(int i=0;i<actorlist.length;i++)...[
            Center(
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreen(actor: actorlist[i],tag: i.toString(),)));

                },
                child: Hero(
                  tag: "$i",
                  child: Container(

                    height: 180,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                     // border: Border.all(color: Colors.white),
                      boxShadow: [

                        BoxShadow(
                          color: Colors.grey.shade900,
                          offset:const  Offset(0,10),
                          blurRadius: 20
                        ),
                        BoxShadow(
                            color: Colors.grey.shade900,
                            offset:const  Offset(-0,-10),
                            blurRadius: 20
                        )
                      ],
                      image: DecorationImage(
                        image: AssetImage(actorlist[i].image),fit: BoxFit.cover
                      )
                    ),
                   // child: Image.asset("assets/ben.webp",fit: BoxFit.cover,),
                  ),
                ),
              ),
            )]
          ],

        ),
      ),
    );
  }
}
