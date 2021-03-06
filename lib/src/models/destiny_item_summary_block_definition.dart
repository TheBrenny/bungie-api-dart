import 'package:json_annotation/json_annotation.dart';


part 'destiny_item_summary_block_definition.g.dart';

/// This appears to be information used when rendering rewards. We don&#39;t currently use it on BNet.
@JsonSerializable()
class DestinyItemSummaryBlockDefinition{
	
	DestinyItemSummaryBlockDefinition();

	factory DestinyItemSummaryBlockDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyItemSummaryBlockDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// Apparently when rendering an item in a reward, this should be used as a sort priority. We're not doing it presently.
	@JsonKey(name:'sortPriority')
	int sortPriority;

	
	
	Map<String, dynamic> toJson() => _$DestinyItemSummaryBlockDefinitionToJson(this);
}