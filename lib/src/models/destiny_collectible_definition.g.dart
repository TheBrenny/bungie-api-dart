// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_collectible_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCollectibleDefinition _$DestinyCollectibleDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyCollectibleDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..scope = _$enumDecodeNullable(_$DestinyScopeEnumMap, json['scope'],
        unknownValue: DestinyScope.ProtectedInvalidEnumValue)
    ..sourceString = json['sourceString'] as String
    ..sourceHash = json['sourceHash'] as int
    ..itemHash = json['itemHash'] as int
    ..acquisitionInfo = json['acquisitionInfo'] == null
        ? null
        : DestinyCollectibleAcquisitionBlock.fromJson(
            json['acquisitionInfo'] as Map<String, dynamic>)
    ..stateInfo = json['stateInfo'] == null
        ? null
        : DestinyCollectibleStateBlock.fromJson(
            json['stateInfo'] as Map<String, dynamic>)
    ..presentationInfo = json['presentationInfo'] == null
        ? null
        : DestinyPresentationChildBlock.fromJson(
            json['presentationInfo'] as Map<String, dynamic>)
    ..presentationNodeType = _$enumDecodeNullable(
        _$DestinyPresentationNodeTypeEnumMap, json['presentationNodeType'],
        unknownValue: DestinyPresentationNodeType.ProtectedInvalidEnumValue)
    ..traitIds = (json['traitIds'] as List)?.map((e) => e as String)?.toList()
    ..traitHashes =
        (json['traitHashes'] as List)?.map((e) => e as int)?.toList()
    ..parentNodeHashes =
        (json['parentNodeHashes'] as List)?.map((e) => e as int)?.toList()
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyCollectibleDefinitionToJson(
        DestinyCollectibleDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'scope': _$DestinyScopeEnumMap[instance.scope],
      'sourceString': instance.sourceString,
      'sourceHash': instance.sourceHash,
      'itemHash': instance.itemHash,
      'acquisitionInfo': instance.acquisitionInfo,
      'stateInfo': instance.stateInfo,
      'presentationInfo': instance.presentationInfo,
      'presentationNodeType':
          _$DestinyPresentationNodeTypeEnumMap[instance.presentationNodeType],
      'traitIds': instance.traitIds,
      'traitHashes': instance.traitHashes,
      'parentNodeHashes': instance.parentNodeHashes,
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

const _$DestinyScopeEnumMap = {
  DestinyScope.Profile: 0,
  DestinyScope.Character: 1,
  DestinyScope.ProtectedInvalidEnumValue: 999999999,
};

const _$DestinyPresentationNodeTypeEnumMap = {
  DestinyPresentationNodeType.Default: 0,
  DestinyPresentationNodeType.Category: 1,
  DestinyPresentationNodeType.Collectibles: 2,
  DestinyPresentationNodeType.Records: 3,
  DestinyPresentationNodeType.Metric: 4,
  DestinyPresentationNodeType.ProtectedInvalidEnumValue: 999999999,
};
