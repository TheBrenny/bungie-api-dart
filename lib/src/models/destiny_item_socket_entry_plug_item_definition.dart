import 'package:json_annotation/json_annotation.dart';


part 'destiny_item_socket_entry_plug_item_definition.g.dart';

/// The definition of a known, reusable plug that can be applied to a socket.
@JsonSerializable()
class DestinyItemSocketEntryPlugItemDefinition{
	
	DestinyItemSocketEntryPlugItemDefinition();

	factory DestinyItemSocketEntryPlugItemDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyItemSocketEntryPlugItemDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The hash identifier of a DestinyInventoryItemDefinition representing the plug that can be inserted.
	@JsonKey(name:'plugItemHash')
	int plugItemHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyItemSocketEntryPlugItemDefinitionToJson(this);
}