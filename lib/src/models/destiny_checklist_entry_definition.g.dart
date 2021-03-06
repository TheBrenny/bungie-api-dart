// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_checklist_entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyChecklistEntryDefinition _$DestinyChecklistEntryDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyChecklistEntryDefinition()
    ..hash = json['hash'] as int
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..destinationHash = json['destinationHash'] as int
    ..locationHash = json['locationHash'] as int
    ..bubbleHash = json['bubbleHash'] as int
    ..activityHash = json['activityHash'] as int
    ..itemHash = json['itemHash'] as int
    ..vendorHash = json['vendorHash'] as int
    ..vendorInteractionIndex = json['vendorInteractionIndex'] as int
    ..scope = _$enumDecodeNullable(_$DestinyScopeEnumMap, json['scope'],
        unknownValue: DestinyScope.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$DestinyChecklistEntryDefinitionToJson(
        DestinyChecklistEntryDefinition instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'displayProperties': instance.displayProperties,
      'destinationHash': instance.destinationHash,
      'locationHash': instance.locationHash,
      'bubbleHash': instance.bubbleHash,
      'activityHash': instance.activityHash,
      'itemHash': instance.itemHash,
      'vendorHash': instance.vendorHash,
      'vendorInteractionIndex': instance.vendorInteractionIndex,
      'scope': _$DestinyScopeEnumMap[instance.scope],
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

const _$DestinyScopeEnumMap = {
  DestinyScope.Profile: 0,
  DestinyScope.Character: 1,
  DestinyScope.ProtectedInvalidEnumValue: 999999999,
};
