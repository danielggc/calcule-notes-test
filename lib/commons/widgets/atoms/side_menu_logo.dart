import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideMenuLogo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only( top:  30 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon( Icons.bubble_chart_outlined , color:  Colors.purple ,),
          SizedBox(height: 10,),
          Text(
            'escuart',
             style: GoogleFonts.montserratAlternates(
              fontSize: 20,
              fontWeight:  FontWeight.w200 ,
              color: Colors.white ,
              decoration: TextDecoration.none
            ),
          )
      ]),
    );
  }
}