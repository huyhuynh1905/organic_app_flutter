import 'package:equatable/equatable.dart';

class AppState extends Equatable {
  const AppState();

  factory AppState.init(){
    return const AppState();
  }

  AppState copyWith() {
    return const AppState();
  }

  @override
  List<Object> get props => [];
}