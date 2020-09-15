import 'package:http/http.dart' show Client;
import 'package:flutter_app1_platzi/model/photos.dart';

class API{
  static const baseUrl = 'http://jsonplaceholder.typicode.com/photos';

  final Client _client = Client();

  //Futuros son como las promesas de JavaScript
  Future<List<Photos>> getPhotos() async{
    List<Photos> photosList;
    final response = await _client.get(baseUrl);
    photosList = photosFromJson(response.body);

    return photosList;
  }
}