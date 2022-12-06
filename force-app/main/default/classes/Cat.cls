public  class Cat {
    public String name;
    public String color;
    public static Integer countCat=0;

//constructor is called automatic when we create new INSTANCE of class.
// same class name with constructor
// there is no return type

    public Cat(){
        System.debug(' cat constructor called.');
        countCat++;



    }

    public Cat(String n, String clr){
        name = n;
        color= clr;
        countCat++;



    }
    public Cat( Integer i, Integer j){
        countCat++;
        

    }

    
}
