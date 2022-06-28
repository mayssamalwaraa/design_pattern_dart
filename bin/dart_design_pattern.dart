

// import 'dart:html';

import 'Singletone/singletone_design_pattern.dart';
import 'State_design_pattern/atm_machine.dart';
import 'chain_of_resposibilty/email_filter_builder.dart';
import 'chain_of_resposibilty/emial_filter.dart';
import 'composite/file.dart';
import 'composite/file_system.dart';
import 'composite/folder.dart';
import 'protection_design_pattern/isp.dart';
import 'protection_design_pattern/proxy.dart';
import 'visitor_design_pattern/Ivisitor.dart';
import 'visitor_design_pattern/contact/Icontact.dart';
import 'visitor_design_pattern/contact/call.dart';
import 'visitor_design_pattern/contact/message.dart';
import 'visitor_design_pattern/get_price_visitor.dart';
import 'visitor_design_pattern/get_price_visitor2.dart';

void main(List<String> arguments) {
  //State Design pattern 
//  ATMMachine atm = new ATMMachine(100.0);
//  atm.insertCard();
//  atm.insertPW(123);
//  atm.requestCash(50.0);
//  atm.ejectCard();

// Chain of Resposibility 

// String spamEmail = "this email is a spam";
// String bussinessEmail = "this email is a bussiness";
// String normalEmail = "this email is a normal";

// EmailFilter emailFilter = EmailFilterBuilder.buildFilter();

// emailFilter.filter(spamEmail);
// emailFilter.filter(bussinessEmail);
// emailFilter.filter(normalEmail);

//singletone 
// hascode to get the id of instance 
// LoginDialoge lo = LoginDialoge.getInstance() as LoginDialoge;
// LoginDialoge lo2 = LoginDialoge.getInstance() as LoginDialoge;
// LoginDialoge lo3 = LoginDialoge.getInstance() as LoginDialoge;
// LoginDialoge lo4 = LoginDialoge.getInstance() as LoginDialoge;
// print(lo.hashCode);
// print(lo2.hashCode);
// print(lo3.hashCode);
// print(lo4.hashCode);

//composite
// IFileSystem folder1 = new FolderS("mayssam");
// IFileSystem folder2 = new FolderS("manaf");

// IFileSystem file1 = new FileS("f1", 5.5);
// IFileSystem file2 = new FileS("f2", 6.5);
// IFileSystem file3 = new FileS("f3", 7.5);

// folder1.add(file1);
// folder1.add(file2);
// folder1.add(file3);

// folder2.add(folder1);
// folder2.add(file2);

// print("the size of folder2 is :${folder2.getSize()}");
// print("the size of folder1 is :${folder1.getSize()}");

//visitor
// Ivisitor first = new GetPriceVisitor();
// Ivisitor secondOffer = new GetPriceVisitor2();
// Icontact call = new Call(6);
// Icontact message = new Message(5);

// call.getPrice(first);
// message.getPrice(first);

// call.getPrice(secondOffer);
// message.getPrice(secondOffer);

//proxy
Proxy proxytarassul = new Proxy();
print(proxytarassul.getResourse("www.facebook.com"));
print(proxytarassul.getResourse("www.twiter.com"));
print(proxytarassul.getResourse("www.google.com"));

proxytarassul.blockSite("www.facebook.com");
print(proxytarassul.getResourse("www.facebook.com"));


}
