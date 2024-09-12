import 'package:flutter/material.dart';

void main() {
  runApp(BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xff2B475E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 102,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('images/tharwat.png'),
            ),
          ),
          Text(
            'Tharwat Samy',
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontFamily: 'Pacifico'),
          ),
          Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
            indent: 30,
            endIndent: 30,
            height: 10,
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.phone,
                size: 32,
                color: Color(0xff2B475E),
              ),
              title: Text(
                '(+20)1018585984',
                style: TextStyle(fontSize: 20, color: Color(0xff2B475E)),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.mail,
                size: 32,
                color: Color(0xff2B475E),
              ),
              title: Text(
                'SchoolerTech@gmail.com',
                style: TextStyle(fontSize: 20, color: Color(0xff2B475E)),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
