package com.facebook.widget;

import android.os.*;

public interface FacebookDialog$Callback
{
    void onComplete(FacebookDialog$PendingCall p0, Bundle p1);
    
    void onError(FacebookDialog$PendingCall p0, Exception p1, Bundle p2);
}
