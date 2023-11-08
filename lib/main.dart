import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Rohapp",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(
              Icons.menu,
              weight: 700,
            ),
            actions: [
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(
                    Icons.search
                )
              )
            ],
          ),
          body: AppBody(),
        ),
      ),
    );
  }
}

class AppBody extends StatelessWidget{
  const AppBody({super.key});

  Widget build(BuildContext context){
    return ListView(
      children: [
        UserProfile(name:"Rohan"),
        UserProfile(name:"Kushal"),
        UserProfile(name: "Nirmitha")
      ],
    );
  }
}

Widget UserProfile({name}){
  print(name);
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 40),
    height: 50,
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            shape: BoxShape.circle
          ),
          padding: EdgeInsets.all(10),
          // color: Colors.red,
          child: Text(
            name[0],
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        Expanded(
            child: Text(
              name,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
          flex: 1,
        ),
      ],
    ),
  );
}