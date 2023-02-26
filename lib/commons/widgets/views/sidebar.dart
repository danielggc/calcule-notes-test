

import 'package:calculate_note/commons/widgets/organisms/custom_menu_item.dart';

import 'package:calculate_note/commons/widgets/atoms/side_menu_logo.dart';
import 'package:calculate_note/commons/widgets/atoms/text_separator.dart';
import 'package:calculate_note/commons/provider/side_menu_provider.dart';


import 'package:calculate_note/configurations/services/custom_navigation_service.dart';
import 'package:calculate_note/configurations/services/locator.dart';
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

          TextSeparator(text: 'main'),
          
          CustomMenuItem( 
            text:'calcular nota',
            isActive: providerSideMenu.routeState == FluroRouters.calculate_note ,
            iconData: Icons.compass_calibration_outlined,
            onPressed:  ( ) =>  onPressed( FluroRouters.calculate_note ),),


          SizedBox(height: 30 ,),

          TextSeparator(text: 'exit'),
               
          CustomMenuItem( 
            text:'lagout',
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