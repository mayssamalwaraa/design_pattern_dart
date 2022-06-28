import 'Ivisitor.dart';
import 'contact/call.dart';
import 'contact/message.dart';

class GetPriceVisitor2 extends Ivisitor{
  //visit
   @override
  void getPriceCall(Call call) {
      int? price = call.call_duration! * 1;
      print("The price with offer of call is ${price}");
    }
//visit
    @override
  void getPriceMessage(Message message) {
    int? price = message.message_length! * 2;
    print("The price with offer of message is ${price}");
  }
} 