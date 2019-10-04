
import 'package:json_annotation/json_annotation.dart';
part 'destiny_record_interval_objective.g.dart';

@JsonSerializable()
class DestinyRecordIntervalObjective{
	
	@JsonKey(name:'intervalObjectiveHash')
	int intervalObjectiveHash;
	
	@JsonKey(name:'intervalScoreValue')
	int intervalScoreValue;
	DestinyRecordIntervalObjective();

	factory DestinyRecordIntervalObjective.fromJson(Map<String, dynamic> json) => _$DestinyRecordIntervalObjectiveFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyRecordIntervalObjectiveToJson(this);
}