import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class music extends StatefulWidget {
  const music({Key? key}) : super(key: key);

  @override
  State<music> createState() => _musicState();
}

class _musicState extends State<music> {
  var double_value = 0.0;
  bool _ontapPless = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: [
        Row(
          children: [
        SizedBox(height: 90,),
        IconButton(onPressed: ()=>Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back_ios),iconSize: 20,),
         ],
        ),
      Container(
        margin: EdgeInsets.only(left: 20,right: 20),
        width: 400,
        height: 330,
        child:
        Image.asset('assets/kuroneko.jpg',),),
        SizedBox(height: 30,),
        Text('Nyanmusic',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        SizedBox(height: 5,),
        Text('kuroneko',),
        SizedBox(height: 20,),
       Slider(
         activeColor: Colors.grey,
         max: 5,
         min: 0,
         value: double_value, onChanged:(newValue) {
         setState(() {
           double_value = newValue;
         });
       },
       ),
         Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
         Padding(padding: EdgeInsets.only(left: 20,)),
         Text('0:00',),
         Padding(padding: EdgeInsets.only(left: 300,)),
         Text('5:00',),
         ],
         ),
        SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: () {},
              icon: Icon(Icons.skip_previous),iconSize: 50,),
           IconButton(onPressed: () {
             setState(() {
               _ontapPless =!_ontapPless;
           });
           },
              icon: Icon(_ontapPless ? Icons.pause_circle_filled:Icons.play_circle_fill_sharp),iconSize: 80,),
            IconButton(onPressed: (
                ) {},
              icon: Icon(Icons.skip_next),iconSize: 50,),
          ],
        )
       ],
      ),
    );
  }
}
