package com.flurry.android;

import android.app.*;
import android.webkit.*;
import java.util.*;
import android.net.*;
import android.widget.*;
import android.media.*;
import android.content.*;
import android.view.*;

final class r extends Dialog
{
    private /* synthetic */ cs I;
    
    r(final cs i, final Context context, final int n) {
        this.I = i;
        super(context, n);
    }
    
    public final boolean dispatchTouchEvent(final MotionEvent motionEvent) {
        final Activity k = this.I.dW.dK;
        boolean dispatchTouchEvent = false;
        if (k != null) {
            dispatchTouchEvent = this.I.dW.dK.dispatchTouchEvent(motionEvent);
        }
        return dispatchTouchEvent;
    }
    
    public final boolean dispatchTrackballEvent(final MotionEvent motionEvent) {
        final Activity k = this.I.dW.dK;
        boolean dispatchTrackballEvent = false;
        if (k != null) {
            dispatchTrackballEvent = this.I.dW.dK.dispatchTrackballEvent(motionEvent);
        }
        return dispatchTrackballEvent;
    }
}
