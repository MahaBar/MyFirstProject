import { LightningElement } from "lwc";
export default class FoodStand extends LightningElement {

    // oneItem = {
    //     foodName: 'sushi',
    //     calories: 500
    // }

    selectedFood = 'NONE';      



    foodArray = [
        { id: 1, foodName: 'Pizza', calories: 285 },
        { id: 2, foodName: 'Burger', calories: 250 },
        { id: 3, foodName: 'Pasta', calories: 131 },
        { id: 4, foodName: 'Sushi', calories: 200 },
        { id: 5, foodName: 'Taco', calories: 156 },
        { id: 6, foodName: 'Salad', calories: 152 },
        { id: 7, foodName: 'Sandwich', calories: 300 },
        { id: 8, foodName: 'Fried Chicken', calories: 320 },
        { id: 9, foodName: 'Steak', calories: 679 },
        { id: 10, foodName: 'Lobster', calories: 129 }
    ];


    handleChildPickEvent(event) {
        console.log('Parent has received the event ready to respond')
        // printing out the event that received from the child 
        // console.log(event);
        // how do we get the data sent out from the child
        // event.detail ==>> will return the data sent out from the child
        this.selectedFood = event.detail; 
    }

}