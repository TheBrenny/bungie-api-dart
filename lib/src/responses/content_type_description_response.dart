import '../models/content_type_description.dart';
import '../enums/platform_error_codes.dart';

import 'package:json_annotation/json_annotation.dart';
part 'content_type_description_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class ContentTypeDescriptionResponse{
	ContentTypeDescriptionResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory ContentTypeDescriptionResponse.fromJson(Map<String, dynamic> json) => _$ContentTypeDescriptionResponseFromJson(json);
	
	
	@JsonKey(name:'Response')
	ContentTypeDescription response;
	
	@JsonKey(name:'ErrorCode')
	PlatformErrorCodes errorCode;
	
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

	Map<String, dynamic> toJson() => _$ContentTypeDescriptionResponseToJson(this);
}