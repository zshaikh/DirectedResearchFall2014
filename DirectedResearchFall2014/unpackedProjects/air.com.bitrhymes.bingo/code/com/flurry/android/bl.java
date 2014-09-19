package com.flurry.android;

import android.content.*;
import android.view.*;
import android.widget.*;

final class bl extends ck
{
    @Override
    public final ViewGroup$LayoutParams a(final Context context, final AdSpaceLayout adSpaceLayout) {
        return (ViewGroup$LayoutParams)new AbsoluteLayout$LayoutParams(this.b(context, adSpaceLayout), this.c(context, adSpaceLayout), 0, 0);
    }
}
