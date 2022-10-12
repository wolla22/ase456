typedef ftype(int a, int b);

// no return type is needed
int add (int x, int y) { return(x + y); }
int sub (int x, int y) => (x - y);

// the parameter of example1 is function reference
int example1(ftype f)
{
  return f(10, 20);
}

void main() {
    print(add(10, 20)); // add() is a value, not a function reference
    print(example1(add)); // add is a function reference
    print(example1(sub));

    // () => ...; anonymous function is function reference
    print(example1((x, y) => (x + y)));
    // () { } anonymous function is function reference
    print(example1((x, y) {
      return (x - y);
    }));
}