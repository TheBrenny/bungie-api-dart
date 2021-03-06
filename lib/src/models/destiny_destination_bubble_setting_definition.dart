import 'package:json_annotation/json_annotation.dart';

import 'destiny_display_properties_definition.dart';

part 'destiny_destination_bubble_setting_definition.g.dart';

/// Human readable data about the bubble. Combine with DestinyBubbleDefinition - see DestinyDestinationDefinition.bubbleSettings for more information.
/// DEPRECATED - Just use bubbles.
@JsonSerializable()
class DestinyDestinationBubbleSettingDefinition{
	
	DestinyDestinationBubbleSettingDefinition();

	factory DestinyDestinationBubbleSettingDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyDestinationBubbleSettingDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	
	
	Map<String, dynamic> toJson() => _$DestinyDestinationBubbleSettingDefinitionToJson(this);
}