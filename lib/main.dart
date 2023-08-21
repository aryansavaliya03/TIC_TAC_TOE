import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tic_tac_toe/tic_tak_toecp.dart';
import 'package:tic_tac_toe/tic_tec_toe_2p.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("𝐓𝐈𝐂 𝐓𝐀𝐂 𝐓𝐎𝐄"), backgroundColor: Colors.black),
      body: Container(width: double.infinity,height: double.infinity, color: Colors.black12,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Homecp();
                  },));
                },child: Container(alignment: Alignment.center,child: Text("WITH COMPUTER",style: TextStyle(color: Colors.blue,fontSize: 15)),width: 150,height: 60,decoration: BoxDecoration(color: Colors.black,border: Border.all(color: Colors.black,width: 4,style: BorderStyle.solid,),borderRadius: BorderRadius.all(Radius.circular(10))),))
              ],
            ),
            SizedBox(height: 15),
            Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Home2p();
                    },));
                  },child: Container(alignment:Alignment.center,child: Text("WITH FRIEND",style: TextStyle(color: Colors.pink,fontSize: 15),),width: 150,height: 60,decoration: BoxDecoration(color: Colors.black,border: Border.all(color: Colors.black,width: 4,style: BorderStyle.solid,),borderRadius: BorderRadius.all(Radius.circular(10))),))
          ],
        ),
          ],
        ),
      ),
    );
  }
}
