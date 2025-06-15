// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations

class _ApiDataSource implements ApiDataSource {
  _ApiDataSource(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<ApiResponse<Meeting>> registerMeeting(
    MeetingCreateRequestDto dto,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'accept': 'application/json',
      r'content-type': 'application/json',
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = dto;
    final _options = _setStreamType<ApiResponse<Meeting>>(
      Options(
            method: 'POST',
            headers: _headers,
            extra: _extra,
            contentType: 'application/json',
          )
          .compose(
            _dio.options,
            '/meetings',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<Meeting> _value;
    try {
      _value = ApiResponse<Meeting>.fromJson(
        _result.data!,
        (json) => Meeting.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<List<Meeting>>> getMeetingList({
    String? meetingId,
    int? epochMs,
    int? pageSize,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'id': meetingId,
      r'epoch_ms': epochMs,
      r'page_size': pageSize,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{
      r'accept': 'application/json',
      r'content-type': 'application/json',
    };
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ApiResponse<List<Meeting>>>(
      Options(
            method: 'GET',
            headers: _headers,
            extra: _extra,
            contentType: 'application/json',
          )
          .compose(
            _dio.options,
            '/meetings',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<List<Meeting>> _value;
    try {
      _value = ApiResponse<List<Meeting>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                  .map<Meeting>(
                    (i) => Meeting.fromJson(i as Map<String, dynamic>),
                  )
                  .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<Meeting>> getMeeting(String meetingId) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'accept': 'application/json',
      r'content-type': 'application/json',
    };
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ApiResponse<Meeting>>(
      Options(
            method: 'GET',
            headers: _headers,
            extra: _extra,
            contentType: 'application/json',
          )
          .compose(
            _dio.options,
            '/meetings/${meetingId}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<Meeting> _value;
    try {
      _value = ApiResponse<Meeting>.fromJson(
        _result.data!,
        (json) => Meeting.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<void>> deleteMeeting(String meetingId) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'accept': 'application/json',
      r'content-type': 'application/json',
    };
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ApiResponse<void>>(
      Options(
            method: 'DELETE',
            headers: _headers,
            extra: _extra,
            contentType: 'application/json',
          )
          .compose(
            _dio.options,
            '/meetings/${meetingId}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<void> _value;
    try {
      _value = ApiResponse<void>.fromJson(_result.data!, (json) => () {}());
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<Meeting>> updateMeeting(
    String meetingId,
    MeetingUpdateRequestDto dto,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'accept': 'application/json',
      r'content-type': 'application/json',
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = dto;
    final _options = _setStreamType<ApiResponse<Meeting>>(
      Options(
            method: 'PUT',
            headers: _headers,
            extra: _extra,
            contentType: 'application/json',
          )
          .compose(
            _dio.options,
            '/meetings/${meetingId}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<Meeting> _value;
    try {
      _value = ApiResponse<Meeting>.fromJson(
        _result.data!,
        (json) => Meeting.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<ConnectToGoogleStatus>> getGoogleConnectStatus() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'accept': 'application/json',
      r'content-type': 'application/json',
    };
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ApiResponse<ConnectToGoogleStatus>>(
      Options(
            method: 'GET',
            headers: _headers,
            extra: _extra,
            contentType: 'application/json',
          )
          .compose(
            _dio.options,
            '/connects/google',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<ConnectToGoogleStatus> _value;
    try {
      _value = ApiResponse<ConnectToGoogleStatus>.fromJson(
        _result.data!,
        (json) => ConnectToGoogleStatus.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<ConnectToGoogleAuthorizationUrlDto>>
  getAuthUrlForGoogleConnect({required String fromUri}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'from_url': fromUri};
    final _headers = <String, dynamic>{
      r'accept': 'application/json',
      r'content-type': 'application/json',
    };
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<ApiResponse<ConnectToGoogleAuthorizationUrlDto>>(
          Options(
                method: 'GET',
                headers: _headers,
                extra: _extra,
                contentType: 'application/json',
              )
              .compose(
                _dio.options,
                '/connects/google/auth-url',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<ConnectToGoogleAuthorizationUrlDto> _value;
    try {
      _value = ApiResponse<ConnectToGoogleAuthorizationUrlDto>.fromJson(
        _result.data!,
        (json) => ConnectToGoogleAuthorizationUrlDto.fromJson(
          json as Map<String, dynamic>,
        ),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<void>> saveGoogleCredential(
    ConnectToGoogleRequestDto dto,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'accept': 'application/json',
      r'content-type': 'application/json',
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = dto;
    final _options = _setStreamType<ApiResponse<void>>(
      Options(
            method: 'POST',
            headers: _headers,
            extra: _extra,
            contentType: 'application/json',
          )
          .compose(
            _dio.options,
            '/connects/google',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<void> _value;
    try {
      _value = ApiResponse<void>.fromJson(_result.data!, (json) => () {}());
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<void>> deleteGoogleCredential() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'accept': 'application/json',
      r'content-type': 'application/json',
    };
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ApiResponse<void>>(
      Options(
            method: 'DELETE',
            headers: _headers,
            extra: _extra,
            contentType: 'application/json',
          )
          .compose(
            _dio.options,
            '/connects/google',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<void> _value;
    try {
      _value = ApiResponse<void>.fromJson(_result.data!, (json) => () {}());
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiResponse<List<CalendarEvent>>> getCalendarList() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'accept': 'application/json',
      r'content-type': 'application/json',
    };
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ApiResponse<List<CalendarEvent>>>(
      Options(
            method: 'GET',
            headers: _headers,
            extra: _extra,
            contentType: 'application/json',
          )
          .compose(
            _dio.options,
            '/calendars',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiResponse<List<CalendarEvent>> _value;
    try {
      _value = ApiResponse<List<CalendarEvent>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                  .map<CalendarEvent>(
                    (i) => CalendarEvent.fromJson(i as Map<String, dynamic>),
                  )
                  .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
