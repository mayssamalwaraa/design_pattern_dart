import '../atm_machine.dart';
import 'atm_states.dart';
class NoCardState extends ATMStates{
  ATMMachine? atm;

  NoCardState(ATMMachine? atm){
    this.atm=atm;
  }
  @override
  void insertCard() {
     print("insert your card");
     atm!.setCurrentState(atm!.gethasCardState() as ATMStates);
  }

  @override
  void ejectCard() {
     print("no card inserted");
  }

  @override
  void insertPW(int pw) {
     print("insert your card first");
  }

  @override
  void requestCash(double amount) {
     print("insert your card first");
  }
}