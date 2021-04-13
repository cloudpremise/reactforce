public without sharing class ReactForceUserContext {

    public static User userContext = [SELECT id, Name, ContactID, Contact.AccountId, Contact.Account.Name, LastPasswordChangeDate
                                      FROM User
                                      WHERE id = :UserInfo.getUserID()];
    public static Account acct = null;
    public static Contact cont = null;
    private static ID accountID = null;
    static {
        System.debug('Authenticated User:'+userContext);
        // try{
        //     system.debug('userContext' + userContext);
        //     // if(userContext.VemoContact__c == null || (userContext.VemoContact__c) == (userContext.ContactID)){
        //     //     schoolAccount = new Account(id = userContext.Contact.AccountId,
        //     //                                 Name = userContext.Contact.Account.Name);
        //     //     schoolContact = new Contact(id = userContext.ContactID);
        //     // } else if(String.isNotBlank(userContext.VemoContact__c)){
        //     //     schoolContact = [SELECT id, AccountID, Account.Name from Contact where id = :userContext.VemoContact__c];
        //     //     schoolAccount = new Account(id = schoolContact.AccountID,
        //     //                                 Name = schoolContact.Account.Name);
        //     // }        
        // } catch (Exception e){
        //     system.debug('error in ReactForceUserContext: ' + e);
        // }
    }
}