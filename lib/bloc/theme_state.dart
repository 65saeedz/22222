part of 'theme_bloc.dart';

enum ThemeStatus { light, dark }

class ThemeState extends Equatable {
  final ThemeStatus status;
  const ThemeState({
    required this.status,
  });

  factory ThemeState.initial() {
    return const ThemeState(status: ThemeStatus.light);
  }

  @override
  List<Object> get props => [status];

  @override
  String toString() => 'ThemeState(status: $status)';

  ThemeState copyWith({
    ThemeStatus? status,
  }) {
    return ThemeState(
      status: status ?? this.status,
    );
  }
}
