import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMenuItem extends StatefulWidget{
  final String text ;
  final IconData iconData ;
  final bool  isActive;
  final Function onPressed;
  CustomMenuItem({ required this.iconData, required this.isActive,  required  this.onPressed , required this.text });
  _MenuItem createState() => _MenuItem();
}


class _MenuItem extends State< CustomMenuItem >{
  @override
  bool isHoober =false;
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedContainer(
      duration:  Duration( milliseconds: 250 ),
      color: isHoober 
        ? Colors.blue.withOpacity(0.5)
        :   widget.isActive ? Colors.white.withOpacity(0.1) : Colors.transparent,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.isActive 
          ? null 
          : () => widget.onPressed(),
          
          child: Padding(
            padding: EdgeInsets.symmetric( horizontal: 30 ,  vertical: 10 ),
            child : MouseRegion(
              onEnter: ( _  )  =>  setState(() {
                isHoober = true;
              }),
              onExit: ( _ ) => setState(() {
                isHoober = false;
              }), 
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon( this.widget.iconData ,  color: Colors.white.withOpacity(0.3),),
                  SizedBox( width: 20, ),
                  Text( widget.text , style:  GoogleFonts.roboto( fontSize : 16 , color: Colors.white),)
                ],
                ),
            )
          ),
        ),

      ),
    );
  }
}