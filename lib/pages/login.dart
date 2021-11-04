import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              height: 60,
            ),
            const Center(
              child: Image(
                image: AssetImage('assets/login.png'),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 8, 8, 8),
                  child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/login_scrn', (route) => false);
                      },
                      child: Center(
                        child: Text(
                          'LOG IN',
                          style: TextStyle(
                              fontFamily: 'Roberto',
                              fontSize: 13,
                              color: Colors.black),
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          maximumSize: Size(150, 45),
                          side: BorderSide(width: 2))),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 25, 8),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/create_account_1', (route) => false);
                    },
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 13),
                    ),
                    color: Color.fromRGBO(11, 126, 193, 1),
                    height: 45,
                    minWidth: 150,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
