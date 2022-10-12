import 'dart:convert';

main()
{
  var encoded = json.encode([1, 2, { "a": null }]);
  var decoded = json.decode('["foo", { "bar": 499 }]');
  print(encoded);
  print(decoded);
}

/*
[1,2,{"a":null}]
[foo, {bar: 499}]
*/