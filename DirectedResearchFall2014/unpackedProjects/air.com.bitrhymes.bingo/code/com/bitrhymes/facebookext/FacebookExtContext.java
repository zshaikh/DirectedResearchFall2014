package com.bitrhymes.facebookext;

import com.facebook.android.*;
import com.facebook.*;
import android.content.*;
import com.adobe.fre.*;
import java.util.*;
import com.bitrhymes.facebookext.functions.*;

public class FacebookExtContext extends FREContext
{
    public static Facebook facebook;
    public static LoginActivity facebookLoginActivity;
    public static Session session;
    
    public static void updateFBSession(final String s, final String s2, final String applicationId) {
        final Context applicationContext = FacebookExt.context.getActivity().getApplicationContext();
        if (FacebookExtContext.session != null && FacebookExtContext.session.isOpened()) {
            return;
        }
        final Session build = new Session.Builder(applicationContext).setApplicationId(applicationId).build();
        Label_0124: {
            if (s == null || s.length() <= 0) {
                break Label_0124;
            }
            FacebookExt.log("FBAuthorize, existing accesstoken");
            final SharedPreferences$Editor edit = applicationContext.getSharedPreferences("facebook-session", 0).edit();
            edit.putString("access_token", (String)null);
            edit.commit();
            final AccessToken fromExistingAccessToken = AccessToken.createFromExistingAccessToken(s, null, null, null, null);
            try {
                if (!build.isOpened()) {
                    build.open(fromExistingAccessToken, (Session.StatusCallback)new Session.StatusCallback() {
                        @Override
                        public void call(final Session activeSession, final SessionState sessionState, final Exception ex) {
                            if (ex != null) {
                                FacebookExt.log("FBAuthorize, Session migration failed with error: " + ex.toString());
                                return;
                            }
                            Session.setActiveSession(activeSession);
                            if (sessionState.equals(SessionState.OPENED_TOKEN_UPDATED)) {
                                FacebookExt.log("FBAuthorize, Session opened from migrated token, the token have been updated");
                                return;
                            }
                            FacebookExt.log("FBAuthorize, Session opened from migrated token");
                        }
                    });
                }
                FacebookExtContext.session = build;
            }
            catch (UnsupportedOperationException ex) {
                String string;
                if (ex != null) {
                    string = ex.toString();
                }
                else {
                    string = "null exception";
                }
                FacebookExt.log("FBAuthorize, Session migration failed with error: " + string);
                FacebookExt.context.dispatchStatusEventAsync("EXTEND_ACCESS_TOKEN_EVENT", "failed," + ex.toString());
                FacebookExtContext.session = null;
            }
        }
    }
    
    @Override
    public void dispose() {
        FacebookExt.context = null;
    }
    
    @Override
    public Map<String, FREFunction> getFunctions() {
        final HashMap<String, FBExtendAccessTokenFunction> hashMap = (HashMap<String, FBExtendAccessTokenFunction>)new HashMap<String, FBLogEventFunction>();
        hashMap.put("fbLogout", (FBLogEventFunction)new FBLogout());
        hashMap.put("extendAccessToken", (FBLogEventFunction)new FBExtendAccessTokenFunction());
        hashMap.put("fbAuthorize", (FBLogEventFunction)new FbAuthorizeFunction());
        hashMap.put("getSession", (FBLogEventFunction)new GetSession());
        hashMap.put("openRequestDialog", (FBLogEventFunction)new FBOpenRequestDialogFunction());
        hashMap.put("openParticularFriendRequestDialog", (FBLogEventFunction)new FBOpenParticularFriendRequestDialogFunction());
        hashMap.put("openFeedDialog", (FBLogEventFunction)new FBOpenFeedDialogFunction());
        hashMap.put("openParticularFriendFeedDialog", (FBLogEventFunction)new FBOpenParticularFriendFeedDialogFunction());
        hashMap.put("logPurchase", (FBLogEventFunction)new FBLogPurchaseFunction());
        hashMap.put("publishInstall", (FBLogEventFunction)new FBPublishInstallFunction());
        hashMap.put("setClientToken", (FBLogEventFunction)new FBSetClientToken());
        hashMap.put("pixelConversionUpdate", new FBLogEventFunction());
        return (Map<String, FREFunction>)hashMap;
    }
}
