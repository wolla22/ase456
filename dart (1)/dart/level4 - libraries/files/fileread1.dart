import 'dart:convert';
import 'dart:io';

// Let dart compiler guess the return type
Future readFile(String filePath) async {
  var res = await File(filePath).readAsString();
  return res;
}

void main() async {
  var r = await readFile('./file.txt'); 
  r.split('\n').forEach((val) { // PC may use \n\r instead
    print('val: ${val.length}');
  });
}

/*
val: 5
val: 5
val: 5
val: 0
*/