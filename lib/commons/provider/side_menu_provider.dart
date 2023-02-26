import 'package:flutter/cupertino.dart';

class SideMenuProvider  extends ChangeNotifier{
  

  String _routeState = "" ;

  String get  routeState  =>   this._routeState;

  void reloadroute( routeName ){
    print( routeName );
    this._routeState = routeName;
    Future.delayed(Duration(microseconds: 100),(){
      notifyListeners();
    });
  }

  static late AnimationController menuController;
  static bool isOpen = false;
  
  static Animation<double> movement = Tween<double>( begin:  -300 , end : 0 )
  .animate( CurvedAnimation(parent :menuController, curve: Curves.easeInOut ));
  
  static Animation<double> opacity = Tween<double>( begin:  0 , end :  1 )
  .animate( CurvedAnimation(parent :menuController, curve: Curves.easeInOut ));

  static void openMenu(){
    isOpen = true;
    menuController.forward();
  }
  static void closeMenu(){
    isOpen = false;
    menuController.reverse();
  }
  
  

}