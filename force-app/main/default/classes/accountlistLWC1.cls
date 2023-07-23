public with sharing class accountlistLWC1 {
    @AuraEnabled(cacheable=true)
    public static list<account> queryforNumberofemployees1 (integer numberofemployees){
        return[
            SELECT name
            FROM account
            WHERE NumberOfEmployees >= :numberofemployees
            ];


    }
    
}