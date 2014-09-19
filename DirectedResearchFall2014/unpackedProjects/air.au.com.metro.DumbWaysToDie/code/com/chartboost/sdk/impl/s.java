package com.chartboost.sdk.impl;

import com.chartboost.sdk.Libraries.*;
import android.content.*;
import android.widget.*;
import com.chartboost.sdk.*;
import android.view.*;

public class s extends RelativeLayout
{
    private View a;
    private o b;
    private OrientationEventListener c;
    private CBOrientation.Difference d;
    
    public s(final Context context, final a a) {
        super(context);
        this.d = null;
        this.a = (View)a;
        this.addView((View)(this.b = new o(context)), (ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
        this.addView(this.a, (ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
        this.d = Chartboost.sharedChartboost().getForcedOrientationDifference();
        (this.c = new OrientationEventListener(context, 3) {
            public void onOrientationChanged(final int n) {
                final CBOrientation.Difference forcedOrientationDifference = Chartboost.sharedChartboost().getForcedOrientationDifference();
                if (s.this.d == forcedOrientationDifference) {
                    return;
                }
                s.a(s.this, forcedOrientationDifference);
                ((a)s.this.a).a();
                s.this.invalidate();
            }
        }).enable();
        this.setOnTouchListener((View$OnTouchListener)new View$OnTouchListener() {
            public boolean onTouch(final View view, final MotionEvent motionEvent) {
                return true;
            }
        });
    }
    
    static /* synthetic */ void a(final s s, final CBOrientation.Difference d) {
        s.d = d;
    }
    
    public void a() {
        if (this.c != null) {
            this.c.disable();
        }
        this.c = null;
    }
    
    public o b() {
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
