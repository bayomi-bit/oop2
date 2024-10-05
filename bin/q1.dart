void main(){
downloadFile();
}
Future<void> downloadFile() async{
  return await Future.delayed(Duration(milliseconds: 3000), () => print('file downloaded'));
}

