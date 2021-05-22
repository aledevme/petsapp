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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          SizedBox(height: 30),
          location(),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(
              left:40,
              right: 40
            ),
            child: Divider(
              thickness: 2,
              color: Colors.grey[200],
            ),
          )
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
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 40
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 60,
            ),
            child: Text('Ubicación', style: TextStyle(
              color: Colors.grey[400]
            )),
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.location_on_outlined),
              SizedBox(width: 35),
              Flexible(
                child: Text('San Salvador,', style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900
                )),
              ),
              SizedBox(width: 10),
              Text('SV', style: TextStyle(
                fontSize: 30,
                color: Colors.grey[500],
                fontWeight: FontWeight.normal
              )),
            ],
          )
        ],
      ),
    );
  }
  Widget filters(){
    return Container(
      
    );
  }

  Widget petsList(){
    return Container();
  }
}