import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);
final _colors = [
  Colors.blueGrey,
  Colors.grey,
  Colors.blueGrey
];
final _stops = [
  0.0,
  0.7,
  0.0
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: (MyPortfolio()), // Home
    );
  }
}

class MyPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Portfolio',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: topSection(),
    );
  }

  Widget topSection() {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 15, left: 30, right: 30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: _colors,
              stops: _stops,
            ), // Gradient
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
            ),
          ), // Decoration

          child: Column(
            children: [
              Container(
                height: 105,
                width: 105,

                margin: EdgeInsets.only(top: 30, bottom: 10),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/me.jpg'),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[400],
                ), // Decoration
              ), // Display Image

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 5),
                child: Text(
                  'Sana Idemakpan Udoekong',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 35,
                    fontStyle: FontStyle.italic,
                  ), // Text Style
                ), // Text
              ), // Name

              Divider(
                color: Colors.white,
                height: 5,
              ),

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  'Student | Aspiring Software Engineer | Music Freak | Technophile | Innovator',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ), // Text Styles
                ), // Description
              ), // Name
            ],
          ),
        ), //topSection

        Container(
          padding: EdgeInsets.only(bottom: 20, right: 10, left: 10),
          margin: EdgeInsets.only(top: 18, bottom: 15),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                width: 600,
                child: Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Card(
                        child: Icon(
                          Icons.phone,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Text('+23407089404857'),
                    ],
                  ),
                ),
              ), //phone

              Container(
                padding: EdgeInsets.all(8),
                width: 600,
                child: Card(
                  child: Column(
                    children: [
                      Card(
                        color: Colors.white,
                        child: Icon(
                          Icons.mail,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Text('udoekongsana@gmail.com'),
                    ],
                  ),
                ),
              ), //email

              Container(
                padding: EdgeInsets.all(8),
                width: 600,
                child: Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Card(
                        child: Icon(
                          Icons.web,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Text('https://github.com/SanaUdoekong'),
                    ],
                  ),
                ),
              ), // github

              Container(
                padding: EdgeInsets.all(8),
                width: 600,
                child: Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Card(
                        child: Icon(
                          Icons.home,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Text('Ikpe Udok, Ikpe Annang'),
                    ],
                  ),
                ),
              ), // address
            ],
          ),
        ), //Other details
      ],
    );
  }
}
