
import 'package:calculate_note/domain/entities/enum_entities.dart';
import 'package:calculate_note/domain/entities/student.dart';
import 'package:flutter/cupertino.dart';

class RegisterFormProviders extends ChangeNotifier{


  String _riverseStrResult = "";
  String riverseStrResult (){
    return this._riverseStrResult;
  } 
  void updateRiverseStrResult( String data ){
      this._riverseStrResult = data;
      notifyListeners();
  }

  List<int> _listPerfecNum = [] ;

  List<int> listPerfectNum() {
    return this._listPerfecNum;
  }
  void update ( List<int> data ){
    this._listPerfecNum = data;
    notifyListeners();
  }

  GlobalKey<FormState> formKey  = new GlobalKey<FormState>();

    bool validateForm(){
      return formKey.currentState!.validate( );
    }

}