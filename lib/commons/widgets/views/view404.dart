import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyect_aplication/router/router.dart';
import 'package:proyect_aplication/services/custom_navigation_service.dart';
import 'package:proyect_aplication/services/locator.dart';
class Views404 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("404",style: TextStyle(fontSize : 40 , fontWeight: FontWeight.bold ) ),
              SizedBox(height: 10),
              Text("la pagina no se encunetra ",style: TextStyle(fontSize : 20 , fontWeight: FontWeight.normal ) ),
              BackButton(
                onPressed:() => {
                  locator<CustomNavigationService>().navigationTo( FluroRouters.logingRoute )
                }
                )
          ],
        )
      )
    );
    
  }
}