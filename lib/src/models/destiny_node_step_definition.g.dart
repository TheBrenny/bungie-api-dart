// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_node_step_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyNodeStepDefinition _$DestinyNodeStepDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyNodeStepDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..stepIndex = json['stepIndex'] as int
    ..nodeStepHash = json['nodeStepHash'] as int
    ..interactionDescription = json['interactionDescription'] as String
    ..damageType = _$enumDecodeNullable(_$DamageTypeEnumMap, json['damageType'],
        unknownValue: DamageType.ProtectedInvalidEnumValue)
    ..damageTypeHash = json['damageTypeHash'] as int
    ..activationRequirement = json['activationRequirement'] == null
        ? null
        : DestinyNodeActivationRequirement.fromJson(
            json['activationRequirement'] as Map<String, dynamic>)
    ..canActivateNextStep = json['canActivateNextStep'] as bool
    ..nextStepIndex = json['nextStepIndex'] as int
    ..isNextStepRandom = json['isNextStepRandom'] as bool
    ..perkHashes = (json['perkHashes'] as List)?.map((e) => e as int)?.toList()
    ..startProgressionBarAtProgress =
        json['startProgressionBarAtProgress'] as int
    ..statHashes = (json['statHashes'] as List)?.map((e) => e as int)?.toList()
    ..affectsQuality = json['affectsQuality'] as bool
    ..stepGroups = json['stepGroups'] == null
        ? null
        : DestinyTalentNodeStepGroups.fromJson(
            json['stepGroups'] as Map<String, dynamic>)
    ..affectsLevel = json['affectsLevel'] as bool
    ..socketReplacements = (json['socketReplacements'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyNodeSocketReplaceResponse.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyNodeStepDefinitionToJson(
        DestinyNodeStepDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'stepIndex': instance.stepIndex,
      'nodeStepHash': instance.nodeStepHash,
      'interactionDescription': instance.interactionDescription,
      'damageType': _$DamageTypeEnumMap[instance.damageType],
      'damageTypeHash': instance.damageTypeHash,
      'activationRequirement': instance.activationRequirement,
      'canActivateNextStep': instance.canActivateNextStep,
      'nextStepIndex': instance.nextStepIndex,
      'isNextStepRandom': instance.isNextStepRandom,
      'perkHashes': instance.perkHashes,
      'startProgressionBarAtProgress': instance.startProgressionBarAtProgress,
      'statHashes': instance.statHashes,
      'affectsQuality': instance.affectsQuality,
      'stepGroups': instance.stepGroups,
      'affectsLevel': instance.affectsLevel,
      'socketReplacements': instance.socketReplacements,
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

const _$DamageTypeEnumMap = {
  DamageType.None: 0,
  DamageType.Kinetic: 1,
  DamageType.Arc: 2,
  DamageType.Thermal: 3,
  DamageType.Void: 4,
  DamageType.Raid: 5,
  DamageType.Stasis: 6,
  DamageType.ProtectedInvalidEnumValue: 999999999,
};
