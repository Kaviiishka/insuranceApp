import 'package:flutter/material.dart';
import 'components/body.dart';

class Welcome_screen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Welcome_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          centerTitle: true,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 36,
                ),
              ),
            ],
          ),
          elevation: 0,
          foregroundColor: Colors.black,
          //ackgroundColor: Colors.lightBlue[50],
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 12, 8),
              child: RaisedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/notification_1');
                },
                elevation: 0,
                padding: EdgeInsets.all(0),
                // ignore: prefer_const_constructors
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Ink(
                  width: 90,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(11, 126, 193, 1),
                            Color.fromRGBO(0, 255, 255, 1)
                          ]),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Container(
                    constraints:
                        const BoxConstraints(minWidth: 70.0, minHeight: 31.0),
                    alignment: Alignment.center,
                    child: const Text('1'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Body(),
      // backgroundColor: const Color.fromARGB(255, 239, 250, 252),
    );
  }
}
