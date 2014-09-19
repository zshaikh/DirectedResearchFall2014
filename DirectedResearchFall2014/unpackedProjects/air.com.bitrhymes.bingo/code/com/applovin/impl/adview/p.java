package com.applovin.impl.adview;

import android.util.*;
import java.util.*;
import android.app.*;
import com.applovin.sdk.*;
import android.graphics.*;
import android.view.*;
import com.applovin.impl.sdk.*;
import android.content.*;
import android.net.*;
import java.io.*;

class p implements Runnable
{
    final /* synthetic */ AdViewControllerJsInterface a;
    
    p(final AdViewControllerJsInterface a) {
        this.a = a;
        super();
    }
    
    @Override
    public void run() {
        Log.d(AdViewControllerJsInterface.TAG, "Waiting for VideoView to report a valid value.");
        this.a.currentlyWaiting = true;
        new Timer().schedule(new q(this), 2000L);
        while (this.a.videoOverlay.getPercentViewed() == 0 && !this.a.interruptNotify) {}
        if (!this.a.interruptNotify) {
            this.a.currentlyWaiting = false;
            Log.d(AdViewControllerJsInterface.TAG, "Video view returned percent: " + this.a.videoOverlay.getPercentViewed());
            this.a.parentActivity.runOnUiThread((Runnable)new s(this.a));
            return;
        }
        Log.d(AdViewControllerJsInterface.TAG, "Notification was interrupted by timeout.");
    }
}
