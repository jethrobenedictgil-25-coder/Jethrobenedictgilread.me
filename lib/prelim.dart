import 'package:flutter/material.dart';

class PrelimScreen extends StatefulWidget {
  const PrelimScreen({super.key});

  @override
  State<PrelimScreen> createState() => PrelimScreenState();
}

class PrelimScreenState extends State<PrelimScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Prelim Exam", style: TextStyle(color: Color.fromARGB(255, 2, 5, 138)),),
          SizedBox(height: 50,),
          Text("Jethro Benedict D. Gil"),

           Container(
            height:250,
            width: 250,
            color: const Color.fromARGB(207, 0, 60, 255),
            alignment: Alignment.center,
            child: Center(child: Text("Box 1")),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height:250,
                width: 250,
                color: const Color.fromARGB(207, 0, 60, 255),
                alignment: Alignment. center,
                child: Center(child: Text("Box 2")),
          ),

          Container(
            height:250,
            width: 250,
            color: const Color.fromARGB(207, 0, 60, 255),
            alignment: Alignment.center,
            child: Center(child: Text("Box 3")),
          ),
          ],),


        ],
        ),
    );
  }
}