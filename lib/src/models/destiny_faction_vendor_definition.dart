import 'package:json_annotation/json_annotation.dart';


part 'destiny_faction_vendor_definition.g.dart';

/// These definitions represent faction vendors at different points in the game.
/// A single faction may contain multiple vendors, or the same vendor available at two different locations.
@JsonSerializable()
class DestinyFactionVendorDefinition{
	
	DestinyFactionVendorDefinition();

	factory DestinyFactionVendorDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyFactionVendorDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The faction vendor hash.
	@JsonKey(name:'vendorHash')
	int vendorHash;
	/// The hash identifier for a Destination at which this vendor may be located. Each destination where a Vendor may exist will only ever have a single entry.
	@JsonKey(name:'destinationHash')
	int destinationHash;
	/// The relative path to the background image representing this Vendor at this location, for use in a banner.
	@JsonKey(name:'backgroundImagePath')
	String backgroundImagePath;

	
	
	Map<String, dynamic> toJson() => _$DestinyFactionVendorDefinitionToJson(this);
}