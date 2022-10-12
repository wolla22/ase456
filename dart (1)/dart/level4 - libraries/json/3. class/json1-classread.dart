import 'dart:convert';
import 'dart:io';

class User {
  int id; String user; String password;
  User({required this.id, required this.user, required this.password});
}

// Let dart compiler guess the return type
Future readJsonFile(String filePath) async {
  var input = await File(filePath).readAsString();
  var map = json.decode(input);
  // {users: [{id: 1, user: user1, password: p455w0rd}, {id: 2, user: user2, pass: p455w0rd}]}
  return map['users'];
}

void main() async {
  var r = await readJsonFile('./file.json'); 
  /*
  {id: 1, user: user1, password: p455w0rd}
  {id: 2, user: user2, pass: p455w0rd}
  */
  var result = [];
  
  r.forEach((val) {
    var u = User(id:val['id'], user:val['user'], password:val['password']);
    result.add(u);
  });
  // result is a list of User object
  result.forEach((val) {
    print('${val.id} ${val.user} ${val.password}');
  });
}