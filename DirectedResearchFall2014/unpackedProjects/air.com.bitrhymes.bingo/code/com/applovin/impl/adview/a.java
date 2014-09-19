package com.applovin.impl.adview;

import java.util.*;
import com.applovin.adview.*;
import android.app.*;
import java.util.concurrent.atomic.*;
import android.content.*;
import android.os.*;
import java.lang.reflect.*;
import android.widget.*;
import android.view.*;
import android.webkit.*;
import com.applovin.sdk.*;
import android.util.*;

class a implements Runnable
{
    final /* synthetic */ String a;
    final /* synthetic */ Map b;
    final /* synthetic */ AdViewControllerImpl c;
    
    a(final AdViewControllerImpl c, final String a, final Map b) {
        this.c = c;
        this.a = a;
        this.b = b;
        super();
    }
    
    @Override
    public void run() {
        this.c.i.handleCommandInvocation(this.a, this.b);
    }
}
