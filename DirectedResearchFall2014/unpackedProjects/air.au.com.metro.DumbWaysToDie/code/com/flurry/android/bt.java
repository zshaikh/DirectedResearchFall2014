package com.flurry.android;

import android.app.*;
import android.webkit.*;
import android.content.*;
import java.util.*;
import android.net.*;
import android.widget.*;
import android.media.*;
import android.view.*;

final class bt implements DialogInterface$OnClickListener
{
    private /* synthetic */ cw dU;
    private /* synthetic */ int dV;
    private /* synthetic */ bn dW;
    
    bt(final bn dw, final cw du, final int dv) {
        this.dW = dw;
        this.dU = du;
        this.dV = dv;
        super();
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("sourceEvent", this.dU.eW);
        this.dW.a("userCanceled", hashMap, this.dW.M, this.dW.L, this.dW.N, 1 + this.dV);
        dialogInterface.dismiss();
        if (this.dW.dt != null && this.dW.ad() == 3) {
            this.dW.dt.start();
        }
    }
}
