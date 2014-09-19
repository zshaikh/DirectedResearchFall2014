package com.bitrhymes.facebookext.functions;

import com.adobe.fre.*;
import com.facebook.*;
import com.bitrhymes.facebookext.*;

public class FBLogout implements FREFunction
{
    public static String accessToken;
    public static String appId;
    public static String expiresTime;
    
    @Override
    public FREObject call(final FREContext context, final FREObject[] array) {
        try {
            FacebookExt.context = context;
            FacebookExt.log(" FBLogout  " + Session.getActiveSession());
            FacebookExt.log(" FacebookExtContext.session  " + FacebookExtContext.session);
            if (FacebookExtContext.session != null) {
                FacebookExt.log(" session not null ");
                FacebookExtContext.session.closeAndClearTokenInformation();
                FacebookExtContext.session = null;
            }
            return null;
        }
        catch (IllegalStateException obj) {
            FacebookExt.log("  IllegalStateException : " + obj);
            obj.printStackTrace();
            return null;
        }
        catch (Exception obj2) {
            FacebookExt.log(" Exception : " + obj2);
            obj2.printStackTrace();
            return null;
        }
    }
}
