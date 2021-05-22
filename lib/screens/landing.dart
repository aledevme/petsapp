import 'package:flutter/material.dart';
class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          header()
        ],
      ),
    );
  }

  Widget header(){
    return Container(
      padding: EdgeInsets.only(
        left: 30,
        top: 50,
        right: 20,
        bottom: 20
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: FadeInImage(
              height: 50,
              width: 50,
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage('https://blogadmin.planning.center/content/images/2018/09/emily-1.jpg'),
            ),
          ),
          SizedBox(width: 20),
          Text('Adopt Pet App', style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700
          ))
        ],
      )
    );
  } 

  Widget location(){
    return Container();
  }
  Widget filters(){
    return Container();
  }

  Widget petsList(){
    return Container();
  }
}