

import 'package:calculate_note/commons/widgets/organisms/custom_menu_item.dart';

import 'package:calculate_note/commons/widgets/atoms/side_menu_logo.dart';
import 'package:calculate_note/commons/widgets/atoms/text_separator.dart';
import 'package:calculate_note/commons/provider/side_menu_provider.dart';


import 'package:calculate_note/configurations/services/custom_navigation_service.dart';
import 'package:calculate_note/configurations/services/locator.dart';
import 'package:calculate_note/commons/dictionaries/student_options_dictionary.dart';
import 'package:calculate_note/configurations/routes/route.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   final  providerSideMenu =  Provider.of<SideMenuProvider>(context, listen: true );
    // TODO: implement build
    return Container(
      decoration: boxDecoration() ,
      width: 300,
      height: double.infinity,
      child:ListView(
        children: [

          SideMenuLogo(),

          SizedBox(height: 50 ,),

          TextSeparator(text: StudentOptionsDictionary.menu_side_main ),
          
          CustomMenuItem( 
            text:StudentOptionsDictionary.calculate_note_teamplate ,
            isActive: providerSideMenu.routeState == FluroRouters.calculate_note ,
            iconData: Icons.calculate_outlined,
            onPressed:  ( ) =>  onPressed( FluroRouters.calculate_note ),),

          CustomMenuItem( 
            text:StudentOptionsDictionary.menu_side_add_student ,
            isActive: providerSideMenu.routeState == FluroRouters.calculate_note ,
            iconData: Icons.person_add_alt_1_outlined,
            onPressed:  ( ) =>  onPressed( FluroRouters.student_add ),),

          CustomMenuItem( 
            text:StudentOptionsDictionary.menu_side_add_note_student ,
            isActive: providerSideMenu.routeState == FluroRouters.calculate_note ,
            iconData: Icons.note_add_outlined,
            onPressed:  ( ) =>  onPressed( FluroRouters.student_add_note ),),


          SizedBox(height: 30 ,),

          TextSeparator(text: StudentOptionsDictionary.menu_side_separator_exit),
               
          CustomMenuItem( 
            text: StudentOptionsDictionary.menu_side_lagout ,
            isActive: false,
            iconData: Icons.exit_to_app_outlined,
            onPressed: () => {},
          ),

          
        ]
      )
    );
    
  }

  void onPressed( String routeName ){
    SideMenuProvider.closeMenu();
    locator<CustomNavigationService>().navigationTo( routeName );
  }
 
  BoxDecoration boxDecoration(){
    return BoxDecoration(
      gradient: LinearGradient(colors: [
        Color( 0xff092044 ),
        Color( 0xff092030 ),
      ]),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10
        )
      ]
    ) ;   
  }

}