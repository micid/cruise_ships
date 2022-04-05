// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ship_facts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShipFacts _$ShipFactsFromJson(Map<String, dynamic> json) => ShipFacts(
      passengerCapacity: json['passengerCapacity'] as String,
      crew: json['crew'] as String,
      inauguralDate: json['inauguralDate'] as String,
    );

Map<String, dynamic> _$ShipFactsToJson(ShipFacts instance) => <String, dynamic>{
      'passengerCapacity': instance.passengerCapacity,
      'crew': instance.crew,
      'inauguralDate': instance.inauguralDate,
    };
