// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneDefinition _$DestinyMilestoneDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyMilestoneDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..displayPreference = _$enumDecodeNullable(
        _$DestinyMilestoneDisplayPreferenceEnumMap, json['displayPreference'],
        unknownValue:
            DestinyMilestoneDisplayPreference.ProtectedInvalidEnumValue)
    ..image = json['image'] as String
    ..milestoneType = _$enumDecodeNullable(
        _$DestinyMilestoneTypeEnumMap, json['milestoneType'],
        unknownValue: DestinyMilestoneType.ProtectedInvalidEnumValue)
    ..recruitable = json['recruitable'] as bool
    ..friendlyName = json['friendlyName'] as String
    ..showInExplorer = json['showInExplorer'] as bool
    ..showInMilestones = json['showInMilestones'] as bool
    ..explorePrioritizesActivityImage =
        json['explorePrioritizesActivityImage'] as bool
    ..hasPredictableDates = json['hasPredictableDates'] as bool
    ..quests = (json['quests'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyMilestoneQuestDefinition.fromJson(
                  e as Map<String, dynamic>)),
    )
    ..rewards = (json['rewards'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyMilestoneRewardCategoryDefinition.fromJson(
                  e as Map<String, dynamic>)),
    )
    ..vendorsDisplayTitle = json['vendorsDisplayTitle'] as String
    ..vendors = (json['vendors'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyMilestoneVendorDefinition.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..values = (json['values'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyMilestoneValueDefinition.fromJson(
                  e as Map<String, dynamic>)),
    )
    ..isInGameMilestone = json['isInGameMilestone'] as bool
    ..activities = (json['activities'] as List)?.map((e) => e == null ? null : DestinyMilestoneChallengeActivityDefinition.fromJson(e as Map<String, dynamic>))?.toList()
    ..defaultOrder = json['defaultOrder'] as int
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyMilestoneDefinitionToJson(
        DestinyMilestoneDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'displayPreference': _$DestinyMilestoneDisplayPreferenceEnumMap[
          instance.displayPreference],
      'image': instance.image,
      'milestoneType': _$DestinyMilestoneTypeEnumMap[instance.milestoneType],
      'recruitable': instance.recruitable,
      'friendlyName': instance.friendlyName,
      'showInExplorer': instance.showInExplorer,
      'showInMilestones': instance.showInMilestones,
      'explorePrioritizesActivityImage':
          instance.explorePrioritizesActivityImage,
      'hasPredictableDates': instance.hasPredictableDates,
      'quests': instance.quests,
      'rewards': instance.rewards,
      'vendorsDisplayTitle': instance.vendorsDisplayTitle,
      'vendors': instance.vendors,
      'values': instance.values,
      'isInGameMilestone': instance.isInGameMilestone,
      'activities': instance.activities,
      'defaultOrder': instance.defaultOrder,
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

const _$DestinyMilestoneDisplayPreferenceEnumMap = {
  DestinyMilestoneDisplayPreference.MilestoneDefinition: 0,
  DestinyMilestoneDisplayPreference.CurrentQuestSteps: 1,
  DestinyMilestoneDisplayPreference.CurrentActivityChallenges: 2,
  DestinyMilestoneDisplayPreference.ProtectedInvalidEnumValue: 999999999,
};

const _$DestinyMilestoneTypeEnumMap = {
  DestinyMilestoneType.Unknown: 0,
  DestinyMilestoneType.Tutorial: 1,
  DestinyMilestoneType.OneTime: 2,
  DestinyMilestoneType.Weekly: 3,
  DestinyMilestoneType.Daily: 4,
  DestinyMilestoneType.Special: 5,
  DestinyMilestoneType.ProtectedInvalidEnumValue: 999999999,
};
