package com.facebook;

import android.content.*;
import android.os.*;

final class Settings$2 implements Runnable
{
    final /* synthetic */ Context val$applicationContext;
    final /* synthetic */ String val$applicationId;
    final /* synthetic */ Request$Callback val$callback;
    
    Settings$2(final Context val$applicationContext, final String val$applicationId, final Request$Callback val$callback) {
        this.val$applicationContext = val$applicationContext;
        this.val$applicationId = val$applicationId;
        this.val$callback = val$callback;
        super();
    }
    
    @Override
    public final void run() {
        final Response publishInstallAndWaitForResponse = Settings.publishInstallAndWaitForResponse(this.val$applicationContext, this.val$applicationId);
        if (this.val$callback != null) {
            new Handler(Looper.getMainLooper()).post((Runnable)new Settings$2$1(this, publishInstallAndWaitForResponse));
        }
    }
}
