import 'dart:async';
import 'dart:math';


import 'package:flutter/material.dart';

// void main()
// {
//   runApp(MaterialApp(home: Homecp(),debugShowCheckedModeBanner: false,));
// }
class Homecp extends StatefulWidget {
  const Homecp({super.key});

  @override
  State<Homecp> createState() => _HomecpState();
}

class _HomecpState extends State<Homecp> {
  List l = ["", "", "", "", "", "", "", "", ""];
  bool o = true;
  int cnt = 0;
  String winiing = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
          title: const Text("ＴＩＣ-ＴＥＣ-ＴＯＥ", style: TextStyle(),)),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$winiing", style: const TextStyle(fontSize: 50)),
          const SizedBox(height: 20,),
          Center(
            child: Container(
              width: 350,
              height: 350,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [fun(0), fun(1), fun(2),],),),
                  Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [fun(3), fun(4), fun(5),],),),
                  Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [fun(6), fun(7), fun(8),],),),
                ],),

            ),
          ),
          const SizedBox(height: 20,),
          TextButton(onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) {
              return const Homecp();
            },));
          }, child: const Text("𝐑𝐄𝐒𝐓𝐀𝐑𝐓",
                style: TextStyle(color: Colors.black, fontSize: 30),)),
        ],
      ),
    );
  }

  Widget fun(int a) {
    return Expanded(
        child: InkWell(
            onTap: () => o ? get(a) : null,
            child: Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
              child: Text("${l[a]}", style: TextStyle(fontSize: 70,
                color: (l[a] == "𝕏") ? Colors.pinkAccent : Colors.blueAccent,)
              ),
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                // color: (l[a]=="𝕏")?Colors.blue:Colors.purpleAccent,
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10))),

            )
        )
    );
  }

  get(int a) {
    if (l[a] == "") {
      if (o == true) {
        l[a] = "𝕏";
        cnt++;
        o = false;

      }
      win();
    }
    if (cnt <= 4) {
      if (o == false) {
        while (true) {
          int r = Random().nextInt(9);
          if (!l.contains(r)) {
            if (l[r] == "")
            {

              if(winiing=="𝕏 is win")
                {
                  win();
                  break;
                }

              l[r] = "𝕆";
              break;
            }
          }
        }
      }
      o = true;
    }
    win();

    setState(() {

    });
  }

  win() {
    if
    (
    l[0] == "𝕏" && l[1] == "𝕏" && l[2] == "𝕏" ||
        l[3] == "𝕏" && l[4] == "𝕏" && l[5] == "𝕏" ||
        l[6] == "𝕏" && l[7] == "𝕏" && l[8] == "𝕏" ||
        l[0] == "𝕏" && l[3] == "𝕏" && l[6] == "𝕏" ||
        l[1] == "𝕏" && l[4] == "𝕏" && l[7] == "𝕏" ||
        l[2] == "𝕏" && l[5] == "𝕏" && l[8] == "𝕏" ||
        l[0] == "𝕏" && l[4] == "𝕏" && l[8] == "𝕏" ||
        l[6] == "𝕏" && l[4] == "𝕏" && l[2] == "𝕏"
    ) {
      winiing = "𝕏 is win";
      o = false;
    }
    else if (
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
        winiing = "𝕆 is win";
        o = false;
    }
    else {
      int y = 0;
      for (int i = 0; i < 9; i++) {
        if (l[i].isNotEmpty) {
          y++;
          print(y);
        }
      }
      if (y == 9) {
        winiing = " drow";
        o = false;
      }
    }
  }
}
