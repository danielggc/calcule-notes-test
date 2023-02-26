import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationInficator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Stack(children: [
          Icon(Icons.notification_add , ),
          Positioned(
            child: Container(
              width: 5,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(100)
              ),
            ),
          left: 2,
          )
        ],
      )
    );
  }
}