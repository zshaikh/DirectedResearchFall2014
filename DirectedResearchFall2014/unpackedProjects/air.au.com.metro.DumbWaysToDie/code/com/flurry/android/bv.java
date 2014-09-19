package com.flurry.android;

import android.content.*;
import android.app.*;
import android.webkit.*;
import java.util.*;
import android.net.*;
import android.widget.*;
import android.media.*;
import android.view.*;

final class bv implements DialogInterface$OnDismissListener
{
    private /* synthetic */ bn dW;
    
    bv(final bn dw) {
        this.dW = dw;
        super();
    }
    
    public final void onDismiss(final DialogInterface dialogInterface) {
        if (this.dW.du != null) {
            this.dW.du.loadUrl("javascript:if(window.mraid){window.mraid.close();};");
        }
    }
}
