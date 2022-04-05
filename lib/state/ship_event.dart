import 'package:freezed_annotation/freezed_annotation.dart';

part 'ship_event.freezed.dart';

@freezed
abstract class ShipEvent with _$ShipEvent {
  const factory ShipEvent.getShip({required String name}) = GetShip;
}
