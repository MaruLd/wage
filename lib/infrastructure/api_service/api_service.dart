import 'dart:io';

import 'package:dio/dio.dart';
import 'package:wage/domain/SignIn/sign_in_model.dart';

class ApiService {
  Future<List> getCharactersDatas() async {
    final response = await Dio().get(
      "https://rickandmortyapi.com/api/character",
    );
    return response.data["results"];
  }

  var formData = {"emailAddress": "admin@gmail.co", "password": "Asd123@@"};

  Future<SignIn> getAuthDatas() async {
    final response =
        await Dio().post('https://api.uniinc-cnb.com/v1/users/login',
            data: formData,
            options: Options(headers: {
              HttpHeaders.contentTypeHeader: "application/json",
            }));
    if (response.statusCode == 200) {
      final auth = SignIn.fromJson(response.data["message"]);
      return auth;
    } else {
      throw Exception(response.statusMessage);
    }
  }
}
