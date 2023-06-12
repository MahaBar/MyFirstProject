import getAccountByName from "@salesforce/apex/AccountController.getAccountByName";
import { LightningElement , wire} from "lwc";
export default class SingleAccountSearch extends LightningElement {

    searchInput = 'GenePoint'; 

    handleSearchChange(event) {
        this.searchInput = event.target.value; 
    }

    @wire(getAccountByName, {accName:'$searchInput'} )
    theAccount; 

}