import 'package:json_annotation/json_annotation.dart';


part 'content_type_default_value.g.dart';

@JsonSerializable()
class ContentTypeDefaultValue{
	
	ContentTypeDefaultValue();

	factory ContentTypeDefaultValue.fromJson(Map<String, dynamic> json) {
		try{
			return _$ContentTypeDefaultValueFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'whenClause')
	String whenClause;
	@JsonKey(name:'whenValue')
	String whenValue;
	@JsonKey(name:'defaultValue')
	String defaultValue;

	
	
	Map<String, dynamic> toJson() => _$ContentTypeDefaultValueToJson(this);
}