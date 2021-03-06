// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_profile_user_info_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProfileUserInfoCard _$DestinyProfileUserInfoCardFromJson(
    Map<String, dynamic> json) {
  return DestinyProfileUserInfoCard()
    ..dateLastPlayed = json['dateLastPlayed'] as String
    ..isOverridden = json['isOverridden'] as bool
    ..isCrossSavePrimary = json['isCrossSavePrimary'] as bool
    ..platformSilver = json['platformSilver'] == null
        ? null
        : DestinyPlatformSilverComponent.fromJson(
            json['platformSilver'] as Map<String, dynamic>)
    ..unpairedGameVersions = json['unpairedGameVersions'] as int
    ..supplementalDisplayName = json['supplementalDisplayName'] as String
    ..iconPath = json['iconPath'] as String
    ..crossSaveOverride = _$enumDecodeNullable(
        _$BungieMembershipTypeEnumMap, json['crossSaveOverride'],
        unknownValue: BungieMembershipType.ProtectedInvalidEnumValue)
    ..applicableMembershipTypes = (json['applicableMembershipTypes'] as List)
        ?.map((e) => _$enumDecodeNullable(_$BungieMembershipTypeEnumMap, e))
        ?.toList()
    ..isPublic = json['isPublic'] as bool
    ..membershipType = _$enumDecodeNullable(
        _$BungieMembershipTypeEnumMap, json['membershipType'],
        unknownValue: BungieMembershipType.ProtectedInvalidEnumValue)
    ..membershipId = json['membershipId'] as String
    ..displayName = json['displayName'] as String;
}

Map<String, dynamic> _$DestinyProfileUserInfoCardToJson(
        DestinyProfileUserInfoCard instance) =>
    <String, dynamic>{
      'dateLastPlayed': instance.dateLastPlayed,
      'isOverridden': instance.isOverridden,
      'isCrossSavePrimary': instance.isCrossSavePrimary,
      'platformSilver': instance.platformSilver,
      'unpairedGameVersions': instance.unpairedGameVersions,
      'supplementalDisplayName': instance.supplementalDisplayName,
      'iconPath': instance.iconPath,
      'crossSaveOverride':
          _$BungieMembershipTypeEnumMap[instance.crossSaveOverride],
      'applicableMembershipTypes': instance.applicableMembershipTypes
          ?.map((e) => _$BungieMembershipTypeEnumMap[e])
          ?.toList(),
      'isPublic': instance.isPublic,
      'membershipType': _$BungieMembershipTypeEnumMap[instance.membershipType],
      'membershipId': instance.membershipId,
      'displayName': instance.displayName,
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

const _$BungieMembershipTypeEnumMap = {
  BungieMembershipType.None: 0,
  BungieMembershipType.TigerXbox: 1,
  BungieMembershipType.TigerPsn: 2,
  BungieMembershipType.TigerSteam: 3,
  BungieMembershipType.TigerBlizzard: 4,
  BungieMembershipType.TigerStadia: 5,
  BungieMembershipType.TigerDemon: 10,
  BungieMembershipType.BungieNext: 254,
  BungieMembershipType.All: -1,
  BungieMembershipType.ProtectedInvalidEnumValue: 999999999,
};
