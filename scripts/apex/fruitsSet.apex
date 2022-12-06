Set<String> fruitSet= new Set<String>{'apple', 'orange', 'strawberry', 'grape'};

for( String eachFruit: fruitSet){ 

    system.debug(eachFruit);
}
Integer fruitSize= fruitSet.size();
System.debug('size of fruit set'+fruitSize);

fruitSet.add('apricot');
System.debug('updated set is'+fruitSet);

boolean containsApricot =fruitSet.contains('Apricot');
System.debug( 'checking list is '+containsApricot);

Boolean isSetEmpty= fruitSet.isEmpty();
system.debug('is fruit set empty'+isSetEmpty);