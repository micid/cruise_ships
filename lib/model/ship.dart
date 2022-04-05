import 'package:json_annotation/json_annotation.dart';

import 'ship_facts.dart';

part 'ship.g.dart';

@JsonSerializable()
class Ship {
  String shipName;
  ShipFacts shipFacts;

  Ship({
    required this.shipName,
    required this.shipFacts,
  });

  factory Ship.fromJson(Map<String, dynamic> json) => _$ShipFromJson(json);
  Map<String, dynamic> toJson() => _$ShipToJson(this);
}
