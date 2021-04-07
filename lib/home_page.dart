import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Frist Flutter App') ,
      ) ,
      body:Column(
        children: [
          Text('WelCome to My App',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue.shade900),)

          ,SizedBox(height: 20)
          //,Image.asset('assets/clouderp.PNG',width: double.maxFinite,height: 200,)


          ,SizedBox(height: 20)
          ,buildNavSection()
        ],
      ) ,
    );
  }

  Container buildNavSection() {
    return Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(16),
          color: Colors.cyan.shade900,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Document',style: TextStyle(fontSize: 18,color: Colors.orange),),
              Text('Sample',style: TextStyle(fontSize: 18,color: Colors.orange),),
              Text('References',style: TextStyle(fontSize: 18,color: Colors.orange),),
            ],
          ),

        );
  }
}