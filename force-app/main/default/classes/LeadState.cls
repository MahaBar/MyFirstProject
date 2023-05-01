public class LeadState {
    
    public static String setPriority(String leadState){

        if(String.isBlank(leadState) || leadState.length() > 2){
            return null;
        }
        String priority;

        if(leadState == 'CA'){
            priority = 'High';
        }else{
            priority = 'Normal';
        }

        return priority;
    }

}