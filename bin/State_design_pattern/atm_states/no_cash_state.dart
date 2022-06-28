import '../atm_machine.dart';
import 'atm_states.dart';
class NoCashState extends ATMStates {
  ATMMachine? atm;

  NoCashState(ATMMachine? atm){
    this.atm=atm;
  }
  @override
  void insertCard() {
     print("No cash");
     atm!.setCurrentState(atm!.gethasCardState() as ATMStates);
  }

  @override
  void ejectCard() {
     print("No card");
  }

  @override
  void insertPW(int pw) {
      print("No cash");
  }

  @override
  void requestCash(double amount) {
      print("No cash");
  }
}