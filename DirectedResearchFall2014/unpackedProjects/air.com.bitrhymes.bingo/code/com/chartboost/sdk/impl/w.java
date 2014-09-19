package com.chartboost.sdk.impl;

import android.view.*;
import android.os.*;
import android.content.*;
import com.chartboost.sdk.*;
import com.chartboost.sdk.Libraries.*;
import android.graphics.*;

public class w extends View
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
    
    public w(final Context context) {
        super(context);
        this.j = null;
        this.k = null;
        this.l = new Runnable() {
            @Override
            public void run() {
                final CBOrientation.Difference forcedOrientationDifference = Chartboost.sharedChartboost().getForcedOrientationDifference();
                final float density = w.this.getContext().getResources().getDisplayMetrics().density;
                final w a = w.this;
                w.a(a, a.b + 1.0f * density);
                int n;
                if (forcedOrientationDifference.isOdd()) {
                    n = w.this.getWidth();
                }
                else {
                    n = w.this.getHeight();
                }
                final float n2 = n - density * 9.0f;
                if (w.this.b > n2) {
                    final w a2 = w.this;
                    w.a(a2, a2.b - n2 * 2.0f);
                }
                if (w.this.getWindowVisibility() == 0) {
                    w.this.invalidate();
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
    
    static /* synthetic */ void a(final w w, final float b) {
        w.b = b;
    }
    
    private boolean a(final Canvas obj) {
        try {
            return (boolean)Canvas.class.getMethod("isHardwareAccelerated", (Class<?>[])new Class[0]).invoke(obj, new Object[0]);
        }
        catch (Exception ex) {
            return false;
        }
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
    
    protected void onDraw(Canvas canvas) {
        final float density = this.getContext().getResources().getDisplayMetrics().density;
        final boolean a = this.a(canvas);
        Canvas k;
        Canvas canvas2;
        Canvas canvas3;
        CBOrientation.Difference forcedOrientationDifference;
        int n = 0;
        int n2;
        float n4 = 0.0f;
        float n3;
        float n5;
        long max;
        float n6 = 0.0f;
        float n7;
        float n8;
        float n9;
        float n10;
        Label_0401_Outer:Label_0583_Outer:
        while (true) {
            Label_0758: {
                if (!a) {
                    break Label_0758;
                }
                Label_0116: {
                    if (this.j != null && this.j.getWidth() == canvas.getWidth() && this.j.getHeight() == canvas.getHeight()) {
                        break Label_0116;
                    }
                    if (this.j != null && !this.j.isRecycled()) {
                        this.j.recycle();
                    }
                    try {
                        this.j = Bitmap.createBitmap(canvas.getWidth(), canvas.getHeight(), Bitmap$Config.ARGB_8888);
                        this.k = new Canvas(this.j);
                        this.j.eraseColor(0);
                        k = this.k;
                        canvas2 = canvas;
                        canvas = k;
                        canvas3 = canvas2;
                        forcedOrientationDifference = Chartboost.sharedChartboost().getForcedOrientationDifference();
                        canvas.save();
                        if (forcedOrientationDifference.isReverse()) {
                            canvas.rotate(180.0f, this.getWidth() / 2.0f, this.getHeight() / 2.0f);
                        }
                        this.h.set(0.0f, 0.0f, (float)this.getWidth(), (float)this.getHeight());
                        this.h.inset(1.5f * density, 1.5f * density);
                        while (true) {
                        Label_0571_Outer:
                            while (true) {
                                Label_0343: {
                                    while (true) {
                                        Label_0295: {
                                            while (true) {
                                                Label_0229: {
                                                    if (forcedOrientationDifference.isOdd()) {
                                                        n = this.getWidth();
                                                        break Label_0229;
                                                    }
                                                    Label_0550: {
                                                        break Label_0550;
                                                        Label_0440_Outer:Label_0457_Outer:
                                                        while (true) {
                                                            this.g.close();
                                                            canvas.save();
                                                            n2 = 1;
                                                            while (true) {
                                                            Label_0743:
                                                                while (true) {
                                                                Label_0637:
                                                                    while (true) {
                                                                        try {
                                                                            canvas.clipPath(this.f);
                                                                            if (n2 != 0) {
                                                                                n3 = -n4 + this.b;
                                                                                if (!forcedOrientationDifference.isOdd()) {
                                                                                    break Label_0743;
                                                                                }
                                                                                n5 = this.i.height();
                                                                                if (n3 < n5 + n4) {
                                                                                    break Label_0637;
                                                                                }
                                                                            }
                                                                            canvas.restore();
                                                                            canvas.restore();
                                                                            if (a && canvas3 != null) {
                                                                                canvas3.drawBitmap(this.j, 0.0f, 0.0f, (Paint)null);
                                                                            }
                                                                            max = Math.max(0L, 16L - ((long)(System.nanoTime() / 1000000.0) - this.c));
                                                                            this.a.removeCallbacks(this.l);
                                                                            this.a.postDelayed(this.l, max);
                                                                            return;
                                                                            n = this.getHeight();
                                                                            break;
                                                                            this.g.moveTo(0.0f, n4);
                                                                            this.g.lineTo(n4, n4);
                                                                            this.g.lineTo(n4 * 2.0f, 0.0f);
                                                                            this.g.lineTo(n4, 0.0f);
                                                                            continue Label_0401_Outer;
                                                                            n6 = this.i.height();
                                                                            break Label_0295;
                                                                            n4 = this.i.height();
                                                                            break Label_0343;
                                                                        }
                                                                        catch (UnsupportedOperationException ex) {
                                                                            n2 = 0;
                                                                            continue Label_0440_Outer;
                                                                        }
                                                                        break;
                                                                    }
                                                                    if (forcedOrientationDifference.isOdd()) {
                                                                        n7 = this.i.top;
                                                                    }
                                                                    else {
                                                                        n7 = this.i.left;
                                                                    }
                                                                    n8 = n7 + n3;
                                                                    canvas.save();
                                                                    if (forcedOrientationDifference.isOdd()) {
                                                                        canvas.translate(this.i.left, n8);
                                                                    }
                                                                    else {
                                                                        canvas.translate(n8, this.i.top);
                                                                    }
                                                                    canvas.drawPath(this.g, this.e);
                                                                    canvas.restore();
                                                                    n3 += 2.0f * n4;
                                                                    continue Label_0457_Outer;
                                                                }
                                                                n5 = this.i.width();
                                                                continue Label_0583_Outer;
                                                            }
                                                        }
                                                    }
                                                }
                                                n9 = n / 2.0f;
                                                canvas.drawRoundRect(this.h, n9, n9, this.d);
                                                this.i.set(this.h);
                                                this.i.inset(3.0f * density, density * 3.0f);
                                                if (!forcedOrientationDifference.isOdd()) {
                                                    continue Label_0571_Outer;
                                                }
                                                break;
                                            }
                                            n6 = this.i.width();
                                        }
                                        n10 = n6 / 2.0f;
                                        this.f.reset();
                                        this.f.addRoundRect(this.i, n10, n10, Path$Direction.CW);
                                        if (!forcedOrientationDifference.isOdd()) {
                                            continue;
                                        }
                                        break;
                                    }
                                    n4 = this.i.width();
                                }
                                this.g.reset();
                                if (forcedOrientationDifference.isOdd()) {
                                    this.g.moveTo(n4, 0.0f);
                                    this.g.lineTo(n4, n4);
                                    this.g.lineTo(0.0f, n4 * 2.0f);
                                    this.g.lineTo(0.0f, n4);
                                    continue Label_0583_Outer;
                                }
                                break;
                            }
                            continue;
                        }
                    }
                    catch (Throwable t) {
                        return;
                    }
                }
            }
            canvas3 = null;
            continue;
        }
    }
    
    protected void onWindowVisibilityChanged(final int n) {
        super.onWindowVisibilityChanged(n);
        this.a.removeCallbacks(this.l);
        if (n == 0) {
            this.a.post(this.l);
        }
    }
}
