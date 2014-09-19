package com.applovin.impl.adview;

import android.widget.*;
import android.content.*;
import android.util.*;

public class AppLovinVideoView extends VideoView
{
    private int a;
    private int b;
    
    public AppLovinVideoView(final Context context) {
        this(context, null);
    }
    
    public AppLovinVideoView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public AppLovinVideoView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.a = 0;
        this.b = 0;
    }
    
    protected void onMeasure(final int n, final int n2) {
        if (this.a <= 0 || this.b <= 0) {
            super.onMeasure(n, n2);
            return;
        }
        final float n3 = this.b / this.getHeight();
        final float n4 = this.a / this.getWidth();
        int n5;
        int n6;
        if (n3 > n4) {
            n5 = (int)Math.ceil(this.b / n3);
            n6 = (int)Math.ceil(this.a / n3);
        }
        else {
            final int n7 = (int)Math.ceil(this.b / n4);
            final int n8 = (int)Math.ceil(this.a / n4);
            n5 = n7;
            n6 = n8;
        }
        this.setMeasuredDimension(n6, n5);
    }
    
    public void setVideoSize(final int a, final int b) {
        this.a = a;
        this.b = b;
        this.getHolder().setFixedSize(a, b);
        try {
            this.requestLayout();
            this.invalidate();
        }
        catch (Exception ex) {}
    }
}
