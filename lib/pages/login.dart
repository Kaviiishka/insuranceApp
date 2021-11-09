import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Column(
          children: [
            SizedBox(
              height: 261.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 0.h),
              child: Center(
                child: SizedBox(
                  height: 360.h,
                  width: 410.w,
                  child: Image(
                    image: AssetImage('assets/car-2 1.jpg'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 212.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 150.w,
                  height: 50.h,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/login_scrn', (route) => false);
                    },
                    child: Text(
                      'LOG IN',
                      style: TextStyle(
                          fontFamily: 'Roborto',
                          fontWeight: FontWeight.w900,
                          fontSize: 13.sp,
                          color: Colors.black),
                    ),
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.r)),
                        side: BorderSide(width: 2.w)),
                  ),
                ),
                SizedBox(
                  width: 150.w,
                  height: 50.h,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/create_account_1', (route) => false);
                    },
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w900),
                    ),
                    color: const Color.fromARGB(255, 11, 126, 193),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.r)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
