import 'package:flutter/material.dart';
import 'package:insurance/pages/components/input_box.dart';

class CreateAccount2 extends StatefulWidget {
  const CreateAccount2({Key? key}) : super(key: key);

  @override
  _CreateAccount2State createState() => _CreateAccount2State();
}

class _CreateAccount2State extends State<CreateAccount2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Create Account',
          style: TextStyle(
            fontFamily: 'Comfortaa',
            fontSize: 36.0,
          ),
        ),
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 16.0,
            ),
            InputBox(text: 'User Name', isObs: false),
            const SizedBox(
              height: 16.0,
            ),
            InputBox(
              text: 'Email',
              isObs: false,
            ),
            const SizedBox(
              height: 16.0,
            ),
            InputBox(text: 'Password', isObs: true),
            SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/welcome', (route) => false);
                },
                child: const Text(
                  'Next',
                  style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Roboto',
                      color: Colors.white),
                ),
                color: Color.fromRGBO(11, 126, 193, 1),
                height: 53.0,
                minWidth: 360.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
