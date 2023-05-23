public class AlumniStudent extends SalesforceStudent implements Studyable {
    
    public Integer groupNumber;

    public AlumniStudent(String batch, String name, Integer groupNumber){

        super(batch, name);
        this.groupNumber = groupNumber;
    }

    public override void printInfo(){

        System.debug('The student\'s name is ' + super.name);
    }

    /* public override void welcome(){

        System.debug('Welcome to Alumni Batch');
    } */

    public void study(){

        System.debug('Alumni student ' + super.name + ' is studying Developer I Exam');
    }

}