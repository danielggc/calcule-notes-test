

import 'package:calculate_note/configurations/services/locator.dart';
import 'package:calculate_note/configurations/services/custom_navigation_service.dart';
import 'package:calculate_note/configurations/routes/route.dart';

import 'package:calculate_note/commons/dictionaries/student_options_dictionary.dart';

import 'package:flutter/material.dart';

class AddNoteToStudent extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text( StudentOptionsDictionary.add_note_to_student_teamplate,
                    style: TextStyle(fontSize : 20 , fontWeight: FontWeight.bold 
                                      ) 
                  )
              ,
              SizedBox(height: 10),
              BackButton(
                onPressed:() => {
                  locator<CustomNavigationService>().navigationTo( FluroRouters.calculate_note )
                }
                )
          ],
        )
      )
    );
    
  }
}
