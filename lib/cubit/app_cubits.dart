import 'package:bloc/bloc.dart';
import 'package:denai_app/cubit/app_cubit_state.dart';

class AppCubits extends Cubit<CubitState>{
  AppCubits(): super(InitialState()){
    emit(WelcomeState());
  }
  
}
