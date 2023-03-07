import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final String statusMessage;
  final bool success;
  final int statusCode;

  const ErrorMessageModel({
    required this.statusMessage,
    required this.success,
    required this.statusCode,
  });
  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
      statusMessage: json['status_message'],
      success: json['success'],
      statusCode: json['status_code'],
    );
  }

  @override
  List<Object?> get props => [
        statusCode,
        statusMessage,
        success,
      ];
}
