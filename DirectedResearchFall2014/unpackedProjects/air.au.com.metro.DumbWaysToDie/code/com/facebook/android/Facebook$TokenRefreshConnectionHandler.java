package com.facebook.android;

import java.lang.ref.*;
import android.os.*;
import android.net.*;
import android.app.*;
import com.facebook.*;
import java.util.*;
import android.content.*;
import android.content.pm.*;

class Facebook$TokenRefreshConnectionHandler extends Handler
{
    WeakReference connectionWeakReference;
    WeakReference facebookWeakReference;
    
    Facebook$TokenRefreshConnectionHandler(final Facebook referent, final Facebook$TokenRefreshServiceConnection referent2) {
        super();
        this.facebookWeakReference = new WeakReference((T)referent);
        this.connectionWeakReference = new WeakReference((T)referent2);
    }
    
    public void handleMessage(final Message message) {
        final Facebook facebook = (Facebook)this.facebookWeakReference.get();
        final Facebook$TokenRefreshServiceConnection facebook$TokenRefreshServiceConnection = (Facebook$TokenRefreshServiceConnection)this.connectionWeakReference.get();
        if (facebook != null && facebook$TokenRefreshServiceConnection != null) {
            final String string = message.getData().getString("access_token");
            final long accessExpires = 1000L * message.getData().getLong("expires_in");
            if (string != null) {
                facebook.setAccessToken(string);
                facebook.setAccessExpires(accessExpires);
                final Session access$200 = facebook.session;
                if (access$200 != null) {
                    LegacyHelper.extendTokenCompleted(access$200, message.getData());
                }
                if (facebook$TokenRefreshServiceConnection.serviceListener != null) {
                    final Bundle bundle = (Bundle)message.getData().clone();
                    bundle.putLong("expires_in", accessExpires);
                    facebook$TokenRefreshServiceConnection.serviceListener.onComplete(bundle);
                }
            }
            else if (facebook$TokenRefreshServiceConnection.serviceListener != null) {
                String string2 = message.getData().getString("error");
                if (message.getData().containsKey("error_code")) {
                    facebook$TokenRefreshServiceConnection.serviceListener.onFacebookError(new FacebookError(string2, null, message.getData().getInt("error_code")));
                }
                else {
                    final Facebook$ServiceListener serviceListener = facebook$TokenRefreshServiceConnection.serviceListener;
                    if (string2 == null) {
                        string2 = "Unknown service error";
                    }
                    serviceListener.onError(new Error(string2));
                }
            }
            if (facebook$TokenRefreshServiceConnection != null) {
                facebook$TokenRefreshServiceConnection.applicationsContext.unbindService((ServiceConnection)facebook$TokenRefreshServiceConnection);
            }
        }
    }
}
