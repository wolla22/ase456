class Widget {
  final int x; 
  const Widget(this.x);
}

build({required Widget icon}) {
  print(icon.x);
}

void main()
{
  // Flutter uses this technique a lot 
  // We can give const Widget as an argument 
  build(icon:const Widget(10));
}