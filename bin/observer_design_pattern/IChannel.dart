import 'IObserver.dart';
import 'video.dart';

class IChannel {
  void register(IObserver obs){}
  void unregister(IObserver obs){}
  void notifyAll(){}
  getVideoAt(int i){}
}