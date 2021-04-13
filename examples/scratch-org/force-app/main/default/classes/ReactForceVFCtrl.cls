public with sharing class ReactForceVFCtrl {
    //Without sharing is critical on this class - it determines whether or not the data can be retrieved
    //based upon the authenticated user.  If this page is rendered externally, the community user will
    //only be able to see their own data.  If it is set to without sharing all of the data would be available
    
    public ReactForceVFCtrl(){
        System.debug('Loading ReactForceVFCtrl');
        ReactForceUserContext ctx = new ReactForceUserContext();
    }
    
    public ReactForceVFCtrl(ApexPages.StandardController stdCon) {
        ReactForceUserContext ctx = new ReactForceUserContext();
        // this.resourceId = ApexPages.currentPage().getParameters().get('id');
        // List<sked__Resource__c> resources = [SELECT Id FROM Account WHERE sked__User__c = :UserInfo.getUserId()];
        // if (resources != NULL && !resources.isEmpty()) {
        //     this.currentUserResourceId = resources.get(0).Id;
        // }
    }

    @RemoteAction
    public static Account getAccount(String accountId){
        System.debug('ReactForceVFCtrl.getAccount()');
        List<Account> accounts = new List<Account>();
        accounts = [Select Id, Name, AccountNumber from Account where Id =: accountId];
        
        return accounts[0];
    } 
    
    @RemoteAction
    public static Account createAccount(Account acc){
        System.debug('ReactForceVFCtrl.createAccount()');
        insert acc;
        return acc;    
    }
    
    @RemoteAction
    public static Account updateAccount(Account acc){
        System.debug('ReactForceVFCtrl.updateAccount()');
        update acc;
        return acc;    
    }
    
    @RemoteAction
    public static void deleteAccount(String accountId){
        System.debug('ReactForceVFCtrl.deleteAccount()');
        delete [Select Id from Account where Id =: accountId];    
    }
}