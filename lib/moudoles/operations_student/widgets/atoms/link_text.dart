import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LinkText extends StatefulWidget{
  String nameLink;
  Function ? onPressed;
  LinkText( { required this.nameLink , this.onPressed  } );
  _LinkText  createState() => _LinkText();
}
class _LinkText extends State<LinkText>{
  bool ishoober = false;
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return GestureDetector(
          onTap: (){
            if(this.widget.onPressed != null )
              this.widget.onPressed!();
          },
          child : MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: ( _ ) => setState(() {
              ishoober = true; 
            }),
            onExit: ( _ ) => setState((() {
              ishoober = false;
            })),
          child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10 , vertical:  5 ),
          child: Text(
            widget.nameLink,
            style:  TextStyle(
              fontSize: 16,
              color:  Colors.grey[700],
              decoration: ishoober ? TextDecoration.underline : TextDecoration.none
            ),
          ),
        )
      )
    );
  }
}