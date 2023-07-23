import { LightningElement ,wire } from 'lwc';
import queryaccountsbyEmployeeNumber from '@salesforce/apex/c/numberOfEmployeesResetExample.queryaccountsbyEmployeeNumber';

export default class NumberOfEmployeesResetExample extends LightningElement {

    numberOfEmployees = null;
    handleChange(event){
        this.numberOfEmployees =event.detail.value;
    }
    reset(){
        this.numberOfEmployees = null;
    }
    @wire(queryaccountsbyEmployeeNumber,{numberOfEmployees:'$numberOfEmployees'})
    accounts;
}