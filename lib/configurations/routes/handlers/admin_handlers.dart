
import 'package:calculate_note/moudoles/add_note_to_student/widgets/templates/add_note_to_student.dart';
import 'package:calculate_note/moudoles/operations_student/widgets/templates/calculate_note.dart';
import 'package:calculate_note/moudoles/operations_student/widgets/templates/calculate_perfect_number.dart';
import 'package:calculate_note/moudoles/operations_student/widgets/templates/rivers_string.dart';
import 'package:calculate_note/moudoles/operations_student/widgets/templates/views_student_notes.dart';

import 'package:fluro/fluro.dart';


class AdminHandlers {

  static Handler  calculateNoteHandler = Handler(handlerFunc: ((context, parameters) {
    return CalculateNote();
  }));

  static Handler calculetePercfecNumHandler= Handler(handlerFunc: ((context, parameters) {
    return CalculatePerfectNumber();
  }));
  static Handler studentViewsNotesHandler = Handler(handlerFunc: ((context, parameters) {
    return ViewsStudentsNotes();
  }));
  static Handler riversStringHandler = Handler(handlerFunc: ((context, parameters) {
    return RiversString();
  }));

  static Handler addNoteToStudentHandler = Handler(handlerFunc: ((context, parameters) {
    return AddNoteToStudent();
  }));

}