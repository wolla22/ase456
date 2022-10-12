void loop1() {
    int i = 0; 
    int sum = 0;
    while (i < 10) { // 0 + .. + 9 = 45
        sum += i;
        i++;
    }
    print(sum);
}

void loop2() {
    int i = 0;
    int sum = 0;
    while (i < 10) { // 1 + 3 + 4 = 8
        i++;
        if (i == 2) continue;
        if (i == 5) break; 
        sum += i; 
    }
    print(sum);
}

void loop3() 
{
    int i = 0; 
    int sum = 0; 
    for (int i = 0; i < 10; i++) {
        sum += i;
    }
    print(sum);    
}

void main()
{
  loop1();
  loop2();
  loop3();
}