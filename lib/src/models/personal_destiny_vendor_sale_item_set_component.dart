import 'package:json_annotation/json_annotation.dart';

import 'destiny_vendor_sale_item_component.dart';

part 'personal_destiny_vendor_sale_item_set_component.g.dart';

@JsonSerializable()
class PersonalDestinyVendorSaleItemSetComponent{
	
	PersonalDestinyVendorSaleItemSetComponent();

	factory PersonalDestinyVendorSaleItemSetComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$PersonalDestinyVendorSaleItemSetComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'saleItems')
	Map<String, DestinyVendorSaleItemComponent> saleItems;

	
	
	Map<String, dynamic> toJson() => _$PersonalDestinyVendorSaleItemSetComponentToJson(this);
}