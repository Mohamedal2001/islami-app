import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:islami_app/modules/radio/Api/RadioApi.dart';

import '../model/Radio.dart';

class RdioProvider extends ChangeNotifier {
  final player = AudioPlayer();
  late RadioApi radioApi=RadioApi();
   List<RadioModel>? radios;
  int index=0;
  bool isplay=true;
   
bool isLoading=false;
  Future fetchRadio() async{
    isLoading=true;

    try{
      radios= await radioApi.getRadio();
    }catch(e){
      print('Error fetching radios: $e');
    }
    finally {
      isLoading = false;
      notifyListeners();
    }

  }
  // change(int radioIndex){
  //     index = radioIndex;
  //     notifyListeners();
  // }
  play(int index) async{
    isplay=!isplay;
await player.play(UrlSource(radios![index].url??""));
   await player.resume();
    notifyListeners();
  }
  pause() async{
    isplay=!isplay;
   await player.pause();
    notifyListeners();
  }
  right(){
  isplay=  isplay?isplay:!isplay;
    index++;
    player.pause();
    notifyListeners();

  }
  left(){
    isplay= isplay?isplay:!isplay;
    index--;
    player.pause();
    notifyListeners();

  }

}