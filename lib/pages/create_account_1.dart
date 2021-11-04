import 'package:flutter/material.dart';
import 'package:insurance/pages/components/input_box.dart';

class CreateAccount1 extends StatefulWidget {
  const CreateAccount1({Key? key}) : super(key: key);

  @override
  _CreateAccount1State createState() => _CreateAccount1State();
}

class _CreateAccount1State extends State<CreateAccount1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        foregroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Create Account',
          style: TextStyle(
              fontFamily: 'Comfortaa', fontSize: 36.0, color: Colors.black),
        ),
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InputBox(text: 'Employee Number', isObs: false),
          const SizedBox(
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: FlatButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/create_account_2', (route) => false);
              },
              child: const Text(
                'Next',
                style: TextStyle(
                    fontSize: 13.0, fontFamily: 'Roboto', color: Colors.white),
              ),
              color: Color.fromRGBO(11, 126, 193, 1),
              height: 53.0,
              minWidth: 360.0,
            ),
          )
        ],
      ),
    );
  }
}
