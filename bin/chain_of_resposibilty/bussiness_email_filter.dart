import 'emial_filter.dart';

class BussinessEmailFilter extends EmailFilter{
    BussinessEmailFilter(EmailFilter? m_nextFilter ) :super(m_nextFilter){
    
  }
  @override
  check(String email) {
    bool res = email.contains("bussiness");
    if(res){
      print("bussiness is Found");
    }
    return res;
  }
}