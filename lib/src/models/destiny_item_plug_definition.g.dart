// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_plug_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemPlugDefinition _$DestinyItemPlugDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyItemPlugDefinition()
    ..insertionRules = (json['insertionRules'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyPlugRuleDefinition.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..plugCategoryIdentifier = json['plugCategoryIdentifier'] as String
    ..plugCategoryHash = json['plugCategoryHash'] as int
    ..onActionRecreateSelf = json['onActionRecreateSelf'] as bool
    ..insertionMaterialRequirementHash =
        json['insertionMaterialRequirementHash'] as int
    ..previewItemOverrideHash = json['previewItemOverrideHash'] as int
    ..enabledMaterialRequirementHash =
        json['enabledMaterialRequirementHash'] as int
    ..enabledRules = (json['enabledRules'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyPlugRuleDefinition.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..uiPlugLabel = json['uiPlugLabel'] as String
    ..plugStyle = json['plugStyle'] == null
        ? null
        : PlugUiStyles.fromJson(json['plugStyle'] as int)
    ..plugAvailability = _$enumDecodeNullable(
        _$PlugAvailabilityModeEnumMap, json['plugAvailability'],
        unknownValue: PlugAvailabilityMode.ProtectedInvalidEnumValue)
    ..alternateUiPlugLabel = json['alternateUiPlugLabel'] as String
    ..alternatePlugStyle = json['alternatePlugStyle'] == null
        ? null
        : PlugUiStyles.fromJson(json['alternatePlugStyle'] as int)
    ..isDummyPlug = json['isDummyPlug'] as bool
    ..parentItemOverride = json['parentItemOverride'] == null
        ? null
        : DestinyParentItemOverride.fromJson(
            json['parentItemOverride'] as Map<String, dynamic>)
    ..energyCapacity = json['energyCapacity'] == null
        ? null
        : DestinyEnergyCapacityEntry.fromJson(
            json['energyCapacity'] as Map<String, dynamic>)
    ..energyCost = json['energyCost'] == null
        ? null
        : DestinyEnergyCostEntry.fromJson(
            json['energyCost'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DestinyItemPlugDefinitionToJson(
        DestinyItemPlugDefinition instance) =>
    <String, dynamic>{
      'insertionRules': instance.insertionRules,
      'plugCategoryIdentifier': instance.plugCategoryIdentifier,
      'plugCategoryHash': instance.plugCategoryHash,
      'onActionRecreateSelf': instance.onActionRecreateSelf,
      'insertionMaterialRequirementHash':
          instance.insertionMaterialRequirementHash,
      'previewItemOverrideHash': instance.previewItemOverrideHash,
      'enabledMaterialRequirementHash': instance.enabledMaterialRequirementHash,
      'enabledRules': instance.enabledRules,
      'uiPlugLabel': instance.uiPlugLabel,
      'plugStyle': instance.plugStyle,
      'plugAvailability':
          _$PlugAvailabilityModeEnumMap[instance.plugAvailability],
      'alternateUiPlugLabel': instance.alternateUiPlugLabel,
      'alternatePlugStyle': instance.alternatePlugStyle,
      'isDummyPlug': instance.isDummyPlug,
      'parentItemOverride': instance.parentItemOverride,
      'energyCapacity': instance.energyCapacity,
      'energyCost': instance.energyCost,
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

const _$PlugAvailabilityModeEnumMap = {
  PlugAvailabilityMode.Normal: 0,
  PlugAvailabilityMode.UnavailableIfSocketContainsMatchingPlugCategory: 1,
  PlugAvailabilityMode.AvailableIfSocketContainsMatchingPlugCategory: 2,
  PlugAvailabilityMode.ProtectedInvalidEnumValue: 999999999,
};
