package com.chartboost.sdk.impl;

import android.view.*;
import android.os.*;
import android.content.*;
import com.chartboost.sdk.*;
import com.chartboost.sdk.Libraries.*;
import android.graphics.*;

public class u extends View
{
    private Handler a;
    private float b;
    private long c;
    private Paint d;
    private Paint e;
    private Path f;
    private Path g;
    private RectF h;
    private RectF i;
    private Bitmap j;
    private Canvas k;
    private Runnable l;
    
    public u(final Context context) {
        super(context);
        this.j = null;
        this.k = null;
        this.l = new Runnable() {
            @Override
            public void run() {
                final CBOrientation.Difference forcedOrientationDifference = Chartboost.sharedChartboost().getForcedOrientationDifference();
                final float density = u.this.getContext().getResources().getDisplayMetrics().density;
                final u a = u.this;
                u.a(a, a.b + 1.0f * density);
                int n;
                if (forcedOrientationDifference.isOdd()) {
                    n = u.this.getWidth();
                }
                else {
                    n = u.this.getHeight();
                }
                final float n2 = n - density * 9.0f;
                if (u.this.b > n2) {
                    final u a2 = u.this;
                    u.a(a2, a2.b - n2 * 2.0f);
                }
                if (u.this.getWindowVisibility() == 0) {
                    u.this.invalidate();
                }
            }
        };
        this.a(context);
    }
    
    private void a(final Context context) {
        final float density = context.getResources().getDisplayMetrics().density;
        this.b = 0.0f;
        this.a = new Handler();
        this.c = (long)(System.nanoTime() / 1000000.0);
        (this.d = new Paint()).setColor(-1);
        this.d.setStyle(Paint$Style.STROKE);
        this.d.setStrokeWidth(density * 3.0f);
        this.d.setAntiAlias(true);
        (this.e = new Paint()).setColor(-1);
        this.e.setStyle(Paint$Style.FILL);
        this.e.setAntiAlias(true);
        this.f = new Path();
        this.g = new Path();
        this.i = new RectF();
        this.h = new RectF();
        try {
            this.getClass().getMethod("setLayerType", Integer.TYPE, Paint.class).invoke(this, 1, null);
        }
        catch (Exception ex) {}
    }
    
    static /* synthetic */ void a(final u u, final float b) {
        u.b = b;
    }
    
    protected void onAttachedToWindow() {
        this.a.removeCallbacks(this.l);
        this.a.post(this.l);
    }
    
    protected void onDetachedFromWindow() {
        this.a.removeCallbacks(this.l);
        if (this.j != null && !this.j.isRecycled()) {
            this.j.recycle();
        }
        this.j = null;
    }
    
    protected void onDraw(final Canvas canvas) {
        final float density = this.getContext().getResources().getDisplayMetrics().density;
        if (this.j == null || this.j.getWidth() != canvas.getWidth() || this.j.getHeight() != canvas.getHeight()) {
            if (this.j != null && !this.j.isRecycled()) {
                this.j.recycle();
            }
            this.j = Bitmap.createBitmap(canvas.getWidth(), canvas.getHeight(), Bitmap$Config.ARGB_8888);
            this.k = new Canvas(this.j);
        }
        this.j.eraseColor(0);
        final Canvas k = this.k;
        final CBOrientation.Difference forcedOrientationDifference = Chartboost.sharedChartboost().getForcedOrientationDifference();
        k.save();
        if (forcedOrientationDifference.isReverse()) {
            k.rotate(180.0f, this.getWidth() / 2.0f, this.getHeight() / 2.0f);
        }
        this.h.set(0.0f, 0.0f, (float)this.getWidth(), (float)this.getHeight());
        this.h.inset(1.5f * density, 1.5f * density);
        int n;
        if (forcedOrientationDifference.isOdd()) {
            n = this.getWidth();
        }
        else {
            n = this.getHeight();
        }
        final float n2 = n / 2.0f;
        k.drawRoundRect(this.h, n2, n2, this.d);
        this.i.set(this.h);
        this.i.inset(3.0f * density, density * 3.0f);
        float n3;
        if (forcedOrientationDifference.isOdd()) {
            n3 = this.i.width();
        }
        else {
            n3 = this.i.height();
        }
        final float n4 = n3 / 2.0f;
        this.f.reset();
        this.f.addRoundRect(this.i, n4, n4, Path$Direction.CW);
        float n5;
        if (forcedOrientationDifference.isOdd()) {
            n5 = this.i.width();
        }
        else {
            n5 = this.i.height();
        }
        this.g.reset();
        if (forcedOrientationDifference.isOdd()) {
            this.g.moveTo(n5, 0.0f);
            this.g.lineTo(n5, n5);
            this.g.lineTo(0.0f, n5 * 2.0f);
            this.g.lineTo(0.0f, n5);
        }
        else {
            this.g.moveTo(0.0f, n5);
            this.g.lineTo(n5, n5);
            this.g.lineTo(n5 * 2.0f, 0.0f);
            this.g.lineTo(n5, 0.0f);
        }
        this.g.close();
        k.save();
        k.clipPath(this.f);
        float n6 = -n5 + this.b;
        while (true) {
            float n7;
            if (forcedOrientationDifference.isOdd()) {
                n7 = this.i.height();
            }
            else {
                n7 = this.i.width();
            }
            if (n6 >= n7 + n5) {
                break;
            }
            float n8;
            if (forcedOrientationDifference.isOdd()) {
                n8 = this.i.top;
            }
            else {
                n8 = this.i.left;
            }
            final float n9 = n8 + n6;
            k.save();
            if (forcedOrientationDifference.isOdd()) {
                k.translate(this.i.left, n9);
            }
            else {
                k.translate(n9, this.i.top);
            }
            k.drawPath(this.g, this.e);
            k.restore();
            n6 += 2.0f * n5;
        }
        k.restore();
        k.restore();
        if (canvas != null) {
            canvas.drawBitmap(this.j, 0.0f, 0.0f, (Paint)null);
        }
        final long max = Math.max(0L, 16L - ((long)(System.nanoTime() / 1000000.0) - this.c));
        this.a.removeCallbacks(this.l);
        this.a.postDelayed(this.l, max);
    }
    
    protected void onWindowVisibilityChanged(final int n) {
        super.onWindowVisibilityChanged(n);
        this.a.removeCallbacks(this.l);
        if (n == 0) {
            this.a.post(this.l);
        }
    }
}
