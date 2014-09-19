package com.flurry.android;

import android.app.*;
import android.text.*;
import android.webkit.*;
import android.net.*;
import android.widget.*;
import android.media.*;
import android.content.res.*;
import android.os.*;
import android.content.*;
import java.util.*;
import android.view.*;

final class f
{
    private /* synthetic */ FlurryFullscreenTakeoverActivity h;
    
    private f(final FlurryFullscreenTakeoverActivity h, final byte b) {
        this.h = h;
        super();
    }
    
    public final boolean a(final String s, final boolean b) {
        final boolean c = a(s);
        boolean b2 = false;
        if (c) {
            this.h.C = new VideoView((Context)this.h);
            this.h.C.setFocusable(true);
            this.h.C.setFocusableInTouchMode(true);
            this.h.D = b;
            this.h.b(s);
            b2 = true;
        }
        return b2;
    }
}
