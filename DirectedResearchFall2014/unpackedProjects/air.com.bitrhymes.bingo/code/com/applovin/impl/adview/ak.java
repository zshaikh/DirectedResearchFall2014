package com.applovin.impl.adview;

import android.app.*;
import java.util.*;
import com.applovin.adview.*;
import android.content.*;
import com.applovin.sdk.*;
import com.applovin.impl.sdk.*;

class ak implements Runnable
{
    final /* synthetic */ AppLovinAd a;
    final /* synthetic */ ah b;
    
    ak(final ah b, final AppLovinAd a) {
        this.b = b;
        this.a = a;
        super();
    }
    
    @Override
    public void run() {
        if (this.b.e != null) {
            this.b.e.adReceived(this.a);
        }
    }
}
