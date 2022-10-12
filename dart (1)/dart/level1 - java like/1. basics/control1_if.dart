// if, switch
void if1() {
    int medal = 1; 
    int price; 
    
    // If statement, the same as Java
    if (medal == 1) {
        price = 10;
    }
    else if (medal == 2) price = 20;
    else price = 30;
    
    // Switch statement
    switch (medal) {
        case 1: price = 10; break;
        case 2: price = 20; break;
        default: price = 30; 
    }
}

void if2() {
  int x = 10;
  int y = 20;
  String z;
  z = (x > y) ? 'X' : 'Y'; // expression
  print(z); 
}

void main()
{
  if1();
  if2();
}