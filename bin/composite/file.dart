import 'file_system.dart';

class FileS extends IFileSystem {
  String? fileName ;
  double? fileSize;

  FileS(String? fileName , double? fileSize){
    this.fileName=fileName;
    this.fileSize=fileSize;
  }
  
  @override
  double? getSize() {
    return fileSize;
    
  }
}