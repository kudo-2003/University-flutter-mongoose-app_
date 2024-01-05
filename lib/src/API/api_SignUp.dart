import 'package:http/http.dart' as http;

Future<void> addUser(String name, String phone, String email, String password) async {
  var api = Uri.parse('http://localhost:3000/api/user');

  var bodyUser = {
      'name': name,
      'phone': phone,
      'email': email,
      'password': password,
    };

  var response = await http.post(api, body: bodyUser);

  if (response.statusCode == 200) {
    print('User added successfully.');
  } else if (response.statusCode == 500) {
     print('error.');
}}