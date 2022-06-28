import '../Ivisitor.dart';
import 'Icontact.dart';

class Call extends Icontact{
  int? call_duration;

  Call(int? call_duration){
    this.call_duration=call_duration;
  }
 //accept
  @override
  void getPrice(Ivisitor visitor) {
      visitor.getPriceCall(this);
  }
}