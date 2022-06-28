import '../Ivisitor.dart';
import 'Icontact.dart';

class Message extends Icontact{
  int? message_length;

  Message(int? message_length){
    this.message_length=message_length;
  }
 //accept
  @override
  void getPrice(Ivisitor visitor) {
      visitor.getPriceMessage(this);
  }
}