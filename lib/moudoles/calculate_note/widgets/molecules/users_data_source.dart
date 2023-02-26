import 'package:calculate_note/domain/entities/enum_entities.dart';
import 'package:calculate_note/domain/entities/student.dart';
import 'package:calculate_note/moudoles/calculate_note/providers/register_form_providers.dart';


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';


class UsersDataSource  extends DataTableSource{

  final List<Student> users;
  UsersDataSource( this.users   );
  DataRow? getRow(int idext, ){
      final user = users[idext];
      final image = Image(image:  AssetImage('no-image.jpg'), width:35, height:35 );
      final EnumListNote ? calculo = user.notes[EnumSubjects.calculo]  ;
      final EnumListNote ? filosofia= user.notes[EnumSubjects.filosofia]  ;
      final EnumListNote ? geometria = user.notes[EnumSubjects.geometria]  ;
      final EnumListNote ? historia = user.notes[EnumSubjects.historia]  ;

      return DataRow(cells: 
        [
  
          DataCell(Text(user.name)),
          DataCell(Text( calculo != null ?  calculo.name      : "null" )),
          DataCell(Text( filosofia != null ?  filosofia.name  : "null" )),
          DataCell(Text( geometria != null ?  geometria.name  : "null" )),
          DataCell(Text( historia != null ?  historia.name    : "null" )),
          
        ]
      );
  }
  @override
      // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;
    
  @override
      // TODO: implement rowCount
  int get rowCount => users.length;
    
  @override
      // TODO: implement selectedRowCount
  int get selectedRowCount =>0;



}