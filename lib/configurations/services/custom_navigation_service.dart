import 'package:flutter/cupertino.dart';

class CustomNavigationService {

  
  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
  
  Future navigationTo ( String routeName ){
    return  navigatorKey.currentState!.pushNamed( routeName  );
  }
  
   replaceTo( String routeName ){
    return  navigatorKey.currentState!.pushReplacementNamed( routeName  );
  }
  

}