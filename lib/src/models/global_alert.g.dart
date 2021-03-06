// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_alert.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GlobalAlert _$GlobalAlertFromJson(Map<String, dynamic> json) {
  return GlobalAlert()
    ..alertKey = json['AlertKey'] as String
    ..alertHtml = json['AlertHtml'] as String
    ..alertTimestamp = json['AlertTimestamp'] as String
    ..alertLink = json['AlertLink'] as String
    ..alertLevel = _$enumDecodeNullable(
        _$GlobalAlertLevelEnumMap, json['AlertLevel'],
        unknownValue: GlobalAlertLevel.ProtectedInvalidEnumValue)
    ..alertType = _$enumDecodeNullable(
        _$GlobalAlertTypeEnumMap, json['AlertType'],
        unknownValue: GlobalAlertType.ProtectedInvalidEnumValue)
    ..streamInfo = json['StreamInfo'] == null
        ? null
        : StreamInfo.fromJson(json['StreamInfo'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GlobalAlertToJson(GlobalAlert instance) =>
    <String, dynamic>{
      'AlertKey': instance.alertKey,
      'AlertHtml': instance.alertHtml,
      'AlertTimestamp': instance.alertTimestamp,
      'AlertLink': instance.alertLink,
      'AlertLevel': _$GlobalAlertLevelEnumMap[instance.alertLevel],
      'AlertType': _$GlobalAlertTypeEnumMap[instance.alertType],
      'StreamInfo': instance.streamInfo,
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

const _$GlobalAlertLevelEnumMap = {
  GlobalAlertLevel.Unknown: 0,
  GlobalAlertLevel.Blue: 1,
  GlobalAlertLevel.Yellow: 2,
  GlobalAlertLevel.Red: 3,
  GlobalAlertLevel.ProtectedInvalidEnumValue: 999999999,
};

const _$GlobalAlertTypeEnumMap = {
  GlobalAlertType.GlobalAlert: 0,
  GlobalAlertType.StreamingAlert: 1,
  GlobalAlertType.ProtectedInvalidEnumValue: 999999999,
};
