import 'dart:convert';

import 'package:http/http.dart' as http;

class PostRepository{
  // 싱글톤 - 해당 타입의 객체가 프로그램에서 단 1개
  // 스태틱 변수 선언
  static PostRepository?_instance;

  PostRepository._(){
    count ++;
    print(count);
  }

  static int count = 0;

  static PostRepository get instance => _instance ??= PostRepository._();
  Future<List<PostDTOTable>?> getDTOList() async {
    String url = "https//jsonplaceholder.typicode.com/posts";

    http.Response response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      return PostDTOTable.fromJsonList(jsonDecode(response.body));
    }else{
      return null;
    }
  }
}
void main() {
  PostRepository.instance;
  PostRepository.instance;
  PostRepository.instance;

}