package com.chartboost.sdk.impl;

import android.widget.*;
import android.content.*;
import android.graphics.drawable.*;
import android.graphics.*;

public class f extends Button
{
    private Path a;
    private Path b;
    private Path c;
    private RectF d;
    private Paint e;
    private Paint f;
    private Shader g;
    private Shader h;
    private int i;
    
    public f(final Context context) {
        super(context);
        this.a(context);
    }
    
    private void a() {
        final int height = this.getHeight();
        if (height == this.i) {
            return;
        }
        this.i = height;
        this.g = (Shader)new LinearGradient(0.0f, 0.0f, 0.0f, (float)this.getHeight(), new int[] { -81366, -89600, -97280 }, (float[])null, Shader$TileMode.CLAMP);
        this.h = (Shader)new LinearGradient(0.0f, 0.0f, 0.0f, (float)this.getHeight(), new int[] { -97280, -89600, -81366 }, (float[])null, Shader$TileMode.CLAMP);
    }
    
    private void a(final Context context) {
        final float density = context.getResources().getDisplayMetrics().density;
        this.setTextSize(2, 13.0f);
        this.setShadowLayer(1.0f * density, 1.0f * density, 1.0f * density, -16757901);
        this.setTypeface((Typeface)null, 1);
        this.setTextColor(-1);
        this.setClickable(true);
        this.setGravity(17);
        this.setPadding(Math.round(12.0f * density), Math.round(5.0f * density), Math.round(12.0f * density), Math.round(density * 5.0f));
        this.a = new Path();
        this.b = new Path();
        this.c = new Path();
        this.d = new RectF();
        (this.e = new Paint()).setStyle(Paint$Style.STROKE);
        this.e.setColor(-4496384);
        this.e.setAntiAlias(true);
        this.i = -1;
        (this.f = new Paint()).setStyle(Paint$Style.FILL);
        this.f.setAntiAlias(true);
        this.setBackgroundDrawable((Drawable)new Drawable() {
            boolean a = false;
            
            public void draw(final Canvas canvas) {
                int i = 0;
                final float density = com.chartboost.sdk.impl.f.this.getContext().getResources().getDisplayMetrics().density;
                final int[] state = this.getState();
                boolean b = false;
                while (i < state.length) {
                    if (state[i] == 16842919) {
                        b = true;
                    }
                    ++i;
                }
                final float n = 6.0f * density;
                com.chartboost.sdk.impl.f.this.a.reset();
                com.chartboost.sdk.impl.f.this.d.set(this.getBounds());
                com.chartboost.sdk.impl.f.this.a.addRoundRect(com.chartboost.sdk.impl.f.this.d, n, n, Path$Direction.CW);
                com.chartboost.sdk.impl.f.this.a();
                final Paint d = com.chartboost.sdk.impl.f.this.f;
                Shader shader;
                if (b) {
                    shader = com.chartboost.sdk.impl.f.this.h;
                }
                else {
                    shader = com.chartboost.sdk.impl.f.this.g;
                }
                d.setShader(shader);
                canvas.drawPath(com.chartboost.sdk.impl.f.this.a, com.chartboost.sdk.impl.f.this.f);
                final float n2 = density * 1.0f;
                com.chartboost.sdk.impl.f.this.b.reset();
                com.chartboost.sdk.impl.f.this.d.inset(n2 / 2.0f, n2 / 2.0f);
                com.chartboost.sdk.impl.f.this.b.addRoundRect(com.chartboost.sdk.impl.f.this.d, n, n, Path$Direction.CW);
                com.chartboost.sdk.impl.f.this.c.reset();
                com.chartboost.sdk.impl.f.this.d.offset(0.0f, n2 / 2.0f);
                com.chartboost.sdk.impl.f.this.c.addRoundRect(com.chartboost.sdk.impl.f.this.d, n, n, Path$Direction.CW);
                if (!b) {
                    com.chartboost.sdk.impl.f.this.e.setColor(-1);
                    canvas.drawPath(com.chartboost.sdk.impl.f.this.c, com.chartboost.sdk.impl.f.this.e);
                }
                com.chartboost.sdk.impl.f.this.e.setColor(-4496384);
                canvas.drawPath(com.chartboost.sdk.impl.f.this.b, com.chartboost.sdk.impl.f.this.e);
            }
            
            public int getOpacity() {
                return 1;
            }
            
            public boolean isStateful() {
                return true;
            }
            
            protected boolean onStateChange(final int[] array) {
                int i = 0;
                boolean a = false;
                while (i < array.length) {
                    if (array[i] == 16842919) {
                        a = true;
                    }
                    ++i;
                }
                if (this.a != a) {
                    this.a = a;
                    this.invalidateSelf();
                    return true;
                }
                return false;
            }
            
            public void setAlpha(final int n) {
                com.chartboost.sdk.impl.f.this.e.setAlpha(n);
                com.chartboost.sdk.impl.f.this.f.setAlpha(n);
            }
            
            public void setColorFilter(final ColorFilter colorFilter) {
                com.chartboost.sdk.impl.f.this.e.setColorFilter(colorFilter);
                com.chartboost.sdk.impl.f.this.f.setColorFilter(colorFilter);
            }
        });
    }
}
