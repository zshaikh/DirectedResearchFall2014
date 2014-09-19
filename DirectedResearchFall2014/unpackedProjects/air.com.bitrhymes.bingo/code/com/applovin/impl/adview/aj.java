package com.applovin.impl.adview;

import android.app.*;
import java.util.*;
import com.applovin.adview.*;
import android.content.*;
import com.applovin.sdk.*;
import com.applovin.impl.sdk.*;

class aj implements Runnable
{
    final /* synthetic */ boolean a;
    final /* synthetic */ boolean b;
    final /* synthetic */ ah c;
    
    aj(final ah c, final boolean a, final boolean b) {
        this.c = c;
        this.a = a;
        this.b = b;
        super();
    }
    
    @Override
    public void run() {
        if (this.a && this.b) {
            this.c.i();
            return;
        }
        this.c.h();
    }
}
