package com.applovin.impl.adview;

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
import java.util.*;
import android.util.*;

class k implements Runnable
{
    final /* synthetic */ AdViewControllerImpl a;
    
    k(final AdViewControllerImpl a) {
        this.a = a;
        super();
    }
    
    @Override
    public void run() {
        try {
            this.a.h.loadDataWithBaseURL("/", "<html></html>", "text/html", (String)null, "");
        }
        catch (Exception ex) {}
    }
}
