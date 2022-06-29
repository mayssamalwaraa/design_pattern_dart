import 'dart:io';

import 'IChannel.dart';
import 'IObserver.dart';
import 'video.dart';

class Subscriber extends IObserver {
  String? name;
  int? age;

  Subscriber(String? name,int? age){
      this.name = name;
      this.age= age;
  }
  
  @override 
  void update(IChannel ch , int i ){
    print("New video for you $name press 1 to paly");
    // String? num = stdin.readLineSync();
    // int num1 = num as int;
    // if(num1 == 1){
      Video v1 = ch.getVideoAt(i);
      v1.play();
    // }
  }
}