import 'package:calculate_note/domain/entities/enum_entities.dart';
import 'package:calculate_note/domain/entities/student.dart';
import 'package:flutter/cupertino.dart';

class DataStudentProvider extends ChangeNotifier{


 
  List<Student>  students = [];
  
  List<Student>  get listStudents => this.students;

  EnumListNote? calculateIntNoteToEnumNote( int data ){
    if( data >= 19 ) return EnumListNote.A;
    else if( data >= 16 && data < 19 ) return EnumListNote.B;
    else if( data >= 13 && data < 16 ) return EnumListNote.C;
    else if( data >= 10 && data < 13 ) return EnumListNote.D;
    else if( data >= 1 && data < 10 )  return EnumListNote.E;
    return null;
  }

  bool addNoteToStudent( String name, int note , EnumSubjects subjects ) {
    
    EnumListNote ?  noteEnum = calculateIntNoteToEnumNote( note );
    if(   noteEnum != null ){
      if( students != null){
        bool state = false;
        
        students.forEach( (e){

          if(  e.name == name ){
              e.notes[subjects] = noteEnum ;
              state = true;
          }
          });

          if( state == false )  {
            students.add( Student(name: name, enumListNote: noteEnum, enumSubjects: subjects));
          }
          students.forEach((e) => print(" \n"+e.name +"  " + e.notes.toString() ));


        return true;
      }
      else{
        students = [ Student(name: name, enumListNote: noteEnum, enumSubjects: subjects )];
        students.map((e) => print(e.name));
      }
    }

    return false;
  }



}