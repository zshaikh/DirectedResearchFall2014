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

class q extends TimerTask
{
    final /* synthetic */ p a;
    
    q(final p a) {
        this.a = a;
        super();
    }
    
    @Override
    public void run() {
        if (this.a.a.currentlyWaiting) {
            Log.d(AdViewControllerJsInterface.TAG, "Timeout was reached, expiring video notification.");
            this.a.a.interruptNotify = true;
            return;
        }
        Log.d(AdViewControllerJsInterface.TAG, "Timeout was reached, notification has already finished.");
    }
}
