import 'package:dio/dio.dart';
import 'package:islami_app/modules/radio/model/Radio.dart';

class RadioApi {
  Dio dio = Dio();

  Future<List<RadioModel>>getRadio() async {
    try {
      var response = await dio.get(
          "https://www.mp3quran.net/api/v3/radios?language=ar");
      if (response.statusCode == 200) {
        //print("Successfuly get the radio${response.data}");
        final List<dynamic> data = response.data['radios'];
        final allRadio = data.map((radio) => RadioModel.fromjson(radio)).toList();
        return allRadio;

      } else {
        throw Exception(
            'Failed to load radios. Status code: ${response.statusCode}');
      }
    }
    catch (e) {
      print('Error fetching radios: $e');
      throw Exception('Error fetching radios');
    }
  }
}