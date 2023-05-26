import { LightningElement } from "lwc";
export default class Practice11 extends LightningElement {

    searchKey = ''; 

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
    // initialize the value with same value as foodArray
    filteredFoods = this.foodArray; 


    handleSearchKeyChange(event) {
        this.searchKey = event.target.value;
        // filter the foodArray according to searchKey 
        // and assign it to the filteredFoods
        this.filteredFoods = this.foodArray.filter(each =>
            each.foodName.toLowerCase().includes( this.searchKey.toLowerCase() )
        );
    }


}

/**
 let filteredFoods = foodArray.filter(each =>
    each.foodName.toLowerCase().includes( searchKey.toLowerCase() )
);

 */