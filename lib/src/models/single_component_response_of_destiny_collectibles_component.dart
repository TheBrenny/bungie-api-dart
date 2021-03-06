import 'package:json_annotation/json_annotation.dart';

import 'destiny_collectibles_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_collectibles_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyCollectiblesComponent{
	
	SingleComponentResponseOfDestinyCollectiblesComponent();

	factory SingleComponentResponseOfDestinyCollectiblesComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$SingleComponentResponseOfDestinyCollectiblesComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'data')
	DestinyCollectiblesComponent data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool disabled;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyCollectiblesComponentToJson(this);
}