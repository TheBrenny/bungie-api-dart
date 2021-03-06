import 'package:json_annotation/json_annotation.dart';

import 'series.dart';

part 'api_usage.g.dart';

@JsonSerializable()
class ApiUsage{
	
	ApiUsage();

	factory ApiUsage.fromJson(Map<String, dynamic> json) {
		try{
			return _$ApiUsageFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// Counts for on API calls made for the time range.
	@JsonKey(name:'apiCalls')
	List<Series> apiCalls;
	/// Instances of blocked requests or requests that crossed the warn threshold during the time range.
	@JsonKey(name:'throttledRequests')
	List<Series> throttledRequests;

	
	
	Map<String, dynamic> toJson() => _$ApiUsageToJson(this);
}