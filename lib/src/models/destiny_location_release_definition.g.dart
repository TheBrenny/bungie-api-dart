// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_location_release_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyLocationReleaseDefinition _$DestinyLocationReleaseDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyLocationReleaseDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..smallTransparentIcon = json['smallTransparentIcon'] as String
    ..mapIcon = json['mapIcon'] as String
    ..largeTransparentIcon = json['largeTransparentIcon'] as String
    ..spawnPoint = json['spawnPoint'] as int
    ..destinationHash = json['destinationHash'] as int
    ..activityHash = json['activityHash'] as int
    ..activityGraphHash = json['activityGraphHash'] as int
    ..activityGraphNodeHash = json['activityGraphNodeHash'] as int
    ..activityBubbleName = json['activityBubbleName'] as int
    ..activityPathBundle = json['activityPathBundle'] as int
    ..activityPathDestination = json['activityPathDestination'] as int
    ..navPointType = _$enumDecodeNullable(
        _$DestinyActivityNavPointTypeEnumMap, json['navPointType'],
        unknownValue: DestinyActivityNavPointType.ProtectedInvalidEnumValue)
    ..worldPosition =
        (json['worldPosition'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic> _$DestinyLocationReleaseDefinitionToJson(
        DestinyLocationReleaseDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'smallTransparentIcon': instance.smallTransparentIcon,
      'mapIcon': instance.mapIcon,
      'largeTransparentIcon': instance.largeTransparentIcon,
      'spawnPoint': instance.spawnPoint,
      'destinationHash': instance.destinationHash,
      'activityHash': instance.activityHash,
      'activityGraphHash': instance.activityGraphHash,
      'activityGraphNodeHash': instance.activityGraphNodeHash,
      'activityBubbleName': instance.activityBubbleName,
      'activityPathBundle': instance.activityPathBundle,
      'activityPathDestination': instance.activityPathDestination,
      'navPointType':
          _$DestinyActivityNavPointTypeEnumMap[instance.navPointType],
      'worldPosition': instance.worldPosition,
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

const _$DestinyActivityNavPointTypeEnumMap = {
  DestinyActivityNavPointType.Inactive: 0,
  DestinyActivityNavPointType.PrimaryObjective: 1,
  DestinyActivityNavPointType.SecondaryObjective: 2,
  DestinyActivityNavPointType.TravelObjective: 3,
  DestinyActivityNavPointType.PublicEventObjective: 4,
  DestinyActivityNavPointType.AmmoCache: 5,
  DestinyActivityNavPointType.PointTypeFlag: 6,
  DestinyActivityNavPointType.CapturePoint: 7,
  DestinyActivityNavPointType.DefensiveEncounter: 8,
  DestinyActivityNavPointType.GhostInteraction: 9,
  DestinyActivityNavPointType.KillAi: 10,
  DestinyActivityNavPointType.QuestItem: 11,
  DestinyActivityNavPointType.PatrolMission: 12,
  DestinyActivityNavPointType.Incoming: 13,
  DestinyActivityNavPointType.ArenaObjective: 14,
  DestinyActivityNavPointType.AutomationHint: 15,
  DestinyActivityNavPointType.TrackedQuest: 16,
  DestinyActivityNavPointType.ProtectedInvalidEnumValue: 999999999,
};
