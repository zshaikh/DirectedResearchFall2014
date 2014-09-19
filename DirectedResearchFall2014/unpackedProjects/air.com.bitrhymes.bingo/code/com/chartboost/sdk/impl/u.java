package com.chartboost.sdk.impl;

import com.chartboost.sdk.Libraries.*;
import android.content.*;
import android.widget.*;
import com.chartboost.sdk.*;
import android.view.*;

public class u extends RelativeLayout
{
    private View a;
    private q b;
    private OrientationEventListener c;
    private CBOrientation.Difference d;
    
    public u(final Context context, final a a) {
        super(context);
        this.d = null;
        this.a = (View)a;
        this.addView((View)(this.b = new q(context)), (ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
        this.addView(this.a, (ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
        final Chartboost sharedChartboost = Chartboost.sharedChartboost();
        if (sharedChartboost.getOrientation() != null && sharedChartboost.getOrientation() != CBOrientation.UNSPECIFIED) {
            this.d = Chartboost.sharedChartboost().getForcedOrientationDifference();
            (this.c = new OrientationEventListener(context, 1) {
                public void onOrientationChanged(final int n) {
                    final CBOrientation.Difference forcedOrientationDifference = Chartboost.sharedChartboost().getForcedOrientationDifference();
                    if (u.this.d == forcedOrientationDifference) {
                        return;
                    }
                    u.a(u.this, forcedOrientationDifference);
                    ((a)u.this.a).a();
                    u.this.invalidate();
                }
            }).enable();
        }
        this.setOnTouchListener((View$OnTouchListener)new View$OnTouchListener() {
            public boolean onTouch(final View view, final MotionEvent motionEvent) {
                return true;
            }
        });
    }
    
    static /* synthetic */ void a(final u u, final CBOrientation.Difference d) {
        u.d = d;
    }
    
    public void a() {
        if (this.c != null) {
            this.c.disable();
            this.c = null;
        }
    }
    
    public q b() {
        return this.b;
    }
    
    public View c() {
        return this.a;
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        return true;
    }
    
    public interface a
    {
        void a();
    }
}
