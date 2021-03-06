import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_component.dart';

part 'destiny_platform_silver_component.g.dart';

@JsonSerializable()
class DestinyPlatformSilverComponent{
	
	DestinyPlatformSilverComponent();

	factory DestinyPlatformSilverComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyPlatformSilverComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// If a Profile is played on multiple platforms, this is the silver they have for each platform, keyed by Membership Type.
	@JsonKey(name:'platformSilver')
	Map<String, DestinyItemComponent> platformSilver;

	
	
	Map<String, dynamic> toJson() => _$DestinyPlatformSilverComponentToJson(this);
}