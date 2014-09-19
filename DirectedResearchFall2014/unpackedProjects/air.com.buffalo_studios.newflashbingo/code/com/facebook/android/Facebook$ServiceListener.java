package com.facebook.android;

import android.os.*;

public interface Facebook$ServiceListener
{
    void onComplete(Bundle p0);
    
    void onError(Error p0);
    
    void onFacebookError(FacebookError p0);
}
