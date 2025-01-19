class RadioModel{
  String? name;
  String? url;
  RadioModel({required this.name,required this.url});

  factory RadioModel.fromjson(Map<String,dynamic> json) {
return RadioModel(name: json['name'], url: json["url"]);
  }
}
