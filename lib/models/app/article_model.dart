import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final int currentPage;
  final String firstPageUrl;
  final int from;
  final String nextPageUrl;
  final DataModel? data;

  const Article(
      {required this.currentPage,
      required this.firstPageUrl,
      required this.from,
      required this.nextPageUrl,
      required this.data});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
        currentPage:json['current_page'] ,
        firstPageUrl: json['first_page_url'],
        from: json['from'],
        nextPageUrl:json['next_page_url'] ,
        data:json['data']!=null ? DataModel.froJson(json['data']):null ,
    );
  }

  @override
  List<Object?> get props => [
        currentPage,
        firstPageUrl,
        from,
        nextPageUrl,
        data,
      ];
}

class DataModel extends Equatable {
  final int id;
  final String thumbnail;

  final String banner;
  final String title;
  final String shortDescription;
  final String createdAt;

  const DataModel(
      {required this.id,
      required this.thumbnail,
      required this.banner,
      required this.title,
      required this.shortDescription,
      required this.createdAt});

  factory DataModel.froJson(Map<String, dynamic> json) {
    return DataModel(
        id: json['id'],
        thumbnail: json['thumbnail'],
        banner: json['banner'],
        title: json['title'],
        shortDescription: json['short_description'],
        createdAt: json['created_at']);
  }

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, thumbnail, banner, title, shortDescription, createdAt];
}
