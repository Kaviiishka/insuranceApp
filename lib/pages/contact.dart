import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Contact extends StatefulWidget {
  //const Review({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact',
          style: TextStyle(fontFamily: 'Comfortaa', fontSize: 36.sp),
        ),
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 60.sp,
              child: Text(
                'Branch name xxxx',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 30.sp,
                ),
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            contactNumber1(),
            SizedBox(
              height: 20.sp,
            ),
            contactNumber2(),
            SizedBox(
              height: 20.sp,
            ),
            contactNumber3(),
            SizedBox(
              height: 50.sp,
            ),
            back(),
          ],
        ),
      ),
    );
  }

  Widget contactNumber1() {
    final number = '+946926885';
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 8, 40, 8),
      child: FlatButton(
        onPressed: () {
          FlutterPhoneDirectCaller.callNumber(number);
        },
        child: Text('CONTACT NUMBER 1',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 13.sp,
            )),
        color: Color.fromRGBO(11, 126, 193, 1),
      ),
    );
  }

  Widget contactNumber2() {
    final number = '+946926885';
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 8, 40, 8),
      child: FlatButton(
        onPressed: () {
          FlutterPhoneDirectCaller.callNumber(number);
        },
        child: Text('CONTACT NUMBER 2',
            style: TextStyle(fontFamily: 'Roboto', fontSize: 13.sp)),
        color: Color.fromRGBO(11, 126, 193, 1),
      ),
    );
  }

  Widget contactNumber3() {
    final number = '+946926885';
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 8, 40, 8),
      child: FlatButton(
        onPressed: () {
          FlutterPhoneDirectCaller.callNumber(number);
        },
        child: Text('CONTACT NUMBER 3',
            style: TextStyle(fontFamily: 'Roboto', fontSize: 13.sp)),
        color: Color.fromRGBO(11, 126, 193, 1),
      ),
    );
  }

  Widget back() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 8, 40, 8),
      child: FlatButton(
        onPressed: () {
          Navigator.popAndPushNamed(context, '/welcome');
        },
        child: Text('BACK',
            style: TextStyle(fontFamily: 'Roboto', fontSize: 13.sp)),
        color: Color.fromRGBO(11, 126, 193, 1),
      ),
    );
  }
}
