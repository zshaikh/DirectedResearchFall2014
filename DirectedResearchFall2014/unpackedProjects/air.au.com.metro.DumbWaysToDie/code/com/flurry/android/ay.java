package com.flurry.android;

import android.widget.*;
import android.content.*;
import android.view.*;
import java.util.concurrent.*;

final class ay implements Runnable
{
    private /* synthetic */ ac n;
    
    ay(final ac n) {
        this.n = n;
        super();
    }
    
    @Override
    public final void run() {
        if (ac.a(this.n)) {
            this.n.post(this.n.ar);
        }
    }
}
