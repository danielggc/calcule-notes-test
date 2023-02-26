import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInput {
    static InputDecoration buildInputDecorationLogin( { required String hint ,required String label , required IconData icon  }){
    return InputDecoration(
      border: OutlineInputBorder(
        borderSide:  BorderSide(color: Colors.white.withOpacity(0.3))
      ),
      
      enabledBorder:  OutlineInputBorder(
        borderSide:  BorderSide(color: Colors.white.withOpacity(0.3))
      ),
      
      hintText: hint,
      labelText: label,
      prefixIcon:Icon( icon, color:Colors.grey ),
      labelStyle: TextStyle( color:  Colors.grey ),
      hintStyle: TextStyle( color: Colors.grey)

    );

  }

  static InputDecoration searchInputDecoration({
    required  String hint,
    required IconData iconData,
  }){
    return InputDecoration(
      border: InputBorder.none,
      enabledBorder: InputBorder.none,
      hintText: hint,
      prefixIcon: Icon(iconData, color: Colors.grey,),
      labelStyle: TextStyle( color: Colors.grey),
      hintStyle:TextStyle( color : Colors.grey )
    );
  }
}


