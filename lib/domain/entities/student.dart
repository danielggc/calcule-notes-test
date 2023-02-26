 import 'package:calculate_note/domain/entities/enum_entities.dart';

class Student{
    Student({ required this.name, required EnumListNote enumListNote, required EnumSubjects enumSubjects }){

      this.notes[enumSubjects] = enumListNote; 
    }
    String name;
    Map<EnumSubjects,EnumListNote> notes = new Map();
 }