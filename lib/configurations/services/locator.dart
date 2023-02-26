import 'package:get_it/get_it.dart';
import 'package:proyect_aplication/services/custom_navigation_service.dart';


final   locator = GetIt.instance;




void setupLocator() {
  locator.registerSingleton<CustomNavigationService>(CustomNavigationService());

}