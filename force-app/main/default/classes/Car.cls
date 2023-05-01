//public virtual class Car {

/**
* Abstract keyword used on the class with mark the class as abstract class
* it can NOT be instantiated meaning you can NOT directly create Car object
* using keyword
* Abstract Class means to be Parent class that extended by Child Classes
* Abstract method does NOT have a body (meaning no { } at all)
* abstract method must be overridden in the child or it will NOT compile 
         */


public abstract class Car{

    public String model ; 
    public Decimal price ; 

    // write a constructor to initialize default values for model, price
    // model : unknown model, price 10000
    public Car(){     
        // this.model = 'unknown model' ; 
        // this.price = 10000 ; 
        this('unknown model', 10000);
    }

    public Car(String model,Decimal price ){

        this.model = model ; 
        this.price = price ; 
    }

    /**
     * it should print message as below 
     * Car ModelGoesHere is driving
     * 
     * if a method is marked as virtual 
     * it can be overridden in the child class 
     */
    // public virtual void drive(){

    //     System.debug('Car '+ this.model + ' is driving'); 
    // }
    public abstract void drive();

}

























