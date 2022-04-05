import 'package:cruise_ships/model/ship.dart';
import 'package:cruise_ships/network/data/network_exception.dart';
import 'package:cruise_ships/state/result_state.dart';
import 'package:cruise_ships/state/ship_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const String bullet = "\u2022 ";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buttonWidget(String label, String name) {
    return ButtonTheme(
      minWidth: 200.0,
      height: 80.0,
      child: ElevatedButton(
        onPressed: () {
          BlocProvider.of<ShipCubit>(context).getShip(name);
        },
        child: Text(label),
      ),
    );
  }

  Widget _withShip(Ship ship) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const Icon(Icons.directions_boat),
            title: Text(ship.shipName),
            subtitle: Text('Capacity: ${ship.shipFacts.passengerCapacity}'),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child: Text('$bullet Crew members: ${ship.shipFacts.crew}'),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child:
                Text('$bullet Inagurated in ${ship.shipFacts.inauguralDate}'),
          ),
        ],
      ),
    );
  }

  Widget _withError(NetworkException error) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.error),
        title: const Text('Error!'),
        subtitle: Text(NetworkException.getErrorMessage(error)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Wrap(children: <Widget>[
            _buttonWidget("SKY Cruise", 'SKY'),
            const SizedBox(width: 10),
            _buttonWidget("BLISS Cruise", 'BLISS'),
            const SizedBox(width: 10),
            _buttonWidget("ESCAPE Cruise", 'ESCAPE'),
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: BlocBuilder<ShipCubit, ResultState<Ship>>(
              builder: (context, state) {
                return state.when(idle: () {
                  return Container();
                }, loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }, data: (Ship ship) {
                  return _withShip(ship);
                }, error: (NetworkException error) {
                  return _withError(error);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
