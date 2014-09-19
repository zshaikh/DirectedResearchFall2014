package com.flurry.android;

import android.app.*;
import android.webkit.*;
import android.content.*;
import java.util.*;
import android.net.*;
import android.widget.*;
import android.media.*;
import android.view.*;

final class q implements DialogInterface$OnShowListener
{
    private /* synthetic */ cs I;
    
    q(final cs i) {
        this.I = i;
        super();
    }
    
    public final void onShow(final DialogInterface dialogInterface) {
        if (this.I.dW.dB != null) {
            this.I.dW.dB.hide();
        }
    }
}
