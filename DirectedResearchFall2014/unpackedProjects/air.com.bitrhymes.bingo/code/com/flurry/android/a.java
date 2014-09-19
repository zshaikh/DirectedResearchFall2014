package com.flurry.android;

import android.content.*;
import java.util.concurrent.atomic.*;
import java.nio.*;
import android.location.*;
import android.app.*;
import java.io.*;
import org.apache.http.entity.*;
import org.apache.http.*;
import org.apache.http.params.*;
import org.apache.http.client.methods.*;
import android.content.pm.*;
import android.os.*;
import java.net.*;
import android.util.*;
import android.telephony.*;
import java.util.*;

final class a extends bk
{
    private /* synthetic */ boolean a;
    final /* synthetic */ Context b;
    final /* synthetic */ FlurryAgent c;
    
    a(final FlurryAgent c, final boolean a, final Context b) {
        this.c = c;
        this.a = a;
        this.b = b;
        super();
    }
    
    @Override
    public final void a() {
        this.c.o();
        this.c.u();
        if (!this.a) {
            this.c.aG.postDelayed((Runnable)new s(this), FlurryAgent.aA);
        }
        if (FlurryAgent.n()) {
            db.c("FlurryAgent", "Attempting to persist AdLogs");
            this.c.Q.S();
            db.c("FlurryAgent", "Attempting to persist FreqCap");
            this.c.Q.U();
        }
    }
}
