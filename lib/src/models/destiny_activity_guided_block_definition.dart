import 'package:json_annotation/json_annotation.dart';


part 'destiny_activity_guided_block_definition.g.dart';

/// Guided Game information for this activity.
@JsonSerializable()
class DestinyActivityGuidedBlockDefinition{
	
	DestinyActivityGuidedBlockDefinition();

	factory DestinyActivityGuidedBlockDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyActivityGuidedBlockDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The maximum amount of people that can be in the waiting lobby.
	@JsonKey(name:'guidedMaxLobbySize')
	int guidedMaxLobbySize;
	/// The minimum amount of people that can be in the waiting lobby.
	@JsonKey(name:'guidedMinLobbySize')
	int guidedMinLobbySize;
	/// If -1, the guided group cannot be disbanded. Otherwise, take the total # of players in the activity and subtract this number: that is the total # of votes needed for the guided group to disband.
	@JsonKey(name:'guidedDisbandCount')
	int guidedDisbandCount;

	
	
	Map<String, dynamic> toJson() => _$DestinyActivityGuidedBlockDefinitionToJson(this);
}