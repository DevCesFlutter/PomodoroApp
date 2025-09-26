import 'package:contadorxd/utils/utils.dart';
import 'package:contadorxd/widgets/timeoption.dart';
import 'package:contadorxd/widgets/timercard.dart';
import 'package:flutter/material.dart';

class PomoDoroScreen extends StatelessWidget {
  const PomoDoroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        title: Text(
          'PomoApp',
          style: textStyle(25, Colors.white, FontWeight.w700),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh, color: Colors.white),
            iconSize: 40,

            onPressed: () {},
          ),
        ],
      ),

      //body
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 15),
              Timercard(),
              SizedBox(height: 40),
              Timeoption(),
            ],
          ),
        ),
      ),
    );
  }
}
