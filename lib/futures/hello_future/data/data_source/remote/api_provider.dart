// import 'dart:convert';
// import 'dart:developer';
// import 'dart:io';
//
// import 'package:dio/dio.dart';
// import 'package:midleeast_bank_app/core/utils/constants.dart';
// import 'package:midleeast_bank_app/features/feature_hello/data/data_source/local/shared_preference_manager.dart';
//
// class ApiProvider {
//   final Dio _dio = Dio();
//
//   setOptions() {
//     _dio.options.headers['content-Type'] = 'application/json';
//     _dio.options.headers["x-api-key"] = Constants.apiKey;
//     _dio.options.method = "POST";
//     _dio.options.headers['Accept'] = 'application/json';
//     _dio.options.headers["Access-Control-Allow-Origin"] = "*";
//     _dio.options.headers["Access-Control-Allow-Credentials"] = true;
//     _dio.options.headers["Accept-Encoding"] = "gzip, deflate, br";
//     _dio.options.headers["Access-Control-Allow-Headers"] =
//         "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale";
//     _dio.options.headers["Access-Control-Allow-Methods"] =
//         "GET, HEAD, POST, OPTIONS";
//   }
// }
