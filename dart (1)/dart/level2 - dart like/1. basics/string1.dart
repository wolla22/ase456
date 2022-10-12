// Unlike Java, Dart can have functions
string1() {
    var courseName = 'ASE 456';
    // string interpolation 
    // concatenate string + in an interpolated string
    print('I like ${courseName + '!'}.'); 
    
    // escape string
    print('c:\\flutter \'hello\' <- escape string');
    
    // raw string 
    print(r"c:\flutter 'hello' <- raw string");
    print(r'c:\flutter ' '\'hello\'' '<- raw string');

    // Two ways to make a multi-line string
    print('a\n' 'b\n' 'c\n');
    print("""
a
b
c
""");
}

string2() {
    var str = 'I love ASE 456 and 456';
    print(str.contains('456'));    
    var str2 = str.replaceAll('456', '420');
    print(str); 
    print(str2); // str2 is referencing a newly generated object
}

void main() 
{
  string1();
  string2();
}