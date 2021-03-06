// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_graph_node_featuring_state_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityGraphNodeFeaturingStateDefinition
    _$DestinyActivityGraphNodeFeaturingStateDefinitionFromJson(
        Map<String, dynamic> json) {
  return DestinyActivityGraphNodeFeaturingStateDefinition()
    ..highlightType = _$enumDecodeNullable(
        _$ActivityGraphNodeHighlightTypeEnumMap, json['highlightType'],
        unknownValue: ActivityGraphNodeHighlightType.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$DestinyActivityGraphNodeFeaturingStateDefinitionToJson(
        DestinyActivityGraphNodeFeaturingStateDefinition instance) =>
    <String, dynamic>{
      'highlightType':
          _$ActivityGraphNodeHighlightTypeEnumMap[instance.highlightType],
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

const _$ActivityGraphNodeHighlightTypeEnumMap = {
  ActivityGraphNodeHighlightType.None: 0,
  ActivityGraphNodeHighlightType.Normal: 1,
  ActivityGraphNodeHighlightType.Hyper: 2,
  ActivityGraphNodeHighlightType.Comet: 3,
  ActivityGraphNodeHighlightType.RiseOfIron: 4,
  ActivityGraphNodeHighlightType.ProtectedInvalidEnumValue: 999999999,
};
