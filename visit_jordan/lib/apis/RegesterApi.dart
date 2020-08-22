import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:visit_jordan/models/genral_response.dart';
import 'package:visit_jordan/utilities/Utilities.dart';

class RegesterApi{
  
Future<GeneralResponse> regester(String name,String email, String password) async{

var response= await http.post("${Utilities.baseUrl}Register.php",body:{"name":name,"email":email,"password":password});

var jsonData=jsonDecode(response.body);
  print(response.statusCode);

GeneralResponse generalResponse=GeneralResponse();

if(response.statusCode==200){
generalResponse.status=jsonData['status'];
generalResponse.message=jsonData['message'];
}else{
generalResponse.status=false;
generalResponse.message="Error occured";
}
return generalResponse;

}

}