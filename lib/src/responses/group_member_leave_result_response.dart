import '../models/group_member_leave_result.dart';

import 'package:json_annotation/json_annotation.dart';
part 'group_member_leave_result_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class GroupMemberLeaveResultResponse{
	
	@JsonKey(name:'Response')
	GroupMemberLeaveResult response;
	
	@JsonKey(name:'ErrorCode')
	int errorCode;
	
	@JsonKey(name:'ThrottleSeconds')
	int throttleSeconds;
	
	@JsonKey(name:'ErrorStatus')
	String errorStatus;
	
	@JsonKey(name:'Message')
	String message;
	
	@JsonKey(name:'MessageData')
	Map<String, String> messageData;
	
	@JsonKey(name:'DetailedErrorTrace')
	String detailedErrorTrace;
	GroupMemberLeaveResultResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory GroupMemberLeaveResultResponse.fromJson(Map<String, dynamic> json) => _$GroupMemberLeaveResultResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$GroupMemberLeaveResultResponseToJson(this);
}