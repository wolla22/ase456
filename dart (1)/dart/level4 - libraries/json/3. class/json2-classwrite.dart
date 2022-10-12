import 'dart:convert';
import 'dart:io';

class User {
  int id; String user; String password;
  User({required this.id, required this.user, required this.password});
}

Future writeJsonFile({required String filePath, required Map map}) async {
  var js = json.encode(map);;
  return await File(filePath).writeAsString(js);
}

void main() async {
  var listUsers = [
    User(id:1, user:'user1', password:'p455w0rd'), 
    User(id:2, user:'user2', password:'p445w0rd')
  ];
  
  // Create a map from a list of User objects
  var m = {};
  var l = [];
  listUsers.forEach((val) {
    var m2 = {'id': val.id, 'user':'${val.user}', 'password':'${val.password}'};
    l.add(m2);
  });
  m['users'] = l;

  var r = await writeJsonFile(filePath:'./file3.json', map:m); 
  print(r); // File: './file3.json'
}
