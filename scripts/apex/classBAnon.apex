ClassA a = new ClassA();
ClassA.classAmethod1();

ClassA a1 = new ClassA();
ClassA a2 = new ClassA();
ClassA.classAmethod1();


GeneralSetting.printFlag='on';
ClassA a11 = new ClassA();
ClassA a22 = new ClassA();
ClassA.classAmethod1();

ClassB b11 = new ClassB();
ClassB b22 = new ClassB();
ClassB.classBmethod1();



List<Integer> l= new List<Integer>{1,2,3,4,5,6,7,8,9,98,97,96,92,91,35,36,65};
l.sort();
System.debug( l);


List<Integer> l= new List<Integer>{1,2,3,4,5,6,7,8,9,98,97,96,92,91,35,36,65};
set<integer> l1= new set<integer>{ 1,2,3,4,5,6,9,7,8,9,89,56,54,54,65,65};
l1.addAll(l);

System.debug(l1);