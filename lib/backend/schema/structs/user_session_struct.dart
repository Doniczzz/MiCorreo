// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserSessionStruct extends BaseStruct {
  UserSessionStruct({
    String? token,
    String? refreshToken,
    int? expire,
  })  : _token = token,
        _refreshToken = refreshToken,
        _expire = expire;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;
  bool hasToken() => _token != null;

  // "refreshToken" field.
  String? _refreshToken;
  String get refreshToken => _refreshToken ?? '';
  set refreshToken(String? val) => _refreshToken = val;
  bool hasRefreshToken() => _refreshToken != null;

  // "expire" field.
  int? _expire;
  int get expire => _expire ?? 0;
  set expire(int? val) => _expire = val;
  void incrementExpire(int amount) => _expire = expire + amount;
  bool hasExpire() => _expire != null;

  static UserSessionStruct fromMap(Map<String, dynamic> data) =>
      UserSessionStruct(
        token: data['token'] as String?,
        refreshToken: data['refreshToken'] as String?,
        expire: castToType<int>(data['expire']),
      );

  static UserSessionStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UserSessionStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'token': _token,
        'refreshToken': _refreshToken,
        'expire': _expire,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
        'refreshToken': serializeParam(
          _refreshToken,
          ParamType.String,
        ),
        'expire': serializeParam(
          _expire,
          ParamType.int,
        ),
      }.withoutNulls;

  static UserSessionStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserSessionStruct(
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
        refreshToken: deserializeParam(
          data['refreshToken'],
          ParamType.String,
          false,
        ),
        expire: deserializeParam(
          data['expire'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UserSessionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserSessionStruct &&
        token == other.token &&
        refreshToken == other.refreshToken &&
        expire == other.expire;
  }

  @override
  int get hashCode => const ListEquality().hash([token, refreshToken, expire]);
}

UserSessionStruct createUserSessionStruct({
  String? token,
  String? refreshToken,
  int? expire,
}) =>
    UserSessionStruct(
      token: token,
      refreshToken: refreshToken,
      expire: expire,
    );
