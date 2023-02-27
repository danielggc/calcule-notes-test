


import 'package:calculate_note/configurations/services/locator.dart';
import 'package:calculate_note/configurations/services/custom_navigation_service.dart';
import 'package:calculate_note/configurations/routes/route.dart';



import 'package:calculate_note/commons/dictionaries/error_message_dictionary.dart';
import 'package:calculate_note/commons/dictionaries/student_options_dictionary.dart';


import 'package:calculate_note/commons/widgets/molecules/custom_inputs.dart';
import 'package:calculate_note/moudoles/operations_student/controllers/controller_operationt_student.dart';
import 'package:calculate_note/moudoles/operations_student/providers/register_form_providers.dart';
import 'package:calculate_note/moudoles/operations_student/widgets/atoms/custom_outlined.dart';
import 'package:calculate_note/moudoles/operations_student/widgets/atoms/link_text.dart';


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CalculatePerfectNumber extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    final  initNumController = new  TextEditingController();
    final  limitNumController = new TextEditingController();
    // TODO: implement build
    return ChangeNotifierProvider(create:  ( _ ) => RegisterFormProviders() ,
    child: Builder(builder: ( new_context ) {
    final registerFormProviders  = Provider.of<RegisterFormProviders>( new_context, listen: true );
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
                                controller: initNumController,
                                validator: ((value) {
                                  if( value == null || value.isEmpty) return ErrorMessageDictionary.validation_perfect_num_null;
                                  return null;
                                        
                                }),
                                style: TextStyle( color: Colors.white ),
                                decoration: CustomInput.buildInputDecorationLogin(
                                hint: StudentOptionsDictionary.text_form_init_perfect ,
                                label: StudentOptionsDictionary.text_form_init_perfect_label,
                                icon: Icons.numbers_outlined,
                                ) ,
                              ),
                              
                        TextFormField(
                                keyboardType: TextInputType.number,
                                controller: limitNumController ,
                                validator: ((value) {
                                  if( value == null || value.isEmpty) return ErrorMessageDictionary.validation_perfect_num_null;
                                  return null;
                                        
                                }),
                                style: TextStyle( color: Colors.white ),
                                decoration: CustomInput.buildInputDecorationLogin(
                                hint: StudentOptionsDictionary.text_form_limit_num ,
                                label: StudentOptionsDictionary.text_form_limit_num_label,
                                icon: Icons.numbers,
                                ) ,
                              ),

                        SizedBox(height: 10,),
                        ButtonOutLined(onPressed: () {
                          if( registerFormProviders.validateForm() ) {
                            
                             final data = ControllerOperaiontStudent().calculetePercfecNum( int.parse( initNumController.text ), int.parse(  limitNumController.text ) );
                             registerFormProviders.update(data);
                             print(data);

                          } 
                        },  text: StudentOptionsDictionary.text_button_calculete, isfilled:  false,),

                        SizedBox(height: 20,),
                        LinkText( nameLink:  StudentOptionsDictionary.delete_data_button , onPressed: (){
                        },),

                        SizedBox(height: 10,),
                        (registerFormProviders.listPerfectNum().isEmpty) 
                          ? Container() 
                          :  Text( " result  = " + registerFormProviders.listPerfectNum().toString()   ,style: GoogleFonts.abel(fontSize: 20,color: Colors.white), ),
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
