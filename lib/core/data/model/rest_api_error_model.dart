import 'package:kupi_i_tochka/core/data/model/rest_api_validation_error.dart';

class RestApiValidationErrorModel {
  final String fieldName;
  final List<RestApiValidationError> errorList;

  RestApiValidationErrorModel({
    required this.fieldName,
    required this.errorList,
  });

  factory RestApiValidationErrorModel.fromJson(Map<String, dynamic> json) {
    return RestApiValidationErrorModel(
      fieldName: json['fieldName'] as String,
      errorList: (json['errorList'] as List)
          .map((e) => RestApiValidationError.fromJson(e))
          .toList(),
    );
  }
}
