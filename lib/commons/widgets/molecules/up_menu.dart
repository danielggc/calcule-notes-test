import 'package:calculate_note/commons/provider/side_menu_provider.dart';
import 'package:calculate_note/commons/widgets/atoms/notification_inficator.dart';
import 'package:flutter/material.dart';


class UpMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final wize = MediaQuery.of(context).size;
    // TODO: implement build
    return Container(
      height: 50,
      width: double.infinity,
      child: Row(
          children: [
            if( wize.width < 700 )
              IconButton( onPressed: ()=> { SideMenuProvider.openMenu() }, icon: Icon( Icons.menu_outlined ) ),

            SizedBox( width:  5,),
  
            Spacer(),
            NotificationInficator(),
            SizedBox(width: 10,),
            SizedBox(width: 20,)
          ],
        ),
        decoration:  boxDecoration(),
       );
  }

  BoxDecoration boxDecoration (){
    return BoxDecoration(
      color: Colors.black26,
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 5
        )
      ]
    );
  }
}