package com.applovin.impl.adview;

import android.app.*;
import java.util.*;
import com.applovin.adview.*;
import android.content.*;
import com.applovin.sdk.*;
import com.applovin.impl.sdk.*;

class al implements Runnable
{
    final /* synthetic */ int a;
    final /* synthetic */ ah b;
    
    al(final ah b, final int a) {
        this.b = b;
        this.a = a;
        super();
    }
    
    @Override
    public void run() {
        if (this.b.e != null) {
            this.b.e.failedToReceiveAd(this.a);
        }
    }
}
