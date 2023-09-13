import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:meta/meta.dart';
import '/core/utils/constant.dart';

part 'home_event.dart';
part 'home_state.dart';

class BaseBloc extends Bloc<BaseEvent, BaseState> {
  BaseBloc() : super(const BaseState()) {
    on<CheckInternetBaseBloc>(checkInternet);
    on<SetStateBaseBlocEvent>((event, emit) {
      emit(const BaseState());
    });
  

    on<ChangeScreenEvent>((event, emit) {
      // currentPage = event.current;
      emit(const BaseState());
    });
  }
  // late StreamSubscription _subscription;
  FutureOr<void> checkInternet(event, emit) async {
    try {
      Connectivity connectivity = Connectivity();
      final res = await connectivity.checkConnectivity();

      if (res == ConnectivityResult.none) {
        IS_CONNECTED = false;
        emit(const BaseState());
      }

      connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
        switch (result) {
          case ConnectivityResult.bluetooth:
            IS_CONNECTED = true;
            emit(const BaseState());
            break;
          case ConnectivityResult.wifi:
            IS_CONNECTED = true;
            emit(const BaseState());
            break;
          case ConnectivityResult.ethernet:
            IS_CONNECTED = true;
            emit(const BaseState());
            break;
          case ConnectivityResult.mobile:
            IS_CONNECTED = true;
            emit(const BaseState());
            break;
          case ConnectivityResult.none:
            IS_CONNECTED = false;
            emit(const BaseState());
            break;
          case ConnectivityResult.vpn:
            IS_CONNECTED = true;
            emit(const BaseState());
            break;
          case ConnectivityResult.other:
            IS_CONNECTED = false;
            emit(const BaseState());
            break;
        }
      });
    } on Exception catch (e) {
      // TODO
      print(e);
    }
  }
}
