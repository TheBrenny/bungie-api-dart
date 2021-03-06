import 'package:json_annotation/json_annotation.dart';


part 'paged_query.g.dart';

@JsonSerializable()
class PagedQuery{
	
	PagedQuery();

	factory PagedQuery.fromJson(Map<String, dynamic> json) {
		try{
			return _$PagedQueryFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'itemsPerPage')
	int itemsPerPage;
	@JsonKey(name:'currentPage')
	int currentPage;
	@JsonKey(name:'requestContinuationToken')
	String requestContinuationToken;

	
	
	Map<String, dynamic> toJson() => _$PagedQueryToJson(this);
}