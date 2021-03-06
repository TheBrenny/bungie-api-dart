// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_interaction_reply_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorInteractionReplyDefinition
    _$DestinyVendorInteractionReplyDefinitionFromJson(
        Map<String, dynamic> json) {
  return DestinyVendorInteractionReplyDefinition()
    ..itemRewardsSelection = _$enumDecodeNullable(
        _$DestinyVendorInteractionRewardSelectionEnumMap,
        json['itemRewardsSelection'],
        unknownValue:
            DestinyVendorInteractionRewardSelection.ProtectedInvalidEnumValue)
    ..reply = json['reply'] as String
    ..replyType = _$enumDecodeNullable(
        _$DestinyVendorReplyTypeEnumMap, json['replyType'],
        unknownValue: DestinyVendorReplyType.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$DestinyVendorInteractionReplyDefinitionToJson(
        DestinyVendorInteractionReplyDefinition instance) =>
    <String, dynamic>{
      'itemRewardsSelection': _$DestinyVendorInteractionRewardSelectionEnumMap[
          instance.itemRewardsSelection],
      'reply': instance.reply,
      'replyType': _$DestinyVendorReplyTypeEnumMap[instance.replyType],
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

const _$DestinyVendorInteractionRewardSelectionEnumMap = {
  DestinyVendorInteractionRewardSelection.None: 0,
  DestinyVendorInteractionRewardSelection.One: 1,
  DestinyVendorInteractionRewardSelection.All: 2,
  DestinyVendorInteractionRewardSelection.ProtectedInvalidEnumValue: 999999999,
};

const _$DestinyVendorReplyTypeEnumMap = {
  DestinyVendorReplyType.Accept: 0,
  DestinyVendorReplyType.Decline: 1,
  DestinyVendorReplyType.Complete: 2,
  DestinyVendorReplyType.ProtectedInvalidEnumValue: 999999999,
};
