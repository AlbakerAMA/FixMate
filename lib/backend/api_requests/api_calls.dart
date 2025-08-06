import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class DviceDetailsCall {
  static Future<ApiCallResponse> call({
    String? deviceName = '',
  }) async {
    final ffApiRequestBody = '''
{

  "model": "openai/o4-mini",

  "messages": [

    {

      "role": "system",

      "content": "أنت خبير تقني في إصلاح الأجهزة المنزلية. قدم معلومات تقنية مختصرة ومفيدة في 150-200 كلمة.\\n\\nلكل جهاز، اذكر المعلومات الأساسية التالية:\\n\\n**المواصفات الكهربائية:**\\n- الجهد والتيار والقدرة\\n\\n**قطع الغيار الرئيسية:**\\n- 3-4 قطع مهمة مع مقاساتها\\n\\n**للثلاجات:**\\n- نوع الفريون وكميته\\n- نوع الثرموستات\\n\\n**للغسالات:**\\n- مقاسات رمان البلي\\n- مقاسات الأحزمة\\n\\n**للمكيفات:**\\n- سعة التبريد BTU\\n- نوع الفريون\\n\\n**نصيحة صيانة سريعة**\\n\\nاكتب بشكل مختصر ومباشر بدون تفاصيل مطولة."

    },

    {

      "role": "user",

      "content": "${deviceName}"

    }

  ],

  "temperature": 0.1,

  "max_tokens": 1000,

  "top_p": 0.9,

  "frequency_penalty": 0.1,

  "presence_penalty": 0.1

}''';
    return ApiManager.instance.makeApiCall(
      callName: 'DviceDetails',
      apiUrl: 'https://openrouter.ai/api/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            '\tBearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? path(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
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

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
