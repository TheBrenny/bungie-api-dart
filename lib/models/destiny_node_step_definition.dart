import 'destiny_display_properties_definition.dart';
import 'destiny_node_activation_requirement.dart';
import 'destiny_talent_node_step_groups.dart';
import 'destiny_node_socket_replace_response.dart';
class DestinyNodeStepDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	int stepIndex;
	int nodeStepHash;
	String interactionDescription;
	int damageType;
	int damageTypeHash;
	DestinyNodeActivationRequirement activationRequirement;
	bool canActivateNextStep;
	int nextStepIndex;
	bool isNextStepRandom;
	List<int> perkHashes;
	int startProgressionBarAtProgress;
	List<int> statHashes;
	bool affectsQuality;
	DestinyTalentNodeStepGroups stepGroups;
	bool affectsLevel;
	List<DestinyNodeSocketReplaceResponse> socketReplacements;
	DestinyNodeStepDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		int this.stepIndex,
		int this.nodeStepHash,
		String this.interactionDescription,
		int this.damageType,
		int this.damageTypeHash,
		DestinyNodeActivationRequirement this.activationRequirement,
		bool this.canActivateNextStep,
		int this.nextStepIndex,
		bool this.isNextStepRandom,
		List<int> this.perkHashes,
		int this.startProgressionBarAtProgress,
		List<int> this.statHashes,
		bool this.affectsQuality,
		DestinyTalentNodeStepGroups this.stepGroups,
		bool this.affectsLevel,
		List<DestinyNodeSocketReplaceResponse> this.socketReplacements,
	);

	static DestinyNodeStepDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyNodeStepDefinition(
				data['displayProperties'],
				data['stepIndex'],
				data['nodeStepHash'],
				data['interactionDescription'],
				data['damageType'],
				data['damageTypeHash'],
				data['activationRequirement'],
				data['canActivateNextStep'],
				data['nextStepIndex'],
				data['isNextStepRandom'],
				data['perkHashes'],
				data['startProgressionBarAtProgress'],
				data['statHashes'],
				data['affectsQuality'],
				data['stepGroups'],
				data['affectsLevel'],
				DestinyNodeSocketReplaceResponse.fromList(data['socketReplacements']),
		);
	}

	static List<DestinyNodeStepDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyNodeStepDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyNodeStepDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties;
			data['stepIndex'] = this.stepIndex;
			data['nodeStepHash'] = this.nodeStepHash;
			data['interactionDescription'] = this.interactionDescription;
			data['damageType'] = this.damageType;
			data['damageTypeHash'] = this.damageTypeHash;
			data['activationRequirement'] = this.activationRequirement;
			data['canActivateNextStep'] = this.canActivateNextStep;
			data['nextStepIndex'] = this.nextStepIndex;
			data['isNextStepRandom'] = this.isNextStepRandom;
			data['perkHashes'] = this.perkHashes;
			data['startProgressionBarAtProgress'] = this.startProgressionBarAtProgress;
			data['statHashes'] = this.statHashes;
			data['affectsQuality'] = this.affectsQuality;
			data['stepGroups'] = this.stepGroups;
			data['affectsLevel'] = this.affectsLevel;
			data['socketReplacements'] = this.socketReplacements.map((item)=>item.toMap()).toList();
		return data;
	}
}