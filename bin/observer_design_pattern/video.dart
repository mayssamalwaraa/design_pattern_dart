class Video {
  String? name;
  String? type;

  Video(String? name,String? type){
    this.name = name;
    this.type= type;
  }
  
  void play(){
    print("the video is  $name");
  }
}