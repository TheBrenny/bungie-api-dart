import 'package:json_annotation/json_annotation.dart';

import 'dye_reference.dart';

part 'destiny_item_peer_view.g.dart';

/// Bare minimum summary information for an item, for the sake of 3D rendering the item.
@JsonSerializable()
class DestinyItemPeerView{
	
	DestinyItemPeerView();

	factory DestinyItemPeerView.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyItemPeerViewFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The hash identifier of the item in question. Use it to look up the DestinyInventoryItemDefinition of the item for static rendering data.
	@JsonKey(name:'itemHash')
	int itemHash;
	/// The list of dyes that have been applied to this item.
	@JsonKey(name:'dyes')
	List<DyeReference> dyes;

	
	
	Map<String, dynamic> toJson() => _$DestinyItemPeerViewToJson(this);
}