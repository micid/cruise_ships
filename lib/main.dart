import 'package:cruise_ships/network/client.dart';
import 'package:cruise_ships/state/ship_cubit.dart';
import 'package:cruise_ships/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const String baseUrl = 'https://www.ncl.com.mx/cms-service/cruise-ships/';
const int connectTimeout = 5000;
const int receiveTimeout = 3000;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ShipCubit>(
          create: (context) {
            return ShipCubit(
              client: ClientDio(
                baseUrl: baseUrl,
                connectTimeout: connectTimeout,
                receiveTimeout: receiveTimeout,
              ),
            );
          },
          child: const HomePage(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Cruise Ships'),
          ),
          body: const HomePage(),
        ),
      ),
    );
  }
}
