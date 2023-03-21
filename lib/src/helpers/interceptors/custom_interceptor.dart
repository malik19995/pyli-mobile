import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:customerapp/src/helpers/logger.dart';

class AccessTokenInterceptor implements RequestInterceptor {
  static late String? token;

  @override
  FutureOr<Request> onRequest(Request request) {
    Log.e(token);
    return applyHeader(request, 'Authorization', 'Bearer $token');
  }
}
