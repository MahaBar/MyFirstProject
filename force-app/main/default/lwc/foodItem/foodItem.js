import { LightningElement, api } from "lwc";
export default class FoodItem extends LightningElement {

    // item = {
    //     foodName: 'Pizza',
    //     calorie: 2000
    // }
    @api
    item; 

    // handleClick() {
        
    // handle click will fire a custom event 
    // called pick
    // and parent component can listen to the event
    // and take whatever action it needs to take
        
    // this is how we create custom event 
    //     const myEvent = new CustomEvent('pick');
    // this is how we dispatch a event 
    //     this.dispatchEvent(myEvent); 
    //     console.log('child dispatched an event called pick')
    //     console.log(myEvent); 

    // }

    handleClick() {
        // this is how we get the name of the food item 
          console.log(this.item.foodName);
          
        // this is how we can create event called pick 
        // and send data a long with it by providing 
        // second parameter as object {detail:ThePrimitiveDataYouWantToSend}
        const myEvent = new CustomEvent("pick", {
          detail: this.item.foodName
        });
          this.dispatchEvent(myEvent); 
          
      
      }
    


}