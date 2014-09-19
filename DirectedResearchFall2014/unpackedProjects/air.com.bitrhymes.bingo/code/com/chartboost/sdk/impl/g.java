package com.chartboost.sdk.impl;

import android.widget.*;
import android.content.*;
import android.graphics.*;
import android.graphics.drawable.*;

public class g extends ImageView
{
    private RectF a;
    private Paint b;
    private Xfermode c;
    
    public g(final Context context) {
        super(context);
        this.a(context);
    }
    
    private void a(final Context context) {
        final float density = this.getContext().getResources().getDisplayMetrics().density;
        this.c = (Xfermode)new PorterDuffXfermode(PorterDuff$Mode.SRC_IN);
        this.a = new RectF();
        (this.b = new Paint()).setStyle(Paint$Style.STROKE);
        this.b.setColor(-1509949440);
        this.b.setStrokeWidth(Math.max(1.0f, density * 1.0f));
        this.b.setAntiAlias(true);
    }
    
    protected void onDraw(final Canvas canvas) {
        final float density = this.getContext().getResources().getDisplayMetrics().density;
        final float n = 10.0f * density;
        final float n2 = 1.0f * density;
        final Drawable drawable = this.getDrawable();
        if (drawable instanceof BitmapDrawable) {
            final Paint paint = ((BitmapDrawable)drawable).getPaint();
            this.a.set(drawable.getBounds());
            if (this.getImageMatrix() != null) {
                this.getImageMatrix().mapRect(this.a);
            }
            final int saveLayer = canvas.saveLayer(this.a, (Paint)null, 31);
            paint.setAntiAlias(true);
            canvas.drawARGB(0, 0, 0, 0);
            paint.setColor(-16777216);
            canvas.drawRoundRect(this.a, n, n, paint);
            final Xfermode xfermode = paint.getXfermode();
            paint.setXfermode(this.c);
            super.onDraw(canvas);
            paint.setXfermode(xfermode);
            canvas.restoreToCount(saveLayer);
        }
        else {
            super.onDraw(canvas);
        }
        this.a.set(0.0f, 0.0f, (float)this.getWidth(), (float)this.getHeight());
        this.a.inset(n2 / 2.0f, n2 / 2.0f);
        canvas.drawRoundRect(this.a, n, n, this.b);
    }
}
