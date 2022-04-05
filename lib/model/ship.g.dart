// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ship _$ShipFromJson(Map<String, dynamic> json) => Ship(
      shipName: json['shipName'] as String,
      shipFacts: ShipFacts.fromJson(json['shipFacts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShipToJson(Ship instance) => <String, dynamic>{
      'shipName': instance.shipName,
      'shipFacts': instance.shipFacts,
    };
