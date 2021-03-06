import 'package:json_annotation/json_annotation.dart';

import 'destiny_presentation_node_component.dart';

part 'destiny_presentation_nodes_component.g.dart';

@JsonSerializable()
class DestinyPresentationNodesComponent{
	
	DestinyPresentationNodesComponent();

	factory DestinyPresentationNodesComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyPresentationNodesComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'nodes')
	Map<String, DestinyPresentationNodeComponent> nodes;

	
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodesComponentToJson(this);
}