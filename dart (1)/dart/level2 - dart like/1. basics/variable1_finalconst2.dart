wrong() {
    String text = 'I like pizza';
    String topping = 'with tomatoes';
    String favourite = '$text $topping';
    String newText = favourite. replaceAll ('pizza', 'pasta');
    print(newText);        
}
better() {
    const text = 'I like pizza';
    const topping = 'with tomatoes';
    const favourite = '$text $topping';
    final newText = favourite. replaceAll ('pizza', 'pasta') ;
    print(newText);    
}

void main()
{
  wrong();
  better();
}