import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_component.dart';

part 'destiny_inventory_component.g.dart';

/// A list of minimal information for items in an inventory: be it a character&#39;s inventory, or a Profile&#39;s inventory. (Note that the Vault is a collection of inventory buckets in the Profile&#39;s inventory)
/// Inventory Items returned here are in a flat list, but importantly they have a bucketHash property that indicates the specific inventory bucket that is holding them. These buckets constitute things like the separate sections of the Vault, the user&#39;s inventory slots, etc. See DestinyInventoryBucketDefinition for more info.
@JsonSerializable()
class DestinyInventoryComponent{
	
	DestinyInventoryComponent();

	factory DestinyInventoryComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyInventoryComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The items in this inventory. If you care to bucket them, use the item's bucketHash property to group them.
	@JsonKey(name:'items')
	List<DestinyItemComponent> items;

	
	
	Map<String, dynamic> toJson() => _$DestinyInventoryComponentToJson(this);
}