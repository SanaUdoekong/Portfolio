import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyProfile(), debugShowCheckedModeBanner: false);
  }
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlue[50],
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipPath(
                    clipper: ContainerClipper(),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.blue[900]),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text('Sana Udoekong',
                          style: TextStyle(
                            color: Colors.blue[900],
                            fontSize: 31,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(
                        'FLUTTER DEVELOPER',
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontSize: 19,
                            letterSpacing: 2.0),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                              'I\'m kin on using my skills to profer positive solutions to world issues',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.blue[900],
                                  fontSize: 15,
                                  letterSpacing: 2.0)),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Divider(
                          color: Colors.blue[900],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                              'I\'m Student | Aspiring software developer | Music freak | Technophile ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.blue[900],
                                  fontSize: 15,
                                  letterSpacing: 2.0)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        width: 150,
                        child: Divider(
                          color: Colors.blue[900],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Card(
                          color: Colors.blue[900],
                          margin:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                            child: ListTile(
                                leading: Icon(
                                  Icons.call,
                                  color: Colors.lightBlue[50],
                                ),
                                title: Text('+2347089404857',
                                    style: TextStyle(
                                        color: Colors.lightBlue[50]))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Card(
                          color: Colors.blue[900],
                          margin:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                            child: ListTile(
                                leading: Icon(
                                  Icons.email,
                                  color: Colors.lightBlue[50],
                                ),
                                title: Text('udoekongsana@gmail.com',
                                    style: TextStyle(
                                        color: Colors.lightBlue[50]))),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              // top: screenHeight * (1 / 8) - 100 / 2,
              left: screenWidth * 0.28,
              bottom: screenHeight - 220,
              // right: 30,
              child: Container(
                margin: const EdgeInsets.all(4),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.lightBlue[50]),
                child: Container(
                  padding: EdgeInsets.all(4),
                  margin: const EdgeInsets.all(8),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/portfolio.jpg'),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue[900], width: 3),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 40);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
