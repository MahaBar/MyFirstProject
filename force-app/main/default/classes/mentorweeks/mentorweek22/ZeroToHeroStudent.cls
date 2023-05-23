public class ZeroToHeroStudent extends SalesforceStudent implements Studyable {
    
    public Integer groupNumber;

    public ZeroToHeroStudent(){

        this('Awesome batch', 'Great student', 100);
    }

    public ZeroToHeroStudent(String batch, String name, Integer groupNumber){

        this.batch = batch;
        this.name = name;
        this.groupNumber = groupNumber;
    }

    public override void printInfo(){

        System.debug('The student\'s group number is ' + this.groupNumber);
    }

    /* public override void welcome(){

        System.debug('Welcome to Alumni Batch');
    } */

    public void study(){

        System.debug('Zero to Hero student ' + this.name + ' is studying App Builder Exam');
    }

}