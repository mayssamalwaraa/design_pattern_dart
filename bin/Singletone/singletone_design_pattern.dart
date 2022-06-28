class LoginDialoge{
  static LoginDialoge? loginDialogeInstance = null;
  LoginDialoge(){
    print("constructor is created once onlly");
  }
  static LoginDialoge? getInstance(){
    if(loginDialogeInstance == null){
      loginDialogeInstance = new LoginDialoge();
    }
    return loginDialogeInstance;
  }
}