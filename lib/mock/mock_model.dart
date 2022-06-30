import 'package:students/mock/mock_data.dart';

class mockData2 {
  final int Id;
  final String city_name;
  final String zip_code;
  final String rate;
  final String city_info;
  final String profileImage;

  mockData2(
      {required this.Id,
      required this.city_name,
      required this.zip_code,
      required this.rate,
      required this.city_info,
      required this.profileImage});

  factory mockData2.fromJson(Map<String, dynamic> json) => mockData2(
//  ?.toInt() ?? 0,  without using this code it read null error
      Id: json['Id']?.toInt() ?? 0,
      city_name: json['city_name'],
      zip_code: json['zip_code'],
      rate: json['rate'],
      city_info: json['city_info'],
      profileImage: json['profileImage']);

  Map<String, dynamic> toJson() => {
        'Id': Id,
        'city_name': city_name,
        'zip_code': zip_code,
        'rate': rate,
        'city_info': city_info,
        'profileImage': profileImage,
      };
}
