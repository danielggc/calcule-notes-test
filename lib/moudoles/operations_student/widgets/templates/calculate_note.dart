

import 'package:calculate_note/commons/dictionaries/error_message_dictionary.dart';
import 'package:calculate_note/commons/dictionaries/student_options_dictionary.dart';

import 'package:calculate_note/commons/widgets/molecules/custom_inputs.dart';
import 'package:calculate_note/domain/entities/enum_entities.dart';
import 'package:calculate_note/moudoles/operations_student/providers/data_student_provider.dart';
import 'package:calculate_note/moudoles/operations_student/providers/register_form_providers.dart';
import 'package:calculate_note/moudoles/operations_student/widgets/atoms/custom_outlined.dart';
import 'package:calculate_note/moudoles/operations_student/widgets/atoms/link_text.dart';
import 'package:calculate_note/moudoles/operations_student/widgets/atoms/custom_outlined.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


class CalculateNote extends StatefulWidget{
  _CalculateNote createState() => _CalculateNote();
}
class _CalculateNote extends State<CalculateNote> {

  EnumSubjects dropdownSubjects = EnumSubjects.calculo ;   
@override
  Widget build(BuildContext context) {
    final  nameController = new  TextEditingController();
    final  noteController = new TextEditingController();
        
    // TODO: implement build
    return ChangeNotifierProvider(create:  ( _ ) => RegisterFormProviders() ,
    child: Builder(builder: ( new_context ) {
    final registerFormProviders  = Provider.of<RegisterFormProviders>( new_context, listen: false );
    final dataStudentProviders  = Provider.of<DataStudentProvider>( context, listen: false );
    return Scaffold(
              body: Container(
                color : Colors.black,
                child:
                Form(
                  autovalidateMode: AutovalidateMode.always,
                  key: registerFormProviders.formKey,
                  child: Container(
                    margin: EdgeInsets.all(50),
                    child: 
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        TextFormField(
                                controller: nameController,
                                validator: ((value) {
                                  if( value == null || value.isEmpty) return ErrorMessageDictionary.validation_student_name;
                                  if( value.length < 6 ) return  ErrorMessageDictionary.validation_student_name_not_valid;
                                  return null;
                                        
                                }),
                                style: TextStyle( color: Colors.white ),
                                decoration: CustomInput.buildInputDecorationLogin(
                                hint: StudentOptionsDictionary.text_form_name_student ,
                                label: StudentOptionsDictionary.text_form_name_label,
                                icon: Icons.person_pin_sharp,
                                ) ,
                              ),
                        TextFormField(
                                keyboardType: TextInputType.number,
                                controller: noteController ,
                                validator: ((value) {
                                  if( value == null || value.isEmpty) return ErrorMessageDictionary.validation_note_input;
                                  if( value.length >2 ) return ErrorMessageDictionary.validation_note_input_invalid;
                                  if( int.parse( value ) > 20 ) return ErrorMessageDictionary.validation_note_input_invalid;
                                  return null;
                                        
                                }),
                                style: TextStyle( color: Colors.white ),
                                decoration: CustomInput.buildInputDecorationLogin(
                                hint: StudentOptionsDictionary.text_form_nota_label ,
                                label: StudentOptionsDictionary.text_form_nota_student,
                                icon: Icons.abc_outlined,
                                ) ,
                              ),
                              
                        DropdownButton(
                          dropdownColor: Colors.blue,
                          value: dropdownSubjects,                
                          icon: const Icon(Icons.keyboard_arrow_down),    
                          items: EnumSubjects.values.map((EnumSubjects items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items.name,style: GoogleFonts.abel(color: Colors.white),),
                            );
                          }).toList(),
                          onChanged: (EnumSubjects? newValue) { 
                            setState(() {
                              dropdownSubjects = newValue!;
                            });
                          },
                        ),

                        SizedBox(height: 10,),
                        ButtonOutLined(onPressed: () {
                          if( registerFormProviders.validateForm() ) {
                            dataStudentProviders.addNoteToStudent( nameController.text , int.parse( noteController.text ), dropdownSubjects);
                          } 
                        },  text: StudentOptionsDictionary.text_button_save, isfilled:  false,),

                        SizedBox(height: 20,),
                        LinkText( nameLink:  StudentOptionsDictionary.delete_data_button , onPressed: (){
                        },)
                    ],   
                  )
                )
              )
            )
          );
        }
      )
    );
  }
}
