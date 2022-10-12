conversion1() {
    var i = 10;
    var s = i.toString(); // from into to string
    var i2 = int.parse(s); // from string to int
    print('$i - $s - $i2');
    
    var f = 3.4578;
    var s2 = f.toStringAsFixed(2); // only two decimals after a point
    var f2 = double.parse(s2);
    var f3 = f2.round(); // 3.45 -> 3
    print('$f - $s2 - $f2 - $f3');
}

void main()
{
  conversion1();
}