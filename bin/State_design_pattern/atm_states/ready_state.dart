import '../atm_machine.dart';
import 'atm_states.dart';
class ReadyState extends ATMStates{
  ATMMachine? atm;

  ReadyState(ATMMachine? atm){
    this.atm=atm;
  }
  @override
  void insertCard() {
     print("There is a card ");
  }

  @override
  void ejectCard() {
     print("your card is ejected");
     atm!.setCurrentState(atm!.getNoCardState() as ATMStates);
  }

  @override
  void insertPW(int pw) {
     print("already password inserted");
  }

  @override
  void requestCash(double amount) {
     if(amount > (atm!.getBalance() as double) ){
      print("wrong amount");
     }else{
      print("take your money");
      atm!.setBalance((atm!.getBalance() as double)-amount);
      ejectCard();
     }
     if((atm!.getBalance() as double)==0.0){
      atm!.setCurrentState(atm!.getnoCashState() as ATMStates);
     }
  }

}