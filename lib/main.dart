

import 'package:calculate_note/commons/provider/side_menu_provider.dart';
import 'package:calculate_note/commons/widgets/dash_board/dashBoard_layouts.dart';
import 'package:calculate_note/configurations/services/custom_navigation_service.dart';
import 'package:calculate_note/configurations/services/locator.dart';
import 'package:calculate_note/configurations/routes/route.dart';
import 'package:calculate_note/configurations/services/local_storage.dart';
import 'package:calculate_note/moudoles/calculate_note/providers/data_student_provider.dart';


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() async {
  setupLocator();
  FluroRouters.configureRoutes();
  await LocalStorage.configurePreferences();
  runApp( AppState() );
}



class AppState  extends StatelessWidget{
  const AppState({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        lazy: false,
        create:  (_) => SideMenuProvider()
      ),
      ChangeNotifierProvider(
        lazy: false,
        create:  (_) => DataStudentProvider()
      )
    ],child: MyApp(),);
  }
}

class MyApp extends StatelessWidget{
  
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
            debugShowCheckedModeBanner:false,
            title:'admin',
            initialRoute: FluroRouters.calculate_note,
            onGenerateRoute : FluroRouters.router.generator,
            navigatorKey:  locator<CustomNavigationService>().navigatorKey,
            builder: ( _ , child ){
                return DashBoardLayouts(child: child! );
                   
            }
          );

  }
}