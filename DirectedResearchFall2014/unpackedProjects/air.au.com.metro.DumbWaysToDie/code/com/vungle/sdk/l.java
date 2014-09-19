package com.vungle.sdk;

import android.widget.*;
import android.content.*;
import android.view.*;

final class l extends FrameLayout
{
    private final double a;
    private final double b;
    
    public l(final Context context) {
        super(context);
        this.a = 1.0;
        this.b = 1.0;
    }
    
    protected final void onMeasure(final int n, final int n2) {
        final int size = View$MeasureSpec.getSize(n);
        final int size2 = View$MeasureSpec.getSize(n2);
        final double n3 = size;
        int n4;
        int n5;
        if (n3 > size2) {
            n4 = size2;
            n5 = size2;
        }
        else {
            final int n6 = (int)n3;
            n4 = size;
            n5 = n6;
        }
        super.onMeasure(View$MeasureSpec.makeMeasureSpec(n4, 1073741824), View$MeasureSpec.makeMeasureSpec(n5, 1073741824));
    }
}
