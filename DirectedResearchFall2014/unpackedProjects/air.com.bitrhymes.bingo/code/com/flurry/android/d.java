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

final class d extends bk
{
    private /* synthetic */ Context b;
    private /* synthetic */ FlurryAgent c;
    private /* synthetic */ boolean f;
    
    d(final FlurryAgent c, final Context b, final boolean f) {
        this.c = c;
        this.b = b;
        this.f = f;
        super();
    }
    
    @Override
    public final void a() {
        if (!this.c.aN) {
            this.c.b(this.b);
        }
        FlurryAgent.a(this.c, this.b, this.f);
    }
}
