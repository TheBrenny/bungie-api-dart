import 'package:json_annotation/json_annotation.dart';


part 'group_edit_action.g.dart';

@JsonSerializable()
class GroupEditAction{
	
	GroupEditAction();

	factory GroupEditAction.fromJson(Map<String, dynamic> json) {
		try{
			return _$GroupEditActionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'name')
	String name;
	@JsonKey(name:'about')
	String about;
	@JsonKey(name:'motto')
	String motto;
	@JsonKey(name:'theme')
	String theme;
	@JsonKey(name:'avatarImageIndex')
	int avatarImageIndex;
	@JsonKey(name:'tags')
	String tags;
	@JsonKey(name:'isPublic')
	bool isPublic;
	@JsonKey(name:'membershipOption')
	int membershipOption;
	@JsonKey(name:'isPublicTopicAdminOnly')
	bool isPublicTopicAdminOnly;
	@JsonKey(name:'allowChat')
	bool allowChat;
	@JsonKey(name:'chatSecurity')
	int chatSecurity;
	@JsonKey(name:'callsign')
	String callsign;
	@JsonKey(name:'locale')
	String locale;
	@JsonKey(name:'homepage')
	int homepage;
	@JsonKey(name:'enableInvitationMessagingForAdmins')
	bool enableInvitationMessagingForAdmins;
	@JsonKey(name:'defaultPublicity')
	int defaultPublicity;

	
	
	Map<String, dynamic> toJson() => _$GroupEditActionToJson(this);
}