import 'package:cruise_ships/model/ship.dart';
import 'package:cruise_ships/network/client.dart';
import 'package:cruise_ships/network/data/network_exception.dart';
import 'package:cruise_ships/state/result_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShipCubit extends Cubit<ResultState<Ship>> {
  final Client client;

  ShipCubit({required this.client}) : super(const Idle());

  getShip(String name) async {
    emit(const ResultState.loading());
    client.getShipData(name: name).then((value) {
      value.when(success: (Ship ship) {
        emit(ResultState.data(data: ship));
      }, failure: (NetworkException error) {
        emit(ResultState.error(error: error));
      });
    });
  }
}
