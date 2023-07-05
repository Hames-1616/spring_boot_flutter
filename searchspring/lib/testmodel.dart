import 'package:dio/dio.dart';

Future<test> getcity(String city) async {
  final Dio dio = Dio();
  String baseUrl = "http://10.0.2.2:8080/api/city/";

  try {
    Response userData = await dio.get(baseUrl + city);
    print(userData.data);
    test t = test.fromJson(userData.data);
    return t;
  } catch (e) {
    print(e);
    return Future.error(e);
  }
}

class test {
  final int routeId;
  final String routeName;
  final String city;

  test({
    required this.routeId,
    required this.routeName,
    required this.city,
  });

  factory test.fromJson(Map<String, dynamic> json) {
    return test(
      routeId: json['routeId'],
      routeName: json['routeName'],
      city: json['city'],
    );
  }
  static List<test> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((e) => test.fromJson(e)).toList();
  }
}
