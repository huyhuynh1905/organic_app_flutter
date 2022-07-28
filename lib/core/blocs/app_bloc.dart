import 'package:organic_bloc/core/blocs/app_event.dart';
import 'package:organic_bloc/core/blocs/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBloc extends Bloc<AppEvent,AppState>{
  AppBloc() : super(AppState.init()){
    on<InitAppEvent>(_init());
  }


  _init() async {
    AppState.init();
  }

}