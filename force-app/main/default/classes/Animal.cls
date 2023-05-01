public abstract class Animal {        
    // instance fields name, age
    public String name;
    public Integer age;

    // constructor to set those 2 fields 
    public Animal(String name,Integer age){
        this.name=name;
        this.age=age;
    }
    // abstract method called make makeNoise 
    public abstract void makeNoise(); 

    //create abstract method called getInfo
    //it has param as food 
    //return String
    public abstract String getInfo(String food);

}