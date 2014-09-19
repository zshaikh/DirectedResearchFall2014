package com.flurry.android;

import android.widget.*;
import android.content.*;

final class ce extends VideoView
{
    public ce(final Context context) {
        super(context);
        this.setFocusable(true);
        this.setFocusableInTouchMode(true);
    }
    
    public final void seekTo(final int n) {
        if (n < this.getCurrentPosition()) {
            super.seekTo(n);
        }
    }
}
