import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance/pages/components/topic_and_button.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:insurance/pages/components/profile.dart';

class Accept1 extends StatefulWidget {
  const Accept1({Key? key}) : super(key: key);

  @override
  _Accept1State createState() => _Accept1State();
}

class _Accept1State extends State<Accept1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 85.h,
          ),
          TopicAndButton(text: 'Notification'),
          SizedBox(
            height: 50.h,
          ),
          SizedBox(
            height: 269.h,
            width: 400.w,
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(6.87, 79.94),
                zoom: 13.0,
              ),
              layers: [
                TileLayerOptions(
                    urlTemplate:
                        'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                    subdomains: ['a', 'b', 'c']),
              ],
            ),
          ),
          SizedBox(
            height: 42.h,
          ),
          SizedBox(
              height: 50.h,
              width: 300.w,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/accept_2');
                },
                child: Text(
                  'ACCEPT',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
                color: const Color.fromARGB(255, 73, 213, 79),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.r)),
                elevation: 5.h,
              )),
          SizedBox(
            height: 34.h,
          ),
          SizedBox(
            height: 50.h,
            width: 300.w,
            child: FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/map');
              },
              child: Text(
                'DIRECTION',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
              color: const Color.fromARGB(255, 11, 126, 193),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.r)),
            ),
          ),
          SizedBox(
            height: 34.h,
          ),
          SizedBox(
            height: 50.h,
            width: 300.w,
            child: FlatButton(
              onPressed: () {},
              child: Text(
                'CONTACT CLIENT',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
              color: const Color.fromARGB(255, 160, 213, 244),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.r)),
            ),
          ),
          SizedBox(
            height: 34.h,
          ),
          SizedBox(
            height: 50.h,
            width: 300.w,
            child: FlatButton(
              onPressed: () {},
              child: Text(
                'DECLINE',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
              color: const Color.fromARGB(255, 224, 20, 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.r)),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          SizedBox(
            height: 50.h,
            width: 300.w,
            child: Profile(
              text: 'CONTACT REGIONAL OFFICE',
              press: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),
          ),
        ],
      ),
    );
  }
}
