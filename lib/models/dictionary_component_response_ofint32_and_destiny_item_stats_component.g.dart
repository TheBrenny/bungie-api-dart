// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofint32_and_destiny_item_stats_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfint32AndDestinyItemStatsComponent
    _$DictionaryComponentResponseOfint32AndDestinyItemStatsComponentFromJson(
        Map<String, dynamic> json) {
  return DictionaryComponentResponseOfint32AndDestinyItemStatsComponent()
    ..data = (json['data'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyItemStatsComponent.fromJson(e as Map<String, dynamic>)),
    )
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$DictionaryComponentResponseOfint32AndDestinyItemStatsComponentToJson(
            DictionaryComponentResponseOfint32AndDestinyItemStatsComponent
                instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};