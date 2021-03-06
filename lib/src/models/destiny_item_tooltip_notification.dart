import 'package:json_annotation/json_annotation.dart';


part 'destiny_item_tooltip_notification.g.dart';

@JsonSerializable()
class DestinyItemTooltipNotification{
	
	DestinyItemTooltipNotification();

	factory DestinyItemTooltipNotification.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyItemTooltipNotificationFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'displayString')
	String displayString;
	@JsonKey(name:'displayStyle')
	String displayStyle;

	
	
	Map<String, dynamic> toJson() => _$DestinyItemTooltipNotificationToJson(this);
}