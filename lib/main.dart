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
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Portfolio',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ), // Text Styles
          ), // Title
          backgroundColor: Colors.blueGrey,
        ), // App Bar

        body: Stack(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 45, left: 30, right: 30),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: _colors,
                          stops: _stops,
                        ), // Gradient
                      ), // Decoration
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: 85,
                                  width: 85,
                                  margin: EdgeInsets.only(top: 30, bottom: 10),
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundImage: AssetImage('assets/images/me.jpg'),
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey,
                                  ), // Decoration
                                ), // Display Image
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    'Sana Idemakpan Udoekong',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ), // Text Style
                                  ), // Text
                                ), // Name

                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(bottom: 40),
                                  child: Text(
                                    'Student | Aspiring Software Engineer | Music Freak | Technophile | Innovator',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ), // Text Styles
                                  ), // Description
                                ), // Name

                                Column(
                                  children: [
                                    _buildButtonColumn(Colors.blueGrey, Icons.call, '+2347089404857'),
                                    _buildButtonColumn(Colors.blueGrey, Icons.email, 'udoekongsana@gmail.com'),
                                    _buildButtonColumn(Colors.blueGrey, Icons.home, 'Ikpe Udok'),
                                  ],
                                ), // Other details
                              ], // Name and Description
                            ), // Columns for name and description
                          ), // Expanded
                        ], // Columns and rows
                      ), // Home
                    ),
                  ),
                ],
              ),
            ),
          ],
        ), // Body
      ), // Home
    );
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8, bottom: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}

                       
                       
                            
          
