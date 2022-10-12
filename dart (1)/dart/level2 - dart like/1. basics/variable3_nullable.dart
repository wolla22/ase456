nullable1() {
/*
    int value;
    print(value);
    
    Non-nullable variable 'value' must be assigned before it can be used.
    print(value);
*/
// So, we should initalize a value
    int value = 0;
    print(value);
// Or, we should make a nullable variable
    int? value2;
    print(value2);  
}

nullable2() {
    int? nullable = 0;
    print(nullable);
    // convert nullable into notNullable using ! operator
    int notNullable = nullable!;
    print(notNullable);
}

nullable3() {
    int? nullable = 10;
    int nonNullable = nullable ?? 0; // ?? checks nullable is null and returns 0 if so
    print(nonNullable);
    
    double? pi = 3.14; double? pi2;
    // final round1 = pi.round(); // Not compile
    final round = pi?.round(); // ?. checks if pi is null and doesn't use round() but returns null 
    print(round); // 3
    final round2 = pi2?.round();
    print(round2); // It doesn't raise an error, instead it return null 
}

void main()
{
    nullable1(); 
    nullable2();
    nullable3();
}