import 'dart:ffi';

import 'file_system.dart';

class FolderS extends IFileSystem{
  String? folderName;
  List<IFileSystem> childerns=[];

  FolderS(String? folderName){
    this.folderName=folderName;
     
  }
  
  @override
  double? getSize() {
    double? res =0.0;
    for(IFileSystem fs in childerns){
       res = res! + fs.getSize()!;
    }
    return res;
  }

  @override
  void add(IFileSystem fs) {
    childerns.add(fs);
  }

  @override
  void remove(IFileSystem fs) {
    childerns.remove(fs);
  }
}