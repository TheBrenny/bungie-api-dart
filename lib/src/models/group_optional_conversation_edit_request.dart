import 'package:json_annotation/json_annotation.dart';


part 'group_optional_conversation_edit_request.g.dart';

@JsonSerializable()
class GroupOptionalConversationEditRequest{
	
	GroupOptionalConversationEditRequest();

	factory GroupOptionalConversationEditRequest.fromJson(Map<String, dynamic> json) {
		try{
			return _$GroupOptionalConversationEditRequestFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'chatEnabled')
	bool chatEnabled;
	@JsonKey(name:'chatName')
	String chatName;
	@JsonKey(name:'chatSecurity')
	int chatSecurity;

	
	
	Map<String, dynamic> toJson() => _$GroupOptionalConversationEditRequestToJson(this);
}