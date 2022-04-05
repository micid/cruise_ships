import 'package:json_annotation/json_annotation.dart';

part 'ship_facts.g.dart';

@JsonSerializable()
class ShipFacts {
  String passengerCapacity;
  String crew;
  String inauguralDate;

  ShipFacts({
    required this.passengerCapacity,
    required this.crew,
    required this.inauguralDate,
  });

  factory ShipFacts.fromJson(Map<String, dynamic> json) =>
      _$ShipFactsFromJson(json);
  Map<String, dynamic> toJson() => _$ShipFactsToJson(this);
}
