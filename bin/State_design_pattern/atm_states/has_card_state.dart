
import '../atm_machine.dart';
import 'atm_states.dart';

class HasCardState extends ATMStates{
  ATMMachine? atm;
  HasCardState(ATMMachine? atm){
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
     if(pw == 123){
      print("correct password");
      atm!.setCurrentState(atm!.getreadyState() as ATMStates);
     }else{
     print("wrong password");
     }
  }

  @override
  void requestCash(double amount) {
     print("Enter your password first");
  }

}