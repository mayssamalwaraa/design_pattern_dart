import 'emial_filter.dart';

class SpamEmailFilter extends EmailFilter{

  SpamEmailFilter(EmailFilter? m_nextFilter ) :super(m_nextFilter){
    
  }
  @override
  check(String email) {
    bool res = email.contains("spam");
    if(res){
      print("Spam is Found");
    }
    return res;
  }

}