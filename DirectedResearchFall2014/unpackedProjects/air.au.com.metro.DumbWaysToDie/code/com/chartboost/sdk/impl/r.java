package com.chartboost.sdk.impl;

import android.content.*;
import android.graphics.*;
import com.chartboost.sdk.Libraries.*;
import com.chartboost.sdk.*;
import android.widget.*;
import android.view.*;

public class r extends LinearLayout implements a
{
    private TextView a;
    private t b;
    private u c;
    
    public r(final Context context) {
        super(context);
        this.a(context);
    }
    
    private void a(final Context context) {
        this.setGravity(17);
        (this.a = new TextView(this.getContext())).setTextColor(-1);
        this.a.setTextSize(2, 16.0f);
        this.a.setTypeface((Typeface)null, 1);
        this.a.setText((CharSequence)"Loading...");
        this.a.setGravity(17);
        this.b = new t(context, (View)this.a);
        this.c = new u(this.getContext());
        this.addView((View)this.b);
        this.addView((View)this.c);
        this.a();
    }
    
    static /* synthetic */ int[] b() {
        final int[] d = r.d;
        if (d != null) {
            return d;
        }
        final int[] d2 = new int[CBOrientation.Difference.values().length];
        while (true) {
            try {
                d2[CBOrientation.Difference.ANGLE_0.ordinal()] = 1;
                try {
                    d2[CBOrientation.Difference.ANGLE_180.ordinal()] = 3;
                    try {
                        d2[CBOrientation.Difference.ANGLE_270.ordinal()] = 4;
                        try {
                            d2[CBOrientation.Difference.ANGLE_90.ordinal()] = 2;
                            return r.d = d2;
                        }
                        catch (NoSuchFieldError noSuchFieldError) {}
                    }
                    catch (NoSuchFieldError noSuchFieldError2) {}
                }
                catch (NoSuchFieldError noSuchFieldError3) {}
            }
            catch (NoSuchFieldError noSuchFieldError4) {
                continue;
            }
            break;
        }
    }
    
    public void a() {
        this.removeView((View)this.b);
        this.removeView((View)this.c);
        final float density = this.getContext().getResources().getDisplayMetrics().density;
        final int round = Math.round(20.0f * density);
        switch (b()[Chartboost.sharedChartboost().getForcedOrientationDifference().ordinal()]) {
            default: {
                this.setOrientation(1);
                final LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-1, -2);
                linearLayout$LayoutParams.setMargins(round, round, round, 0);
                this.addView((View)this.b, (ViewGroup$LayoutParams)linearLayout$LayoutParams);
                final LinearLayout$LayoutParams linearLayout$LayoutParams2 = new LinearLayout$LayoutParams(-1, Math.round(density * 32.0f));
                linearLayout$LayoutParams2.setMargins(round, round, round, round);
                this.addView((View)this.c, (ViewGroup$LayoutParams)linearLayout$LayoutParams2);
            }
            case 2: {
                this.setOrientation(0);
                final LinearLayout$LayoutParams linearLayout$LayoutParams3 = new LinearLayout$LayoutParams(Math.round(density * 32.0f), -1);
                linearLayout$LayoutParams3.setMargins(round, round, 0, round);
                this.addView((View)this.c, (ViewGroup$LayoutParams)linearLayout$LayoutParams3);
                final LinearLayout$LayoutParams linearLayout$LayoutParams4 = new LinearLayout$LayoutParams(-2, -1);
                linearLayout$LayoutParams4.setMargins(round, round, round, round);
                this.addView((View)this.b, (ViewGroup$LayoutParams)linearLayout$LayoutParams4);
            }
            case 3: {
                this.setOrientation(1);
                final LinearLayout$LayoutParams linearLayout$LayoutParams5 = new LinearLayout$LayoutParams(-1, Math.round(density * 32.0f));
                linearLayout$LayoutParams5.setMargins(round, round, round, 0);
                this.addView((View)this.c, (ViewGroup$LayoutParams)linearLayout$LayoutParams5);
                final LinearLayout$LayoutParams linearLayout$LayoutParams6 = new LinearLayout$LayoutParams(-1, -2);
                linearLayout$LayoutParams6.setMargins(round, round, round, round);
                this.addView((View)this.b, (ViewGroup$LayoutParams)linearLayout$LayoutParams6);
            }
            case 4: {
                this.setOrientation(0);
                final LinearLayout$LayoutParams linearLayout$LayoutParams7 = new LinearLayout$LayoutParams(-2, -1);
                linearLayout$LayoutParams7.setMargins(round, round, 0, round);
                this.addView((View)this.b, (ViewGroup$LayoutParams)linearLayout$LayoutParams7);
                final LinearLayout$LayoutParams linearLayout$LayoutParams8 = new LinearLayout$LayoutParams(Math.round(density * 32.0f), -1);
                linearLayout$LayoutParams8.setMargins(round, round, round, round);
                this.addView((View)this.c, (ViewGroup$LayoutParams)linearLayout$LayoutParams8);
            }
        }
    }
}
