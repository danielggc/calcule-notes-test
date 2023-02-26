import 'package:calculate_note/domain/entities/enum_entities.dart';
import 'package:calculate_note/domain/entities/student.dart';
import 'package:flutter/cupertino.dart';

class RegisterFormProviders extends ChangeNotifier{


 

  GlobalKey<FormState> formKey  = new GlobalKey<FormState>();

    bool validateForm(){
      return formKey.currentState!.validate( );
    }

}