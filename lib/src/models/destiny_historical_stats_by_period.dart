import 'package:json_annotation/json_annotation.dart';

import 'destiny_historical_stats_value.dart';
import 'destiny_historical_stats_period_group.dart';

part 'destiny_historical_stats_by_period.g.dart';

@JsonSerializable()
class DestinyHistoricalStatsByPeriod{
	
	DestinyHistoricalStatsByPeriod();

	factory DestinyHistoricalStatsByPeriod.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyHistoricalStatsByPeriodFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'allTime')
	Map<String, DestinyHistoricalStatsValue> allTime;
	@JsonKey(name:'allTimeTier1')
	Map<String, DestinyHistoricalStatsValue> allTimeTier1;
	@JsonKey(name:'allTimeTier2')
	Map<String, DestinyHistoricalStatsValue> allTimeTier2;
	@JsonKey(name:'allTimeTier3')
	Map<String, DestinyHistoricalStatsValue> allTimeTier3;
	@JsonKey(name:'daily')
	List<DestinyHistoricalStatsPeriodGroup> daily;
	@JsonKey(name:'monthly')
	List<DestinyHistoricalStatsPeriodGroup> monthly;

	
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsByPeriodToJson(this);
}