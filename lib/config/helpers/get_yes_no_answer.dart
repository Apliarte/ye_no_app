


import 'package:dio/dio.dart';
import 'package:ye_no_app/domain/entities/message.dart';
import 'package:ye_no_app/infrastucture/models/yes_no_models.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future <Message> getAnswer()async{
    final response = await _dio.get('https://yesno.wtf/api');
    final yesNoModel = YesNoModel.fromJsonMap(response.data) ;
    return yesNoModel.toMessageEntity();

  }
}