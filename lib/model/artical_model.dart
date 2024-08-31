// class of body news
class ArticalModel {
  final String? image;
  final String? title;
  final String? subTitle;

  ArticalModel(
      {required this.title, required this.image, required this.subTitle});
      ArticalModel.fromJson(Map<String, dynamic> json)
      : image = json['urlToImage'],
        title = json['title'],
        subTitle = json['description'];

}

