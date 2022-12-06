// creating new instance.

Cat sfCat= new Cat();
sfCat.name='ginger';
sfCat.color='orange';
System.debug('sf cat'+ sfCat);

Cat batch12Cat = new Cat('hakki','pink');
System.debug(batch12Cat);

Cat batch12Cat2 = new Cat('somba','brown');
system.debug(batch12Cat2);

Cat batch12Cat3= new Cat(5,6);
System.debug(batch12Cat3);

System.debug( 'number of cats =>'+Cat.countCat);
