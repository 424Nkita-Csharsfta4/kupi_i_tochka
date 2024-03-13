import 'package:bloc/bloc.dart';

// События для Cubit
abstract class LoaderEvent {}

class ShowLoader extends LoaderEvent {}

class HideLoader extends LoaderEvent {}

// Состояния для Cubit
abstract class LoaderState {}

class LoaderHidden extends LoaderState {}

class LoaderVisible extends LoaderState {}

// Cubit для управления состоянием загрузки
class LoaderCubit extends Cubit<LoaderState> {
  LoaderCubit() : super(LoaderHidden());

  void showLoader() => emit(LoaderVisible());

  void hideLoader() => emit(LoaderHidden());
}
