import 'email_view_definition_setting.dart';

import 'package:json_annotation/json_annotation.dart';
part 'email_view_definition.g.dart';

/// Represents a data-driven view for Email settings. Web&#x2F;Mobile UI can use this data to show new EMail settings consistently without further manual work.
@JsonSerializable()
class EmailViewDefinition{
	
	/// The identifier for this view.
	@JsonKey(name:'name')
	String name;
	
	/// The ordered list of settings to show in this view.
	@JsonKey(name:'viewSettings')
	List<EmailViewDefinitionSetting> viewSettings;
	EmailViewDefinition();

	factory EmailViewDefinition.fromJson(Map<String, dynamic> json) => _$EmailViewDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$EmailViewDefinitionToJson(this);
}