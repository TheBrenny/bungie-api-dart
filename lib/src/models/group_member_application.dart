import 'package:json_annotation/json_annotation.dart';

import '../enums/group_application_resolve_state.dart';
import 'group_user_info_card.dart';
import 'user_info_card.dart';

part 'group_member_application.g.dart';

@JsonSerializable()
class GroupMemberApplication{
	
	GroupMemberApplication();

	factory GroupMemberApplication.fromJson(Map<String, dynamic> json) {
		try{
			return _$GroupMemberApplicationFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'groupId')
	String groupId;
	@JsonKey(name:'creationDate')
	String creationDate;
	@JsonKey(name:'resolveState',unknownEnumValue:GroupApplicationResolveState.ProtectedInvalidEnumValue)
	GroupApplicationResolveState resolveState;
	@JsonKey(name:'resolveDate')
	String resolveDate;
	@JsonKey(name:'resolvedByMembershipId')
	String resolvedByMembershipId;
	@JsonKey(name:'requestMessage')
	String requestMessage;
	@JsonKey(name:'resolveMessage')
	String resolveMessage;
	@JsonKey(name:'destinyUserInfo')
	GroupUserInfoCard destinyUserInfo;
	/// This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts.
	@JsonKey(name:'bungieNetUserInfo')
	UserInfoCard bungieNetUserInfo;

	
	
	Map<String, dynamic> toJson() => _$GroupMemberApplicationToJson(this);
}