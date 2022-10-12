void collection_set() {
    var cities = {'New York', 'Chicago', 'London', 'London'};
    cities.add('Tokyo');
    print(cities); // No duplication
    var cities2 = {'Alexandria', 'Indianapolis', 'Chicago'};
    print(cities.union(cities2));
    print(cities.intersection(cities2));
    print(cities.difference(cities2));  
}

void main() {
    collection_set();
}