package com.vungle.sdk;

import android.widget.*;
import android.content.*;

final class c extends ViewFlipper
{
    public c(final Context context) {
        super(context);
    }
    
    protected final void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
        }
        catch (IllegalArgumentException ex) {
            this.stopFlipping();
        }
    }
}
