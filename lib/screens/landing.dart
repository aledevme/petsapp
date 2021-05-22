import 'package:flutter/material.dart';
import 'package:flutterdsc/model/Pet.dart';
class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  
  List<String> petsFilter = [
    'Gatos', 
    'Perros', 
    'Pericos', 
    'Otros'
  ];
  
  List<Color> colors = [
    
    
    Color(0xfff77f00),
    Color(0xfffcbf49),
    Color(0xffeae2b7),
  ];

  List<Pet> pets = [
    Pet(
      name: 'Carlos',
      raze: 'Pitbull',
      urlImage: 'http://assets.stickpng.com/images/5847f60fcef1014c0b5e48a2.png',
      color: 0xff003049,
    ),
    Pet(
      name: 'Bobby',
      raze: 'Shitzu',
      urlImage: 'https://www.nicepng.com/png/full/58-585705_shih-tzu-png-free-transparent-shih-tzu-cute.png',
      color: 0xffeae2b7,
    ),
    Pet(
      name: 'Rocket',
      raze: 'Bulldog',
      urlImage: 'https://lh3.googleusercontent.com/proxy/3th44nad8gpAnh9QxMqkbs1H5DmlwFDQul9FcBlDvR53UqKoDVEAQ__8MxYAmqbdyvdOh8e4jWrjg45k0WuPxZ3JwAO9deYmpUSd734AZEBYAmon7jp9uUoN3Q',
      color: 0xffd62828,
    )
  ];
  String petSelected="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          SizedBox(height: 10),
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
          ),
          SizedBox(height: 20),
          filtersSection(),
          SizedBox(height: 20),
          Expanded(
            child: petsList(),
          )
        ],
      ),
    );
  }

  Widget header(){
    return Container(
      padding: EdgeInsets.only(
        left: 30,
        top: 70,
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

  Widget filtersSection(){
    return Padding(
      padding: EdgeInsets.only(
        left:40
      ),
      child: Row(
        children: [
          Container(
            child: Icon(Icons.filter_alt),
          ),
          SizedBox(width: 20),
          Expanded(
            child: filters(),
          )
        ],
      ),
    );
  }

  Widget filters(){
    return Container(
      height: 50,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: petsFilter.length,
        itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            onTap: () => setState(() => petSelected = petsFilter[index]),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: petSelected == petsFilter[index] ? Colors.red : Colors.grey[200],
              ),
              width: 60,
              padding: EdgeInsets.all(3),
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                right: 30
              ),
              child: Text(petsFilter[index],
              style: TextStyle(
                color: petSelected == petsFilter[index] ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold
              ),
              )
            ),
          );
        },
      ),
    );
  }

  Widget petsList(){
    return ListView.builder(
      padding: EdgeInsets.only(
        top: 0,
        bottom: 10
      ),
      itemCount: pets.length,
      itemBuilder: (BuildContext context, int index){
        return Container(
          padding: EdgeInsets.only(
            left: 40,
            bottom: 20
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 30
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)
                  ),
                  color: Color(pets[index].color)
                ),
                child: FadeInImage(
                  fit: BoxFit.cover,
                  placeholder: AssetImage('assets/transparent_loading.gif'),
                  image: NetworkImage(pets[index].urlImage),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 20
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${pets[index].name}', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        )),
                        Icon(Icons.favorite_outline, color: Colors.red)
                      ],
                    ),
                    SizedBox(height: 10),
                    Text('${pets[index].raze}', style: TextStyle(
                      color: Colors.grey[500]
                    ))
                  ],
                ),
              )
            ],
          )
        );
      }
    );
  }
}