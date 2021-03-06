import 'package:json_annotation/json_annotation.dart';


part 'email_setting_subscription_localization.g.dart';

/// Localized text relevant to a given EMail setting in a given localization. Extra settings specifically for subscriptions.
@JsonSerializable()
class EMailSettingSubscriptionLocalization{
	
	EMailSettingSubscriptionLocalization();

	factory EMailSettingSubscriptionLocalization.fromJson(Map<String, dynamic> json) {
		try{
			return _$EMailSettingSubscriptionLocalizationFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'unknownUserDescription')
	String unknownUserDescription;
	@JsonKey(name:'registeredUserDescription')
	String registeredUserDescription;
	@JsonKey(name:'unregisteredUserDescription')
	String unregisteredUserDescription;
	@JsonKey(name:'unknownUserActionText')
	String unknownUserActionText;
	@JsonKey(name:'knownUserActionText')
	String knownUserActionText;
	@JsonKey(name:'title')
	String title;
	@JsonKey(name:'description')
	String description;

	
	
	Map<String, dynamic> toJson() => _$EMailSettingSubscriptionLocalizationToJson(this);
}