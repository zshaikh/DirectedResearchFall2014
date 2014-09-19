package com.facebook;

import android.util.*;
import android.net.*;
import android.app.*;
import android.content.*;
import com.facebook.internal.*;
import org.json.*;
import android.os.*;
import java.util.*;

final class AppLinkData$1 implements PlatformServiceClient$CompletedListener
{
    final /* synthetic */ AppLinkData$CompletionHandler val$completionHandler;
    
    AppLinkData$1(final AppLinkData$CompletionHandler val$completionHandler) {
        this.val$completionHandler = val$completionHandler;
        super();
    }
    
    @Override
    public final void completed(final Bundle bundle) {
        AppLinkData access$000 = null;
        while (true) {
            if (bundle == null) {
                break Label_0078;
            }
            final String string = bundle.getString("com.facebook.platform.APPLINK_ARGS");
            final long long1 = bundle.getLong("com.facebook.platform.APPLINK_TAP_TIME_UTC", -1L);
            access$000 = createFromJson(string);
            if (long1 == -1L) {
                break Label_0078;
            }
            try {
                if (access$000.arguments != null) {
                    access$000.arguments.put("com.facebook.platform.APPLINK_TAP_TIME_UTC", long1);
                }
                if (access$000.argumentBundle != null) {
                    access$000.argumentBundle.putString("com.facebook.platform.APPLINK_TAP_TIME_UTC", Long.toString(long1));
                }
                this.val$completionHandler.onDeferredAppLinkDataFetched(access$000);
            }
            catch (JSONException ex) {
                Log.d(AppLinkData.TAG, "Unable to put tap time in AppLinkData.arguments");
                continue;
            }
            break;
        }
    }
}
