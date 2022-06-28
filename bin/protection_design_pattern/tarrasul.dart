import 'isp.dart';

class Tarassul extends ISP{
  @override
  String? getResourse(String url) {
    String? res;
    if(url.contains("www.google.com")){
      res = "google";
    }else if(url.contains("www.facebook.com")){
      res = "facebook";
    }else{
      res = "404";
    }
    return res;
     }
}