global class ReactForcePublicSiteUrlRewriter implements Site.UrlRewriter {

    global ReactForcePublicSiteUrlRewriter(){
        System.debug('Loading ReactForcePublicSiteUrlRewriter');
    }
    
    global PageReference mapRequestUrl(PageReference myFriendlyUrl){
        system.debug('ReactForcePublicSiteUrlRewriter.mapRequestUrl()');
        System.debug('myFriendlyUrl:'+myFriendlyUrl);
        //if we are in production, remove the 'customerportal/' from the url redirect as it is assumed by the custom url
    
        String sanitizedUrl = String.valueOf(myFriendlyUrl);
        //sanitizedUrl = sanitizedUrl.replace('customerportal/','');
        sanitizedUrl = sanitizedUrl.replace('System.PageReference[','');
        sanitizedUrl = sanitizedUrl.removeEnd(']');
        
        System.debug('sanitizedUrl:'+sanitizedUrl);
        String url = myFriendlyUrl.getUrl();   
        System.debug('url:'+url);
        

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


        } else {
              
            System.debug('***Redirect to the react router***');
            
            //This configuration that works, this is based upon the Site url being = ReactForcePublicSiteExample and the VF Wrapper Page is also named ReactForcePublicSiteExample.page
            pageref = new Pagereference('/ReactForcePublicSiteExample'); //It seems to work without the ?rte trick.  I think this is based upon the history being loaded on react
        }

        System.debug('pageRef:'+pageref);  
        return pageref;
    }
    //The second global method maps the internal ids to URLs
    global List<PageReference> generateUrlFor(List<PageReference> mySalesforceUrls){
        system.debug('ReactForcePublicSiteUrlRewriter.generateUrlFor()');

        return null;
    
    }
}