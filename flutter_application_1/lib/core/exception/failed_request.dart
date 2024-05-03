import 'package:flutter_application_1/core/exception/base_exception.dart';

class RequestFailedException extends BaseException {
  final int? statusCode;
  RequestFailedException({this.statusCode})
      : super("API request failed with statuscode $statusCode");
}
