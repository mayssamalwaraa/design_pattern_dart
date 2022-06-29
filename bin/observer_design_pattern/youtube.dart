import 'IChannel.dart';
import 'IObserver.dart';
import 'video.dart';

class YoutubeChannel extends IChannel{
  String? name;
  List<IObserver> subscribers=[];
  List<Video> videos=[];

  YoutubeChannel(String? name){
    this.name= name;
  }
  @override
  void register(IObserver obs) {
     subscribers.add(obs);
  }

  @override
  void unregister(IObserver obs) {
     int? index = subscribers.indexOf(obs);
     if(index>0 && index<subscribers.length){
      subscribers.remove(obs);
     }
  }

  @override
  void notifyAll() {
    for(IObserver obs in subscribers){
      obs.update(this, videos.length -1);
    }
  }

  void addVideo(Video v){
    videos.add(v);
    notifyAll();
  }

  @override
  Video getVideoAt(int i) {
    return videos.elementAt(i);
  }
}