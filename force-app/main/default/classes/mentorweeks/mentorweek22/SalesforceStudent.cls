public abstract class SalesforceStudent {
    
    public String batch;
    public String name;
    public Decimal average;

    public SalesforceStudent(){}

    public SalesforceStudent(String batch, String name){

        this.batch = batch;
        this.name = name;
    }

    public void welcome(){

        System.debug('Welcome to Cydeo Family');
    }
    
    /* public virtual void printInfo(){

        System.debug('The student ' + this.name + ' is at ' + this.batch + ' batch');
    } */

    public abstract void printInfo();   // after abstract

    public Decimal grade(Decimal quiz1, Decimal quiz2){

        average = (quiz1 + quiz2)/2;
        return average;
    }

}