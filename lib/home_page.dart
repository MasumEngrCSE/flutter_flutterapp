import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String _imgUrl =
      'https://m.economictimes.com/thumb/msid-78767233,width-1200,height-900,resizemode-4,imgsize-124732/mercedes-benz-launches-amg-c63-coupe.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:AppBar(
      //   title:Text('WelCome to My App') ,
      // ) ,
      body: Column(
        children: [
          Image.network(_imgUrl,width: double.maxFinite,height: 300,fit: BoxFit.cover,),
          SizedBox(height: 2),
          buildNavTextTitleSection(),
          SizedBox(height: 20),
          buildNavITSection(),
          buildTextContainer()
        ],
      ),
    );
  }

  Container buildNavTextTitleSection() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), bottomRight: Radius.circular(30))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [buildTitleDescColumn(), buildStarColumn()],
      ),
    );
  }


  Container buildNavITSection() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.call, color: Colors.blue, size: 30),
              Text('Call',style: TextStyle(fontSize: 18, color: Colors.blue),),
            ],
          ),
          Column(
            children: [
              Icon(Icons.send_sharp, color: Colors.blue, size: 30),
              Text('Route',style: TextStyle(fontSize: 18, color: Colors.blue),),
            ],
          ),
          Column(
            children: [
              Icon(Icons.share,color: Colors.blue,size: 30,),
              Text('Share',style: TextStyle(fontSize: 18, color: Colors.blue),),
            ],
          ),
        ],
      ),
    );
  }

  Container buildTextContainer() {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      child: Text(
        'Mercedes-Benz, commonly referred to as Mercedes, is both a German automotive marque and, from late 2019 onwards, a subsidiary – as Mercedes-Benz AG – of Daimler AG. Mercedes-Benz is known for producing luxury vehicles and commercial vehicles. The headquarters is in Stuttgart, Baden-Württemberg',
        style: TextStyle(fontSize: 18, color: Colors.blue),
      ),
    );
  }


  Column buildTitleDescColumn() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(children: [
        Text('Mercedes-Benz',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left)
      ]),
      Row(children: [
        Text(
          'Luxury vehicles company',
          style: TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.left,
        )
      ])
    ]);
  }

  Row buildStarColumn() {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.red),
        Text('99',style: TextStyle(fontSize: 16),),
      ],
    );
  }

  Column buildCRSColumn() {
    return Column(
      children: [
        Icon(Icons.call, color: Colors.blue),
        Text('Call',style: TextStyle(fontSize: 16),),
        Icon(Icons.send_sharp, color: Colors.blue),
        Text('Route',style: TextStyle(fontSize: 16),),
        Icon(Icons.share, color: Colors.blue),
        Text('Share',style: TextStyle(fontSize: 16),),
      ],
    );
  }


}
