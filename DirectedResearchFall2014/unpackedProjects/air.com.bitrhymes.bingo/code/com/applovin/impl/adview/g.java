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

class g implements Runnable
{
    final /* synthetic */ AdViewControllerImpl a;
    
    g(final AdViewControllerImpl a) {
        this.a = a;
        super();
    }
    
    @Override
    public void run() {
        this.a.h.setVisibility(8);
    }
}
