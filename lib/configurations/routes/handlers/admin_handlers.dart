import 'package:calculate_note/moudoles/add_note_to_student/widgets/templates/add_note_to_student.dart';
import 'package:calculate_note/moudoles/calculate_note/widgets/templates/calculate_note.dart';
import 'package:calculate_note/moudoles/calculate_note/widgets/templates/views_student_notes.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';


class AdminHandlers {
  static Handler  calculateNote = Handler(handlerFunc: ((context, parameters) {
    return CalculateNote();
  }));


  static Handler newStudent = Handler(handlerFunc: ((context, parameters) {
    return ViewsStudentsNotes();
  }));

  static Handler addNoteToStudent = Handler(handlerFunc: ((context, parameters) {
    return AddNoteToStudent();
  }));

}