package com.flurry.android;

import android.content.*;
import android.app.*;
import android.webkit.*;
import java.util.*;
import android.net.*;
import android.widget.*;
import android.media.*;
import android.view.*;

final class o implements DialogInterface$OnDismissListener
{
    private /* synthetic */ cs I;
    
    o(final cs i) {
        this.I = i;
        super();
    }
    
    public final void onDismiss(final DialogInterface dialogInterface) {
        if (this.I.dW.dh != null && this.I.dW.dx != null) {
            this.I.dW.dx.onHideCustomView();
        }
    }
}
