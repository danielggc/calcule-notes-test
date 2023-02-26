import 'package:get_it/get_it.dart';
import 'package:calculate_note/configurations/services/custom_navigation_service.dart';


final   locator = GetIt.instance;




void setupLocator() {
  locator.registerSingleton<CustomNavigationService>(CustomNavigationService());

}