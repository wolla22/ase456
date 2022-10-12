void final1()
{
    // final is var that cannot be changed
    final name = "Alberto";
    // name = "Albert"; // 'name' is final and cannot be changed
    print(name);
}

void const1()
{
    const value = 3 * 15; // dart compiler replaces value 45 (3*15) at compile time
    print(value); // the same as print(45); 
}
    
void main()
{
  final1();
  const1();
}