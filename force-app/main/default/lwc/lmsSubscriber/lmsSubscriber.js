import { LightningElement, wire } from "lwc";
import MY_MESSAGE_CHANNEL from "@salesforce/messageChannel/MyChannel__c";
import { MessageContext , subscribe, unsubscribe } from "lightning/messageService";


export default class LmsSubscriber extends LightningElement {

    receivedMessage = '';
    
    @wire(MessageContext)
    messageContext; 

    // create a property to store the subscription returned by subscribe method
    subscription = null; 

    // use lifecycle method connectedCallBack to subscribe to the channel 
    // so we can get it ready when it's loaded 
    connectedCallback() {
        // check if the subscription already exists or not 
        if (! this.subscription) {
            // if it is not already exists now call subscribe method 
            // 1,  MessageContext we wired
            // 2,  the Message Channel we imported
            // 3,  the handler function that accept message and take some action
                    // usually this is arrow function message=> doSomething(message)
            subscribe(this.messageContext,
                      MY_MESSAGE_CHANNEL,
                      message => {
                          this.receivedMessage = message.myData; 
                      }
            )
    
        }
    }

    // clean up the subscription when the component is disconnected
    disconnectedCallback() {
        unsubscribe(this.subscription); 
        this.subscription = null; 
    }



}


// SAME CODE
// import { LightningElement, wire } from 'lwc';
// import { subscribe, unsubscribe, MessageContext } from 'lightning/messageService';
// import MY_MESSAGE_CHANNEL from '@salesforce/messageChannel/MyChannel__c';

// export default class MessageListener extends LightningElement {
//     // Variable to store the received message
//     receivedMessage = '';

//     // Variable to store the subscription
//     subscription = null;

//     // Use the message context wire adapter to access the Lightning Message Service
//     @wire(MessageContext)
//     messageContext;

//     // Subscribe to the message channel on component initialization
//     connectedCallback() {
//         this.subscribeToMessageChannel();
//     }

//     // Subscribe to the message channel
//     subscribeToMessageChannel() {
//         if (!this.subscription) {
//             // Create a new subscription with the provided message context, message channel, and callback function
//             this.subscription = subscribe(
//                 this.messageContext,
//                 MY_MESSAGE_CHANNEL,
//                 (message) => {
//                     this.handleMessage(message);
//                 }
//             );
//         }
//     }

//     // Handle the received message
//     handleMessage(message) {
//         if (message && message.myData) {
//             // Store the received message in the component variable
//             this.receivedMessage = message.myData;
//         }
//     }

//     // Unsubscribe from the message channel on component destruction
//     disconnectedCallback() {
//         unsubscribe(this.subscription);
//         // Clear the subscription variable
//         this.subscription = null;
//     }
// }