import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Yare Yare!", style: TextStyle(color:Color.fromARGB(255, 2, 5, 138)),),
          SizedBox(height: 50,),
          Text("Yokoso, watashi no soul society e!"),

          Row(children: [
            Text("New text"),
            SizedBox(width: 50), 
            Text("Error"),
          ],),


          Container(
            height:300,
            width: 300,
            color: Colors.black38,
            child: Center(child: Text("Nonsense text")),
          ),

        ],
        ),
    );
  }
}