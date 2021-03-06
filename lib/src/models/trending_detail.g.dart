// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingDetail _$TrendingDetailFromJson(Map<String, dynamic> json) {
  return TrendingDetail()
    ..identifier = json['identifier'] as String
    ..entityType = _$enumDecodeNullable(
        _$TrendingEntryTypeEnumMap, json['entityType'],
        unknownValue: TrendingEntryType.ProtectedInvalidEnumValue)
    ..news = json['news'] == null
        ? null
        : TrendingEntryNews.fromJson(json['news'] as Map<String, dynamic>)
    ..support = json['support'] == null
        ? null
        : TrendingEntrySupportArticle.fromJson(
            json['support'] as Map<String, dynamic>)
    ..destinyItem = json['destinyItem'] == null
        ? null
        : TrendingEntryDestinyItem.fromJson(
            json['destinyItem'] as Map<String, dynamic>)
    ..destinyActivity = json['destinyActivity'] == null
        ? null
        : TrendingEntryDestinyActivity.fromJson(
            json['destinyActivity'] as Map<String, dynamic>)
    ..destinyRitual = json['destinyRitual'] == null
        ? null
        : TrendingEntryDestinyRitual.fromJson(
            json['destinyRitual'] as Map<String, dynamic>)
    ..creation = json['creation'] == null
        ? null
        : TrendingEntryCommunityCreation.fromJson(
            json['creation'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TrendingDetailToJson(TrendingDetail instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'entityType': _$TrendingEntryTypeEnumMap[instance.entityType],
      'news': instance.news,
      'support': instance.support,
      'destinyItem': instance.destinyItem,
      'destinyActivity': instance.destinyActivity,
      'destinyRitual': instance.destinyRitual,
      'creation': instance.creation,
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

const _$TrendingEntryTypeEnumMap = {
  TrendingEntryType.News: 0,
  TrendingEntryType.DestinyItem: 1,
  TrendingEntryType.DestinyActivity: 2,
  TrendingEntryType.DestinyRitual: 3,
  TrendingEntryType.SupportArticle: 4,
  TrendingEntryType.Creation: 5,
  TrendingEntryType.Stream: 6,
  TrendingEntryType.Update: 7,
  TrendingEntryType.Link: 8,
  TrendingEntryType.ForumTag: 9,
  TrendingEntryType.Container: 10,
  TrendingEntryType.Release: 11,
  TrendingEntryType.ProtectedInvalidEnumValue: 999999999,
};
