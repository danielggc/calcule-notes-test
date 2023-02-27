 
 
import 'package:calculate_note/commons/dictionaries/student_options_dictionary.dart';

import 'package:calculate_note/configurations/labels/custom_labels.dart';
import 'package:calculate_note/moudoles/operations_student/providers/data_student_provider.dart';
import 'package:calculate_note/moudoles/operations_student/widgets/molecules/student_data_source.dart';



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewsStudentsNotes extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    final providerUSerList = Provider.of<DataStudentProvider>(context);
    final usersDataSource = new StudentDataSource( providerUSerList.listStudents );
    // TODO: implement build
    return Scaffold(
      body:
      Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Center(
              child: Text(StudentOptionsDictionary.table_title_customers , style: CustomLabel.h1,),
            ),
            SizedBox( height:  10 ,),

            PaginatedDataTable(
              columns: [
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Calculo')),
                DataColumn(label: Text('Geometria')),
                DataColumn(label: Text('Historia')),
                DataColumn(label: Text('Filosofia')),
              ], 
            source: usersDataSource )
          ]
        )
      )
    );
    
  }
}