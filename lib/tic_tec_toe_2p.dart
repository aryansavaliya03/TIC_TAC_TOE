// import 'package:demo/cal.dart';
import 'dart:math';

import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Home2p(),
//     debugShowCheckedModeBanner: false,
//   ));
// }

class Home2p extends StatefulWidget {
  const Home2p({super.key});

  @override
  State<Home2p> createState() => _Home2pState();
}

class _Home2pState extends State<Home2p> {
  List l = ["", "", "", "", "", "", "", "", ""];
  int y=0;
  int cnt = 0,i=0;
  String winiing="";
  //bool x=false;
  bool temp1=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
          title: Text("ＴＩＣ-ＴＥＣ-ＴＯＥ", style: TextStyle(),)),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$winiing", style: TextStyle(fontSize: 50)),
          SizedBox(height: 20,),
          Center(
            child: Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        fun(0),
                        fun(1),
                        fun(2),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        fun(3),
                        fun(4),
                        fun(5),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        fun(6),
                        fun(7),
                        fun(8),
                      ],
                    ),
                  ),
                ],
              ),

            ),
          ),
          SizedBox(height: 20,),
          TextButton(onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return Home2p();
            },));
          },
              child: Text("𝐑𝐄𝐒𝐓𝐀𝐑𝐓",
                style: TextStyle(color: Colors.black, fontSize: 30),)),
        ],
      ),
    );
  }

  Widget fun(int a) {
    return Expanded(
        child: InkWell(
            onTap: () => (temp1==true)?get(a):null,
            child: Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
              child: Text("${l[a]}", style: TextStyle(fontSize: 70,
                color: (l[a] == "𝕏") ? Colors.pinkAccent : Colors.blueAccent,)),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                // color: (l[a]=="𝕏")?Colors.blue:Colors.purpleAccent,
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10))),

            )
        )
    );
  }

  get(int a) {
    if (cnt % 2 == 0) {
      l[a] = "𝕏";
      cnt++;
    } else {
      l[a] = "𝕆";
      cnt++;
    }
    win();

    setState(() {

    });
  }

  win() {
    if (
    l[0] == "𝕆" && l[1] == "𝕆" && l[2] == "𝕆" ||
        l[3] == "𝕆" && l[4] == "𝕆" && l[5] == "𝕆" ||
        l[6] == "𝕆" && l[7] == "𝕆" && l[8] == "𝕆" ||
        l[0] == "𝕆" && l[3] == "𝕆" && l[6] == "𝕆" ||
        l[1] == "𝕆" && l[4] == "𝕆" && l[7] == "𝕆" ||
        l[2] == "𝕆" && l[5] == "𝕆" && l[8] == "𝕆" ||
        l[0] == "𝕆" && l[4] == "𝕆" && l[8] == "𝕆" ||
        l[6] == "𝕆" && l[4] == "𝕆" && l[2] == "𝕆"
    )
    {
      winiing="𝕆 is win";
      temp1=false;
    }
    else if
    (
    l[0] == "𝕏" && l[1] == "𝕏" && l[2] == "𝕏" ||
        l[3] == "𝕏" && l[4] == "𝕏" && l[5] == "𝕏" ||
        l[6] == "𝕏" && l[7] == "𝕏" && l[8] == "𝕏" ||
        l[0] == "𝕏" && l[3] == "𝕏" && l[6] == "𝕏" ||
        l[1] == "𝕏" && l[4] == "𝕏" && l[7] == "𝕏" ||
        l[2] == "𝕏" && l[5] == "𝕏" && l[8] == "𝕏" ||
        l[0] == "𝕏" && l[4] == "𝕏" && l[8] == "𝕏" ||
        l[6] == "𝕏" && l[4] == "𝕏" && l[2] == "𝕏"
    )
    {
      winiing="𝕏 is win";
      temp1=false;
    }
    else {
      y = 0;
      for (i = 0; i < 9; i++) {
        if (l[i].isNotEmpty) {
          y++;
          print(y);
        }
      }
      if (y == 9) {
        winiing = " drow";
        temp1=false;
      }
    }
  }
}
//else if(!a[0]=="" ,
// )
