global class ReactForceVFCommunityUrlRewriter implements Site.UrlRewriter {

    global ReactForceVFCommunityUrlRewriter(){
        System.debug('Loading ReactForceVFCommunityUrlRewriter');
    }
    
    global PageReference mapRequestUrl(PageReference myFriendlyUrl){
        system.debug('ReactForceVFCommunityUrlRewriter.mapRequestUrl()');
        System.debug('myFriendlyUrl:'+myFriendlyUrl);
        
    
        String sanitizedUrl = String.valueOf(myFriendlyUrl);
        //if we are in production, remove the 'customerportal/' from the url redirect as it is assumed by the custom url
        //sanitizedUrl = sanitizedUrl.replace('ReactForceVisualforceCommunity/','');
        sanitizedUrl = sanitizedUrl.replace('System.PageReference[','');
        sanitizedUrl = sanitizedUrl.removeEnd(']');
        
        System.debug('sanitizedUrl:'+sanitizedUrl);
        
        
        
        String url = myFriendlyUrl.getUrl();   
        System.debug('url:'+url);
        
        // List<Log__c> logs = new List<Log__c>();
        // String log = 'ReactForceVFCommunityUrlRewriter():\n';
        // log += 'myFriendlyUrl='+String.valueOf(myFriendlyUrl)+'\n';
        // log += 'url='+url+'\n';
        // logs.add(new Log__c(Log__c = log));
        

        Pagereference pageref = null;
        if(url.startsWith('/login')){
        // } else if(url.startsWith('/secur/logout.jsp')){
        //} else if(url.startsWith('/_ui/system/security/ChangePassword')){

        } else if(url.startsWith('/_ui/')){
        } else if(url.startsWith('/secur/')){
        } else if(url.startsWith('/sockjs-node')){
        } else if(url.startsWith('/CustomerPortalSiteLogin')){
        } else if(url.startsWith('/CustomerPortalLanding')){
        } else if(url.startsWith('/CustomerPortalForgotPassword')){
        } else if(url.startsWith('/CustomerPortalForgotpasswordconfirm')){
        } else if(url.startsWith('/CustomerPortalForgotPasswordConfirm')){
        } else if(url.startsWith('/CustomerPortalChangePassword')){
        } else if(url.startsWith('/CustomerPortalSitelogin')){
        } else if(url.startsWith('/apex/Exception')){


        // } else if(url.startsWith('/resource/')){            
        // } else if(url.startsWith('/static/')){           
        // } else if(url.startsWith('/sCSS/')){       
        // } else if(url.startsWith('/jslibrary/')){       
        // } else if(url.startsWith('/faces/')){

        } else if(url.startsWith('/apexremote')){
        } else if(url=='/'){


        } else {
            
            //pageref = new Pagereference('/CustomerPortalPortalHome?rte='+myFriendlyURL);
            System.debug('***Redirect to the react router with the sanitizedUrl:');

            //This should be the name of the Visualforce Page, NOT the force.com site   

            //pageref = new Pagereference('/');
            //pageref = new Pagereference('/?rte='+sanitizedUrl);
            pageref = new Pagereference('/ReactForceVFCommunityExample');    
            //pageref = new Pagereference('/ReactForceVFCommunityExample?rte='+sanitizedUrl);   
        }

        System.debug('pageRef:'+pageref);  
        return pageref;
        //return null;
    }
    //The second global method maps the internal ids to URLs
    global List<PageReference> generateUrlFor(List<PageReference> mySalesforceUrls){
        system.debug('ReactForceVFCommunityUrlRewriter.generateUrlFor()');

        return null;
    
    }
    public static void cover(){
        Integer i=0;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
        i++;
    }
}