import 'package:calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(example_1('1+2+3'), 6);
    expect(example_1('10*2+3'), 10 * 2 + 3);
  });
}
