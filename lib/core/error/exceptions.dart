import 'package:movies/core/network/error_msg_model.dart';

class ServerException implements Exception{
  final ErrorMessageModel errorMessageModel;

  const ServerException({

    required this.errorMessageModel});


}