import 'bussiness_email_filter.dart';
import 'emial_filter.dart';
import 'spam_email_filter.dart';

class EmailFilterBuilder {
  static EmailFilter buildFilter(){
    return new SpamEmailFilter(new BussinessEmailFilter(null));
  }
}