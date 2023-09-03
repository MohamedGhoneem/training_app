import 'dart:async';
import 'dart:convert';
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
        statusCode = 0;
        message = exception.message;
        break;

      case FormatException():
        statusCode = 0;
        message = exception.message;
        break;

      case TimeoutException():
        statusCode = 0;
        message = exception.message;
        break;

      case HttpException():
        statusCode = 0;
        message = exception.message;
        break;

      default:
        statusCode = 0;
        message = exception;
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
  ErrorModel fromJson(json) {
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
