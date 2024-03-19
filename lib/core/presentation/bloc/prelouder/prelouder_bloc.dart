import 'package:flutter_bloc/flutter_bloc.dart';

// Events for Bloc
enum LoaderEvent { showLoader, hideLoader }

// States for Bloc
enum LoaderState { hidden, visible }

// Bloc to manage loading state
class LoaderBloc extends Bloc<LoaderEvent, LoaderState> {
  LoaderBloc() : super(LoaderState.hidden);

  Stream<LoaderState> mapEventToState(LoaderEvent event) async* {
    if (event == LoaderEvent.showLoader) {
      yield LoaderState.visible;
    } else if (event == LoaderEvent.hideLoader) {
      yield LoaderState.hidden;
    }
  }
}
