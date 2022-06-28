import 'isp.dart';
import 'tarrasul.dart';

class Proxy extends ISP{
  Tarassul? ts;
  List<String> blocksites=[];

  Proxy(){
    this.ts= new Tarassul();
    blocksites.add("www.book.com");
  }

  void blockSite(String url){
    blocksites.add(url);
  }

  bool isBlocked(String url){
    return blocksites.contains(url);
  }

  @override
  getResourse(String url) {
    if(isBlocked(url)){
      return "Blocked site";
    }else {
      return ts!.getResourse(url);
    }
  }

}