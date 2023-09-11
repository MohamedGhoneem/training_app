import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:network_implementation/network_implementation.dart';
import 'package:rxdart_bloc/rxdart_bloc.dart';

class ErrorModel extends BaseModel<ErrorModel> {
  int? statusCode;
  String? message;
  Errors? errors;

  ErrorModel({this.statusCode, this.message, this.errors});

  ErrorModel.fromJson(exception) {
    switch (exception) {
      case DioException():
        if (exception.response == null) {
          statusCode = 0;
          // message = exception.error.toString()??'';
          message = 'Network Error';
          break;
        }
        statusCode = exception.response?.statusCode;
        message = exception.response?.data['message'];
      case SocketException():
        log('Parsing Error "SocketException"  ===>>> : ${exception.message}');
        statusCode = 0;
        message = exception.message;
        break;

      case FormatException():
        log('Parsing Error "FormatException"  ===>>> : ${exception.message}');

        statusCode = 0;
        message = exception.message;
        break;

      case TimeoutException():
        log('Parsing Error "TimeoutException"  ===>>> : ${exception.message.toString()}');

        statusCode = 0;
        message = exception.message.toString();
        break;

      case HttpException():
        log('Parsing Error "HttpException"  ===>>> : ${exception.message}');

        statusCode = 0;
        message = exception.message;
        break;

      default:
        log('Parsing Error "default"  ===>>> : $exception');

        statusCode = 0;
        message = exception.toString();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status_code'] = statusCode;
    data['message'] = message;
    if (errors != null) {
      data['errors'] = errors!.toJson();
    }
    return data;
  }

  @override
  ErrorModel fromJson(Map<String, dynamic> json) {
    return ErrorModel.fromJson(json);
  }

  @override
  ErrorModel decodingFromJson(String str) {
    return ErrorModel.fromJson(json.decode(str));
  }

  @override
  String encodingToJson() {
    return json.encode(toJson());
  }

  @override
  String toString() {
    return 'ErrorModel($statusCode): $message';
  }
}

class Errors {
  List<String>? errors;

  Errors({this.errors});

  Errors.fromJson(Map<String, dynamic> json) {
    errors = json['errors'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['errors'] = errors;
    return data;
  }
}
