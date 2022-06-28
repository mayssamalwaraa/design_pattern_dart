
import 'atm_states/atm_states.dart';
import 'atm_states/has_card_state.dart';
import 'atm_states/no_card_state.dart';
import 'atm_states/no_cash_state.dart';
import 'atm_states/ready_state.dart';
class ATMMachine {
   ATMStates? currentState;
   NoCardState? noCardState;
   HasCardState? hasCardState;
   ReadyState? readyState;
   NoCashState? noCashState;
   double? balance;

   ATMMachine(double balance){
    this.balance = balance;
    this.currentState = new NoCardState(this);
    this.noCardState = new NoCardState(this);
    this.hasCardState = new HasCardState(this);
    this.readyState = new ReadyState(this);
    this.noCashState = new NoCashState(this);
   }

   void insertCard(){
    currentState!.insertCard();
   }
   void ejectCard(){
    currentState!.ejectCard();
   }
   void insertPW(int pw){
    currentState!.insertPW(pw);
   }
   void requestCash(double amount){
    currentState!.requestCash(amount);
   }
   void setCurrentState(ATMStates atms){
    this.currentState = atms;
   }
   ATMStates? getCurrentState(){
    return currentState;
   }
   void setBalance(double balance){
    this.balance = balance;
   }
   double? getBalance(){
    return balance;
   }
   NoCardState? getNoCardState(){
    return noCardState;
   }
   HasCardState? gethasCardState(){
    return hasCardState;
   }
   ReadyState? getreadyState(){
    return readyState;
   }
   NoCashState? getnoCashState(){
    return noCashState;
   }


 
}