import '../models/destiny_character_response.dart';
import '../enums/platform_error_codes.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_character_response_response.g.dart';

/// The response contract for GetDestinyCharacter, with components that can be returned for character and item-level data.
@JsonSerializable()
class DestinyCharacterResponseResponse{
	DestinyCharacterResponseResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory DestinyCharacterResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyCharacterResponseResponseFromJson(json);
	
	
	/// The response contract for GetDestinyCharacter, with components that can be returned for character and item-level data.
	@JsonKey(name:'Response')
	DestinyCharacterResponse response;
	
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

	Map<String, dynamic> toJson() => _$DestinyCharacterResponseResponseToJson(this);
}