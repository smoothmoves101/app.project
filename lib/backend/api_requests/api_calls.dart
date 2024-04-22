import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SendemailCall {
  static Future<ApiCallResponse> call({
    String? toEmail = '',
    String? subject = '',
    String? content = '',
  }) async {
    final ffApiRequestBody = '''
{
  "personalizations": [
    {
      "to": [
        {
          "email": "${toEmail}"
        }
      ],
      "subject": "${subject}"
    }
  ],
  "content": [
    {
      "type": "text/plain",
      "value": "${content}"
    }
  ],
  "from": {
    "email": "walkerjandlservices@gmail.com",
    "name": "WalkerJanitorialAndLandscapingServices"
  },
  "reply_to": {
    "email": "walkerjandlservices@gmail.com",
    "name": "WalkerJanitorialAndLandscapingServices"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendemail',
      apiUrl: 'https://api.sendgrid.com/v3/mail/send',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '',
        'SG.y6re0MJjQlGHOwiOfGPsgg.MiH5_4c8WmxfmgFFAlhinwA--wNL5NjJ30-Lx-nFvK':
            '',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
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
