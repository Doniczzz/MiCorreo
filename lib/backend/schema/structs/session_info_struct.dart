// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SessionInfoStruct extends BaseStruct {
  SessionInfoStruct({
    String? accessToken,
    String? refreshToken,
    DateTime? expireIn,
  })  : _accessToken = accessToken,
        _refreshToken = refreshToken,
        _expireIn = expireIn;

  // "access_token" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;
  bool hasAccessToken() => _accessToken != null;

  // "refresh_token" field.
  String? _refreshToken;
  String get refreshToken => _refreshToken ?? '';
  set refreshToken(String? val) => _refreshToken = val;
  bool hasRefreshToken() => _refreshToken != null;

  // "expireIn" field.
  DateTime? _expireIn;
  DateTime? get expireIn => _expireIn;
  set expireIn(DateTime? val) => _expireIn = val;
  bool hasExpireIn() => _expireIn != null;

  static SessionInfoStruct fromMap(Map<String, dynamic> data) =>
      SessionInfoStruct(
        accessToken: data['access_token'] as String?,
        refreshToken: data['refresh_token'] as String?,
        expireIn: data['expireIn'] as DateTime?,
      );

  static SessionInfoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? SessionInfoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'access_token': _accessToken,
        'refresh_token': _refreshToken,
        'expireIn': _expireIn,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'access_token': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'refresh_token': serializeParam(
          _refreshToken,
          ParamType.String,
        ),
        'expireIn': serializeParam(
          _expireIn,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static SessionInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      SessionInfoStruct(
        accessToken: deserializeParam(
          data['access_token'],
          ParamType.String,
          false,
        ),
        refreshToken: deserializeParam(
          data['refresh_token'],
          ParamType.String,
          false,
        ),
        expireIn: deserializeParam(
          data['expireIn'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'SessionInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SessionInfoStruct &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        expireIn == other.expireIn;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([accessToken, refreshToken, expireIn]);
}

SessionInfoStruct createSessionInfoStruct({
  String? accessToken,
  String? refreshToken,
  DateTime? expireIn,
}) =>
    SessionInfoStruct(
      accessToken: accessToken,
      refreshToken: refreshToken,
      expireIn: expireIn,
    );
