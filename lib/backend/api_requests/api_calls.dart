import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start authenticationApiCalls Group Code

class AuthenticationApiCallsGroup {
  static String baseUrl =
      'https://keycloak-iam-clients-dev.apps.ocpbarr.correo.local/auth/realms/users';
  static Map<String, String> headers = {};
  static AuthenticationCall authenticationCall = AuthenticationCall();
  static EndSessionCall endSessionCall = EndSessionCall();
}

class AuthenticationCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'authentication',
      apiUrl:
          '${AuthenticationApiCallsGroup.baseUrl}/protocol/openid-connect/token',
      callType: ApiCallType.POST,
      headers: {
        ...AuthenticationApiCallsGroup.headers,
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'client_id': "user-service",
        'client_secret': "y5HfQcEV12nFfgxgidm7tFmZAZ9MbCwq",
        'grant_type': "password",
        'scope': "profile openid",
        'username': "${username}",
        'password': "${password}",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.access_token''',
      );
  dynamic expireUnix(dynamic response) => getJsonField(
        response,
        r'''$.expires_in''',
      );
  dynamic refreshToken(dynamic response) => getJsonField(
        response,
        r'''$.refresh_token''',
      );
}

class EndSessionCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'endSession',
      apiUrl:
          '${AuthenticationApiCallsGroup.baseUrl}protocol/openid-connect/logout',
      callType: ApiCallType.POST,
      headers: {
        ...AuthenticationApiCallsGroup.headers,
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End authenticationApiCalls Group Code

class TestCall {
  static Future<ApiCallResponse> call({
    String? firstName = '',
    String? lastName = '',
    String? typeIdentification = '',
    String? number = '',
    String? phoneNumber = '',
    String? emailAddress = '',
    String? password = '',
    String? source = '',
  }) {
    final body = '''
{
  "first_name": "${firstName}",
  "last_name": "${lastName}",
  "government_id": {
    "type": "${typeIdentification}",
    "number": "${number}"
  },
  "phone_number": "${phoneNumber}",
  "email_address": "${emailAddress}",
  "password": "${password}",
  "metadata": {
    "source": "${source}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TEST',
      apiUrl:
          'https://mcii-ms-user-microservicios-dev.apps.ocpbarr.correo.local/v1/users',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic titleError(dynamic response) => getJsonField(
        response,
        r'''$.title''',
      );
  static dynamic statusCode(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic detailError(dynamic response) => getJsonField(
        response,
        r'''$.detail''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
