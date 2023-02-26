
import 'package:fluro/fluro.dart';
import 'package:proyect_aplication/ui/layouts/auth/auth_layout.dart';
import 'package:proyect_aplication/ui/views/view404.dart';

class NoPageFoundHandler {
  static  Handler noPageFound = Handler(handlerFunc: ((context, parameters) {
    return Views404();
  }));
}