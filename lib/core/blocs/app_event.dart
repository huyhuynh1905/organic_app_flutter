import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class AppEvent extends Equatable{

}

class InitAppEvent extends AppEvent{
  final BuildContext context;
  InitAppEvent(this.context);

  @override
  List<Object?> get props => [];

}