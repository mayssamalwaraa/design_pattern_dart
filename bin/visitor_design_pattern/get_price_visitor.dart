// import 'dart:html';

import 'Ivisitor.dart';
import 'contact/call.dart';
import 'contact/message.dart';

class GetPriceVisitor extends Ivisitor{
  //visit
   @override
  void getPriceCall(Call call) {
      int? price = call.call_duration! * 13;
      print("The price of call is ${price}");
    }
//visit
    @override
  void getPriceMessage(Message message) {
    int? price = message.message_length! * 6;
    print("The price of message is ${price}");
  }
  }