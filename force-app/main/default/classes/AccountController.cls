public with sharing class AccountController {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList() {
        return [SELECT Id, Name FROM Account where type='Prospect' WITH USER_MODE];
    }
}