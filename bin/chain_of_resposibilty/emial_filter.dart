abstract class EmailFilter {
  EmailFilter? m_nextFilter ;

  EmailFilter(EmailFilter? m_nextFilter){
    this.m_nextFilter= m_nextFilter;
  }
  check(String email){}
  
  void filter(String email){
    if(!check(email)){
      if(this.m_nextFilter != null){
        this.m_nextFilter!.filter(email);
      }
    }
  }
  

}