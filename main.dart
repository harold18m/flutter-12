import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controles Material y Cupertino',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool switchValue = false;
  bool materialSwitchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Controles Material y Cupertino'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Material Button',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Material Button'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blue,
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Cupertino Button',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            CupertinoButton(
              onPressed: () {},
              child: Text('Cupertino Button'),
              color: Colors.blue,
            ),
            SizedBox(height: 40),
            Text(
              'Cupertino Switch',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            CupertinoSwitch(
              value: switchValue,
              activeColor: CupertinoColors.activeBlue,
              onChanged: (bool value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),
            SizedBox(height: 40),
            Text(
              'Material Switch',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Switch(
              value: materialSwitchValue,
              onChanged: (bool value) {
                setState(() {
                  materialSwitchValue = value;
                });
              },
              activeColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
