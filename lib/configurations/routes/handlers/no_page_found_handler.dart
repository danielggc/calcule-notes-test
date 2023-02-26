
import 'package:fluro/fluro.dart';
import 'package:calculate_note/commons/widgets/views/view404.dart';

class NoPageFoundHandler {
  static  Handler noPageFound = Handler(handlerFunc: ((context, parameters) {
    return Views404();
  }));
}