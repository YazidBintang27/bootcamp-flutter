import 'package:sanber_app_flutter/Tugas/Tugas12/model/data_response.dart';
import 'package:sanber_app_flutter/Tugas/Tugas12/util/app_constant.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<List<DataResponse>> getListUsers() async {
    Uri url = Uri.parse(AppConstant.LIST_USERS);
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var responseDecode = json.decode(response.body);
      List getData = responseDecode['data'];
      return getData.map((e) => DataResponse.fromJson(e)).toList();
    } else {
      throw Exception("Data not found");
    }
  }
}
