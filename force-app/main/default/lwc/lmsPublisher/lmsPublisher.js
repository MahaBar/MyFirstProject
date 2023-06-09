import { LightningElement ,wire} from "lwc";
import MY_MESSAGE_CHANNEL from "@salesforce/messageChannel/MyChannel__c";
import { MessageContext,publish } from "lightning/messageService";

export default class LmsPublisher extends LightningElement {

    myData = ''; 

    // wire the MessageContext so we can pass it to publish method 
    @wire(MessageContext)
    messageContext; 

    handleInputChange(event) {
        this.myData = event.target.value; 
    }


    handleClick() {
        console.log('Button clicked ' + this.myData);


        // publish method will publish the message through
        // the MY_MESSAGE_CHANNEL using messageContext
        // it has 3 parameters
        // 1, the MessageContext we wired
        // 2, the MY_MESSAGE_CHANNEL
        // 3, the actual message you want to send in object 
        const message = {
            myData: this.myData
        }; 

        publish(this.messageContext, MY_MESSAGE_CHANNEL, message);
        

    }




}