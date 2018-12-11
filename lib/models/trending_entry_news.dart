import 'content_item_public_contract.dart';
class TrendingEntryNews{
	ContentItemPublicContract article;
	TrendingEntryNews(
		ContentItemPublicContract this.article,
	);

	static TrendingEntryNews fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TrendingEntryNews(
				ContentItemPublicContract.fromJson(data['article']),
		);
	}

	static List<TrendingEntryNews> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<TrendingEntryNews> list = new List();
    data.forEach((item) {
      list.add(TrendingEntryNews.fromJson(item));
    });
    return list;
	}
}