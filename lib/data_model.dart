class DataModel{
  String brand_name;
  String brand_logo;
  int status;
  String due_info;
  String due;
  int brand_id;

  DataModel({required this.brand_name, required this.brand_logo, required this.status, required this.due_info, required this.due, required this.brand_id});
  factory DataModel.fromJson(Map<String, dynamic> json)=>DataModel(
    brand_name: json["brand_name"],
    brand_logo: json["brand_logo"]==null?"images/brand1.png":json["brand_logo"],
    status:json['status'],
    due: json['due'].toString(),
    due_info: json["due_info"],
    brand_id: json["brand_id"]

    );
}