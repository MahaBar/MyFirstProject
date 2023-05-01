public class Person {
  // name, age, height
  // instance fields|variables
  public String name;
  public Integer age;
  public Decimal height;

  // create a void method called print name
  // it should simply print message
  // printing the person name
  public void printName() {
    System.debug('printing the person name ' + name);
                                            //+ this.name );
  }

  // Create a void method called printAge
  // age of the person is : xx
  public void printAge() {
    System.debug('age of the person is : ' + age);
  }   
                                        // this.age
  // Create a void method called describePerson
  // print yhe instance field values in below format
  // NameXX is AgeXX and Height is HeightXX
  public void describePerson(){
    System.debug(name + ' is ' + age 
                + ' and height is ' + height);  
  }

  // Create a void method called changeName
  // it should accept one external data as text
  // (it has 1 String parameter)
  // it should be simply change the name field of
  // current object calling the method to new name
  public void changeName(String newName){
    name = newName ; // reassign the value
    // this.name = newName ;  
  }

  // Create a void method called setAgeAndHeight
  // it should accept 2 parameters
  // newAge as Integer, newHeight as Double
  // it should be simply change the name age, height field of
  // current object calling the method 
  public void setAgeAndHeight(Integer newAge, Double newHeight){
    this.age    = newAge;          // age = newAge;
    this.height = newHeight;    //height = newHeight;
  }

  // create a void method called setPersonInfo
  // it should accept 3 parameters
  //  name as String 
  //  age as Integer  
  //  height as Decimal
  // it should be simply change the name, age,height field of 
  // current object calling the method
  public void setPersonInfo(String name, Integer age, Decimal height){
    this.name       = name;
    this.age        = age;
    this.height     = height;
  }

  // create a method called getAllCapName
  // This method should 
  // make the name of the current object uppercase
  // and return it to the caller
  public String getAllCapName(){

    String upName = this.name.toUpperCase();
    // return keyword is used
    // to return the value to the caller of this method 
    return upName ;
    // return this.name.toUpperCase();
  }

  // Create a method called isEligibleForVote
  // expect no external data 
  // return true the age of current Person object 
  // is 18 or above , otherwise return false 
  public Boolean isEligibleForVote(){

    if( this.age >= 18 ){
        return true; 
    }else {
        return false; 
    }
    // return this.age >= 18 ;
  }

  // Create a method called getAgeGroup
  // it does not have any method parameter
  // it return age group based on below criteria
  // 0-6 Little Kid
  // 6-12 Young Kid
  // 12-18 Teenager
  // 18+ Adult
  // <0 or >120 Invalid !!!
  public String getAgeGroup(){

    if(this.age<0 || this.age> 120){
       return 'Invalid';
    }else if (this.age>=0 && this.age<6) {
       return 'Little Kid';
    }else if (this.age>=6 && this.age<12) {
      return 'Young Kid';
    }else if (this.age>=12 && this.age<18) {
      return 'teenager';
    }else{
      return 'Adult';
    }
  }

  // create a method called isHigherThan 
  // it accept 1 external data(argument) as Decimal 
  // return true if height of current person object 
  // is higer than this number , otherwise false 
  public Boolean isHigherThan(Decimal otherHeight){
                 // this is already a boolean result
  return  this.height > otherHeight ; 

  }

}




















































































