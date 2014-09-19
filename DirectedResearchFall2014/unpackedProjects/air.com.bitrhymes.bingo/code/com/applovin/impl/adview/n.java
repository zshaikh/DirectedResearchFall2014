package com.applovin.impl.adview;

import java.util.*;
import android.app.*;
import android.view.*;
import com.applovin.sdk.*;
import android.graphics.*;
import com.applovin.impl.sdk.*;
import android.content.*;
import android.net.*;
import java.io.*;

class n implements Runnable
{
    final /* synthetic */ View a;
    final /* synthetic */ AdViewControllerJsInterface b;
    
    n(final AdViewControllerJsInterface b, final View a) {
        this.b = b;
        this.a = a;
        super();
    }
    
    @Override
    public void run() {
        this.b.parentView.removeView(this.a);
    }
}
