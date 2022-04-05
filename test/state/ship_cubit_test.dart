import 'package:bloc_test/bloc_test.dart';
import 'package:cruise_ships/model/ship.dart';
import 'package:cruise_ships/model/ship_facts.dart';
import 'package:cruise_ships/network/client.dart';
import 'package:cruise_ships/network/data/api_result.dart';
import 'package:cruise_ships/network/data/network_exception.dart';
import 'package:cruise_ships/state/result_state.dart';
import 'package:cruise_ships/state/ship_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

Ship mockShip = Ship(
    shipName: 'Mock Ship',
    shipFacts:
        ShipFacts(passengerCapacity: '1', crew: '1', inauguralDate: '1'));

void main() {
  group('ShipCubit test', () {
    late ShipCubit shipCubit;
    ClientFake mockClient = ClientFake();

    setUp(() {
      shipCubit = ShipCubit(client: mockClient);
    });

    blocTest<ShipCubit, ResultState>(
        'emits [Loading, Data] for successful getShip',
        build: () => shipCubit,
        act: (cubit) {
          mockClient.mock(apiResult: ApiResult.success(data: mockShip));
          shipCubit.getShip('');
        },
        expect: () => [
              const ResultState<Ship>.loading(),
              ResultState.data(data: mockShip)
            ]);

    blocTest<ShipCubit, ResultState>(
        'emits [Loading, Error] for getShip with exception',
        build: () => shipCubit,
        act: (cubit) {
          mockClient.mock(
              apiResult: const ApiResult.failure(
                  error: NetworkException.noInternetConnection()));
          shipCubit.getShip('');
        },
        expect: () => [
              const ResultState<Ship>.loading(),
              const ResultState<Ship>.error(
                  error: NetworkException.noInternetConnection()),
            ]);

    tearDown(() {
      shipCubit.close();
    });
  });
}
