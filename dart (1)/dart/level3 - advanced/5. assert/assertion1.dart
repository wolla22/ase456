// In release mode, every assert is ignored by the compiler and you’re guaranteed that 
// they won’t interfere with the execution flow. Assertions work only in debug mode.
void assert1()
{
    int x = 10;
    assert(x == 10, "X should be 10"); 
    x = 20;
    assert(x == 10, "X should be 10"); 
    x = 30;
}

void main()
{
    assert1(); 
}