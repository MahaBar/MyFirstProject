public class ContactUpdateDepartment implements Queueable {
    
    List<Contact> conList;
    String updateDepartment;    // Cydeo Developer

    public ContactUpdateDepartment(List<Contact> conList, String updateDepartment){
        this.conList = conList;
        this.updateDepartment = updateDepartment;
    }

    public void execute(QueueableContext context){

        for(Contact each : conList){

            each.Department = updateDepartment;
        }

        update conList;
    }

}