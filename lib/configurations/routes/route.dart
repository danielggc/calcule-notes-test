
import 'package:calculate_note/configurations/routes/handlers/no_page_found_handler.dart';
import 'package:calculate_note/configurations/routes/handlers/admin_handlers.dart';
import 'package:fluro/fluro.dart';

class FluroRouters  {

  static final FluroRouter router =  new FluroRouter();


  static String  calculate_note                 = '/calculate/note';
  static String  rivers_string                  = '/calculate/revers/String';  
  static String  calculate_perfect_number       = '/calculate/perfect/number';
  static String  student_views_notes            = '/student/views/notes';
  static String  student_add_note               = '/student/add/note';

  static void configureRoutes (){
    router.define( calculate_note , handler: AdminHandlers.calculateNoteHandler);
    router.define( rivers_string , handler: AdminHandlers.riversStringHandler );
    router.define( calculate_perfect_number , handler: AdminHandlers.calculetePercfecNumHandler);
    router.define( student_views_notes, handler: AdminHandlers.studentViewsNotesHandler );
    router.define( student_add_note, handler:  AdminHandlers.addNoteToStudentHandler);
    router.notFoundHandler = NoPageFoundHandler.noPageFound;    

  }

} 