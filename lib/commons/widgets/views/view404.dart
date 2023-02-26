
import 'package:calculate_note/configurations/services/custom_navigation_service.dart';
import 'package:calculate_note/configurations/services/locator.dart';
import 'package:calculate_note/configurations/routes/route.dart';

import 'package:calculate_note/commons/dictionaries/error_message_dictionary.dart';

import 'package:flutter/material.dart';

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
              Text( ErrorMessageDictionary.message_error ,
                    style: TextStyle(fontSize : 40 , fontWeight: FontWeight.bold
                      ) 
                  ),
              SizedBox(height: 10),
              Text( ErrorMessageDictionary.page_not_found ,style: TextStyle(fontSize : 20 , fontWeight: FontWeight.normal ) ),
              BackButton(
                onPressed:() => {
                  locator<CustomNavigationService>().navigationTo( FluroRouters.calculate_note)
                }
                )
          ],
        )
      )
    );
    
  }
}