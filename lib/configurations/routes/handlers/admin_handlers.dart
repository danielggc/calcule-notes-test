import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'package:proyect_aplication/providers/auth_provider.dart';
import 'package:proyect_aplication/ui/views/dach_board_view.dart';
import 'package:proyect_aplication/ui/views/login.dart';
import 'package:proyect_aplication/ui/views/register_view.dart';

class AdminHandlers {
  static Handler  login = Handler(handlerFunc: ((context, parameters) {
    final authProvider = Provider.of<AuthProvider>(context!);
    if( authProvider.stateLogin == StateLogin.notAuthentication )
      {
        return  LoginView() ;
      }
    else{
      return DachBoardView();
    }
  }));


    static Handler register= Handler(handlerFunc: ((context, parameters) {
      final authProvider = Provider.of<AuthProvider>(context!);
      if( authProvider.stateLogin == StateLogin.notAuthentication )
        {
          return  RegisterView() ;
        }
      else{
        return  RegisterView(  );
      }
  }));
}