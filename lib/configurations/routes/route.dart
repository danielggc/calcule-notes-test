
import 'package:calculate_note/configurations/routes/handlers/no_page_found_handler.dart';
import 'package:calculate_note/configurations/routes/handlers/admin_handlers.dart';
import 'package:fluro/fluro.dart';

class FluroRouters  {

  static final FluroRouter router =  new FluroRouter();


  static String  calculate_note      = '/calculate/note';
  static String  student_add = '/student/add';
  static String  student_add_note= '/student/add/note';
  static void configureRoutes (){
    router.define( calculate_note , handler: AdminHandlers.calculateNote);
    router.define( student_add, handler: AdminHandlers.newStudent );
    router.define( student_add_note, handler:  AdminHandlers.addNoteToStudent);
    router.notFoundHandler = NoPageFoundHandler.noPageFound;    

  }

} 