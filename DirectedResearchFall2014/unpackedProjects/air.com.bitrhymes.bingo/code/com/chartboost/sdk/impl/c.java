package com.chartboost.sdk.impl;

import android.widget.*;
import android.view.*;
import android.content.*;
import android.graphics.*;

public abstract class c extends LinearLayout implements b
{
    protected View$OnClickListener a;
    private RectF b;
    private Paint c;
    private Paint d;
    private RectF e;
    
    public c(final Context context) {
        super(context);
        this.b = new RectF();
        this.c = null;
        this.d = null;
        this.e = null;
        this.a = null;
    }
    
    private void a(final Canvas canvas, final RectF rectF) {
        if (this.d == null) {
            (this.d = new Paint()).setStyle(Paint$Style.FILL);
            this.d.setAntiAlias(true);
        }
        if (this.e == null || Math.abs(rectF.top - this.e.top) > 0.1f || Math.abs(rectF.bottom - this.e.bottom) > 0.1f) {
            this.d.setShader((Shader)new LinearGradient(0.0f, rectF.top, 0.0f, rectF.bottom, -1447447, -2302756, Shader$TileMode.CLAMP));
        }
        canvas.drawRect(rectF, this.d);
    }
    
    private void b(final Canvas canvas, final RectF rectF) {
        if (this.c == null) {
            (this.c = new Paint()).setStyle(Paint$Style.FILL);
            this.c.setAntiAlias(true);
        }
        this.c.setColor(-723724);
        canvas.drawRect(rectF.left, rectF.top, rectF.right, 1.0f + rectF.top, this.c);
        this.c.setColor(-3355444);
        canvas.drawRect(rectF.left, rectF.bottom - 1.0f, rectF.right, rectF.bottom, this.c);
    }
    
    protected void onDraw(final Canvas canvas) {
        this.b.set(0.0f, 0.0f, (float)this.getWidth(), (float)((h.b)this).a());
        this.a(canvas, this.b);
        this.b(canvas, this.b);
    }
}
