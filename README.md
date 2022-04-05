# cruise_ships

A Flutter project showing Cruise Ships data.

## Libraries

Used `json_serializable` to generate json code for model classes.
Used `freezed` for generating Unions/Sealed classes for network and state classes.
Used `flutter_bloc` for state management.
Used `bloc_test` for testing the ShipCubit.

## Architecture details

Created a layer of abtraction on the network client so we could use a fake client for testing the ShipCubit.