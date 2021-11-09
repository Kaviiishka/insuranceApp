import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Body_contact extends StatefulWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  State<Body_contact> createState() => _Body_contactState();
}

class _Body_contactState extends State<Body_contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.w),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20.sp,
            ),
            Client(),
          ],
        ),
      ),
    );
  }

  Widget Client() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 12, 8),
        child: FlatButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, '/accept_2');
          },
          child: Text('Client 1'),
          color: Color.fromRGBO(224, 22, 22, 1),
        ),
      ),
    );
  }
}
