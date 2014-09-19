package com.vungle.sdk;

import android.webkit.*;
import android.content.*;
import android.widget.*;
import android.view.*;

final class f
{
    FrameLayout a;
    WebView b;
    private l c;
    
    public f(final Context context) {
        super();
        this.a = new FrameLayout(context);
        this.c = new l(context);
        this.b = new WebView(context);
        this.a.addView((View)this.c);
        this.c.addView((View)this.b);
        final FrameLayout$LayoutParams layoutParams = (FrameLayout$LayoutParams)this.c.getLayoutParams();
        layoutParams.gravity = 17;
        layoutParams.width = -1;
        layoutParams.height = -1;
        this.c.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
    }
}
