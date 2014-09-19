package com.applovin.impl.adview;

import android.app.*;
import com.applovin.adview.*;
import android.content.*;
import android.widget.*;
import android.view.*;
import com.applovin.sdk.*;
import android.os.*;

class ag implements Runnable
{
    final /* synthetic */ ab a;
    
    ag(final ab a) {
        this.a = a;
        super();
    }
    
    @Override
    public void run() {
        try {
            this.a.dismiss();
        }
        catch (Throwable t) {
            if (this.a.b != null) {
                this.a.b.e("InterstitialAdDialog", "dismiss() threw exception", t);
            }
        }
    }
}
