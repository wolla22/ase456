// We can use """...""" just like python

var query = """
        SELECT name, surname, age
        FROM people
        WHERE age >= 18
        ORDER BY name DESC
""";

void main()
{
    print(query);
}

/*
        SELECT name, surname, age
        FROM people
        WHERE age >= 18
        ORDER BY name DESC
*/