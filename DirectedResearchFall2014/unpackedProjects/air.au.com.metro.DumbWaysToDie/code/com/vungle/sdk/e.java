package com.vungle.sdk;

import android.webkit.*;
import android.content.*;
import android.widget.*;
import android.view.*;

final class e
{
    FrameLayout a;
    WebView b;
    
    public e(final Context context) {
        super();
        this.a = new FrameLayout(context);
        this.b = new WebView(context);
        this.a.addView((View)this.b);
        final FrameLayout$LayoutParams layoutParams = (FrameLayout$LayoutParams)this.b.getLayoutParams();
        layoutParams.gravity = 17;
        layoutParams.width = -1;
        layoutParams.height = -1;
        this.b.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
    }
}
