// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_energy_type_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEnergyTypeDefinition _$DestinyEnergyTypeDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyEnergyTypeDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..transparentIconPath = json['transparentIconPath'] as String
    ..showIcon = json['showIcon'] as bool
    ..enumValue = _$enumDecodeNullable(
        _$DestinyEnergyTypeEnumMap, json['enumValue'],
        unknownValue: DestinyEnergyType.ProtectedInvalidEnumValue)
    ..capacityStatHash = json['capacityStatHash'] as int
    ..costStatHash = json['costStatHash'] as int
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyEnergyTypeDefinitionToJson(
        DestinyEnergyTypeDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'transparentIconPath': instance.transparentIconPath,
      'showIcon': instance.showIcon,
      'enumValue': _$DestinyEnergyTypeEnumMap[instance.enumValue],
      'capacityStatHash': instance.capacityStatHash,
      'costStatHash': instance.costStatHash,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$DestinyEnergyTypeEnumMap = {
  DestinyEnergyType.Any: 0,
  DestinyEnergyType.Arc: 1,
  DestinyEnergyType.Thermal: 2,
  DestinyEnergyType.Void: 3,
  DestinyEnergyType.Ghost: 4,
  DestinyEnergyType.Subclass: 5,
  DestinyEnergyType.ProtectedInvalidEnumValue: 999999999,
};
