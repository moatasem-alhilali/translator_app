part of 'home_bloc.dart';

@immutable
class BaseState {
  final bool isDark;
  const BaseState({this.isDark = false});
}
