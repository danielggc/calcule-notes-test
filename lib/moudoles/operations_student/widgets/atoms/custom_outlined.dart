import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonOutLined extends StatelessWidget{
  Function onPressed;
  String text;
  Color color;
  bool isfilled ;
  ButtonOutLined({ required this.text , this.color = Colors.blue , required this.onPressed, this.isfilled = false });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return OutlinedButton( 
        
        style:  ButtonStyle(
          shape:  MaterialStateProperty.all(
            RoundedRectangleBorder( borderRadius:  BorderRadius.circular(30))
          ),
          side:  MaterialStateProperty.all(BorderSide(color: color)),
          backgroundColor: MaterialStateProperty.all(
            isfilled ? color.withOpacity(0.3) : Colors.transparent  
          )
        ),
        onPressed: () => onPressed(),
        child: Padding(
          padding: EdgeInsets.symmetric( horizontal:  10 , vertical:  10 ) ,
          child: Text(
            this.text,
            style: GoogleFonts.aclonica(
                    fontSize:  20,
                    color:Colors.blue
                    )
          )
        )
      );
  }

}