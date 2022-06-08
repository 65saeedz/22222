part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ChangeThemeEvent extends ThemeEvent {
  final int rndnum;
  const ChangeThemeEvent({
    required this.rndnum,
  });
  @override
  List<Object> get props => [rndnum];
}
