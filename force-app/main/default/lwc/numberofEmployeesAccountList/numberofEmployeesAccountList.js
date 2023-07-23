import { LightningElement,wire } from 'lwc';
    import queryaccountsbyEmployeeNumber from '@salesforce/apex/accountlistLWC1.queryforNumberofemployees1';

export default class NumberofEmployeesAccountList extends LightningElement {
    numberOfEmployees = null;
    handleChange(event){
        this.numberOfEmployees = event.detail.value;
    }
    reset (){
        this.numberOfEmployees = null;
    }
    @wire(queryaccountsbyEmployeeNumber,{ numberOfEmployees : '$numberOfEmployees' })
    accounts;
}