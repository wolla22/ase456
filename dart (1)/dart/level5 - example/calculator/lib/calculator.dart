import 'package:expressions/expressions.dart';

int example_1(exp) {
  // Parse expression:
  var expression = Expression.parse(exp);
  Map<String, dynamic> context = {};

  // Evaluate expression
  final evaluator = const ExpressionEvaluator();
  var r = evaluator.eval(expression, context);

  return r;
}
