package com.chartboost.sdk.impl;

import android.content.*;
import android.widget.*;
import android.view.*;
import android.view.animation.*;
import android.graphics.drawable.*;

public class o extends RelativeLayout
{
    public a a;
    private boolean b;
    
    public o(final Context context) {
        super(context);
        (this.a = new a(context)).setLayoutParams((ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
        this.addView((View)this.a);
        this.setFocusable(false);
    }
    
    public void a() {
        this.a(this.a);
    }
    
    public void a(final View view) {
        final AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        ((Animation)alphaAnimation).setDuration(510L);
        ((Animation)alphaAnimation).setFillAfter(true);
        view.startAnimation((Animation)alphaAnimation);
    }
    
    public void a(final boolean b) {
        this.b = b;
        this.a.a();
    }
    
    private class a extends View
    {
        public a(final Context context) {
            super(context);
            this.setFocusable(false);
        }
        
        public void a() {
            int n;
            if (o.this.b) {
                n = -2013265920;
            }
            else {
                n = -872415232;
            }
            int n2;
            if (o.this.b) {
                n2 = -872415232;
            }
            else {
                n2 = -2013265920;
            }
            final GradientDrawable backgroundDrawable = new GradientDrawable(GradientDrawable$Orientation.TL_BR, new int[] { n2, n });
            backgroundDrawable.setGradientType(1);
            backgroundDrawable.setGradientRadius(Math.min(this.getWidth(), this.getHeight()) / 2.0f);
            backgroundDrawable.setGradientCenter(this.getWidth() / 2.0f, this.getHeight() / 2.0f);
            this.setBackgroundDrawable((Drawable)backgroundDrawable);
        }
        
        protected void onSizeChanged(final int n, final int n2, final int n3, final int n4) {
            super.onSizeChanged(n, n2, n3, n4);
            this.a();
        }
    }
}
