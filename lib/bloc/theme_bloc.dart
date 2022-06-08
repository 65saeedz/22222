import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial()) {
    on<ChangeThemeEvent>((event, emit) {
      if (event.rndnum.isEven) {
        print('${event.rndnum} is even');
        emit(state.copyWith(status: ThemeStatus.light));
      } else {
        print('${event.rndnum} is odd');
        emit(state.copyWith(status: ThemeStatus.dark));
      }
    });
  }
}
