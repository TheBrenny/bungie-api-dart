// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_playlist_item_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityPlaylistItemDefinition
    _$DestinyActivityPlaylistItemDefinitionFromJson(Map<String, dynamic> json) {
  return DestinyActivityPlaylistItemDefinition()
    ..activityHash = json['activityHash'] as int
    ..directActivityModeHash = json['directActivityModeHash'] as int
    ..directActivityModeType = json['directActivityModeType'] as int
    ..activityModeHashes =
        (json['activityModeHashes'] as List)?.map((e) => e as int)?.toList()
    ..activityModeTypes =
        (json['activityModeTypes'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic> _$DestinyActivityPlaylistItemDefinitionToJson(
        DestinyActivityPlaylistItemDefinition instance) =>
    <String, dynamic>{
      'activityHash': instance.activityHash,
      'directActivityModeHash': instance.directActivityModeHash,
      'directActivityModeType': instance.directActivityModeType,
      'activityModeHashes': instance.activityModeHashes,
      'activityModeTypes': instance.activityModeTypes
    };