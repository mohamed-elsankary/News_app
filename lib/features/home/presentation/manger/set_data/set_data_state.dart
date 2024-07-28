part of 'set_data_cubit.dart';

@immutable
sealed class SetDataState {}

final class SetDataInitial extends SetDataState {}

final class SetDataSuccess extends SetDataState {
  final bool isDark;

  SetDataSuccess(this.isDark);
}
