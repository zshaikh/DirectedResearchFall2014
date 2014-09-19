package com.facebook.android;

import android.os.*;

public interface Facebook$DialogListener
{
    void onCancel();
    
    void onComplete(Bundle p0);
    
    void onError(DialogError p0);
    
    void onFacebookError(FacebookError p0);
}
