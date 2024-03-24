import 'package:kupi_i_tochka/core/data/model/rest_api_error_model.dart';

class RemoteResponse<T> {
  final String? title;
  final String? detail;
  final List<RestApiValidationErrorModel>? errors;
  final T? result;

  RemoteResponse({
    this.title,
    this.detail,
    this.errors,
    this.result,
  });

  factory RemoteResponse.fromJson(
      Map<String, dynamic> json, T Function(dynamic)? fromJsonT) {
    final resultJson = json['result'];

    if (json.containsKey('title') &&
        json.containsKey('detail') &&
        json.containsKey('errors')) {
      return RemoteResponse<T>(
        title: json['title'],
        detail: json['detail'],
        errors: (json['errors'] as List<dynamic>)
            .map((e) => RestApiValidationErrorModel.fromJson(e))
            .toList(),
        result: null,
      );
    } else if (resultJson != null) {
      return RemoteResponse<T>(
        result: fromJsonT != null ? fromJsonT(resultJson) : null,
      );
    } else {
      throw UnimplementedError();
    }
  }
}

class DataRemoteResponse<T> extends RemoteResponse<T> {
  DataRemoteResponse({T? result}) : super(result: result);
}

class ErrorRemoteResponse<T> extends RemoteResponse<T> {
  ErrorRemoteResponse({
    required String title,
    required String detail,
    required List<RestApiValidationErrorModel> errors,
  }) : super(
          title: title,
          detail: detail,
          errors: errors,
          result: null,
        );
}
