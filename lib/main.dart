import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:music/main_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ホーム"),
        actions: [
          IconButton(onPressed: () {},
            icon: Icon(Icons.search),iconSize: 25),
        ],
      ),

      body: Column(
        children:[
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 7),),
              Text("あなたへのおすすめ",style: TextStyle(fontSize: 20),
              ),
              Padding(padding: EdgeInsets.only(left: 155,top: 70,),),
              IconButton ( onPressed: () {},//=>Navigator.of(context).push(MaterialPageRoute(builder: (context) {return music();})),
                icon: Icon(Icons.arrow_forward_ios),iconSize: 15,),
            ],
          ),
         //SizedBox(height: 5),
          Container(
            height: 200,
            width: 400,
            child:
            ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(padding: EdgeInsets.only(left: 7),),
                SizedBox(
                  height: 200,
                  width: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child:
                        Image.asset('assets/cropHIRADSC03362.jpg',),),
                      SizedBox(height: 5,),
                      Text('Mohikan',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text('neko'),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 7),),
                SizedBox(
                  height: 200,
                  width: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child:
                        Image.asset('assets/cropsikun_20220402-180657-2.jpg',),),
                      SizedBox(height: 5,),
                      Text('Oyasumi',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text('koneko'),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 7),),
                SizedBox(
                  height: 200,
                  width: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                           //Padding(padding: EdgeInsets.only(left: 5,)),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: GestureDetector(
                          child: Image.asset('assets/kuroneko.jpg',),
                          onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context) {return music();})),),),
                      Padding(padding: EdgeInsets.only(left: 7,)),
                      SizedBox(height: 5,),
                      Text('Kameramesen',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text('kuroneko'),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 7),),
                SizedBox(
                  height: 200,
                  width: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child:
                        Image.asset('assets/croptomneko12151313.jpg',),),
                      SizedBox(height: 5,),
                      Text('Osuwari',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text('kijineko'),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 7),),
                SizedBox(
                  height: 200,
                  width: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child:
                        Image.asset('assets/nekokyuu.jpg'),),
                      SizedBox(height: 5,),
                      Text('Blue',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text('nikukyu'),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 7),),
              ],
            ),
          ),
          SizedBox(height: 40,),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text("カテゴリー",style: TextStyle(fontSize: 20),),
              Padding(padding: EdgeInsets.only(left: 230,top: 50),),
              IconButton(onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios),iconSize: 15,)
            ],
          ),
          SizedBox(height: 10,),
          Container(
            width: 500,
            height: 100,
            child:
            ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 15),
              children: [
                Container(
                  width: 150,
                  height: 100,
                  alignment: Alignment.center,
                  child:
                  Text('クラシック',style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: [Colors.purple,Colors.black],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 12),),
                Container(
                  width: 150,
                  height: 100,
                  alignment: Alignment.center,
                  child:
                  Text('ポップ',style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: [Colors.pinkAccent,Colors.pinkAccent],
                    ),
                  ),),
                Padding(padding: EdgeInsets.only(left: 12),),
                Container(
                  width: 150,
                  height: 100,
                  alignment: Alignment.center,
                  child:
                  Text('ジャズ',style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: [Colors.greenAccent,Colors.greenAccent],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Column(
            children:[
              Container(
                width: 500,
                height: 100,
                child:
                ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 15),
                  children: [
                    Container(
                      width: 150,
                      height: 100,
                      alignment: Alignment.center,
                      child:
                      Text('カントリー',style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Colors.yellow,Colors.blueGrey],
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 12),),
                    Container(
                      width: 150,
                      height: 100,
                      alignment: Alignment.center,
                      child:
                      Text('ロック',style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Colors.cyanAccent,Colors.cyanAccent],
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 12),),
                    Container(
                      width: 150,
                      height: 100,
                      alignment: Alignment.center,
                      child:
                      Text('R&B',style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [Colors.orangeAccent,Colors.grey],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 90,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child:
                Column(
                  children: [
                    Icon(Icons.home),
                    Text('ホーム'),
                  ],
                ),
              ),
              Container(
                child:
                Column(
                  children: [
                    Icon(Icons.search_outlined),
                    Text('検索'),
                  ],
                ),
              ),
              Container(
                child:
                Column(
                  children: [
                    Icon(Icons.playlist_play_outlined),
                    Text('プレイリスト'),
                  ],
                ),
              ),
              Container(
                child:
                Column(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    Text('アカウント'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
