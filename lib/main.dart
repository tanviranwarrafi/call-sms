import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _launcherURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not open url';
    }
  }

  void _launchCall(String phoneNumber) async {
    var number = "tel: ${phoneNumber}";
    if (await canLaunch(number)) {
      await launch(number);
    } else {
      throw 'Could not place call';
    }
  }

  void _sendSMS(String phoneNumber) async {
    var number = "sms:${phoneNumber}";
    if (await canLaunch(number)) {
      await launch(number);
    } else {
      throw 'Could not launch $number';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share Data To Email'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.map, size: 120, color: Colors.blueAccent),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Google map URL',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      SizedBox(height: 16.0),
                      GestureDetector(
                        onTap: () {
                          _launcherURL(
                              'https://www.google.com/maps/search/pstu/@22.4643816,90.3832038,18.16z');
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 16.0, right: 16.0),
                          height: 40.0,
                          width: 300.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Colors.blueAccent,
                            color: Colors.blue,
                            elevation: 7.0,
                            child: Center(
                              child: Text(
                                'Launch Google Map',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.add_call, size: 120, color: Colors.orange),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Mobile No: 01521438885',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange),
                      ),
                      SizedBox(height: 16.0),
                      GestureDetector(
                        onTap: () {
                          _launchCall("01521438885");
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 16.0, right: 16.0),
                          height: 40.0,
                          width: 300.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Colors.orangeAccent,
                            color: Colors.orange,
                            elevation: 7.0,
                            child: Center(
                              child: Text(
                                'Call',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.textsms, size: 120, color: Colors.red),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Mobile No: 01521438885',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                      SizedBox(height: 16.0),
                      GestureDetector(
                        onTap: () {
                          _sendSMS("01521438885");
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 16.0, right: 16.0),
                          height: 40.0,
                          width: 300.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Colors.redAccent,
                            color: Colors.red,
                            elevation: 7.0,
                            child: Center(
                              child: Text(
                                'send SMS',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
