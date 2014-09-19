package com.inmobi.androidsdk.ai.container;

import android.view.*;
import android.content.*;
import android.graphics.*;

public class IMCustomView extends View
{
    private float a;
    private float b;
    private float c;
    private float d;
    private float e;
    private SwitchIconType f;
    private int g;
    private Paint h;
    private Path i;
    private RectF j;
    
    private IMCustomView(final Context context) {
        super(context);
    }
    
    public IMCustomView(final Context context, final float a, final SwitchIconType f) {
        this(context);
        this.f = f;
        this.a = a;
        this.g = 15;
        this.b = 50.0f * this.a / 2.0f;
        this.c = 30.0f * this.a / 2.0f;
        this.d = this.b - this.c / 3.0f;
        this.e = this.b + this.c / 3.0f;
        this.h = new Paint(1);
        this.j = new RectF();
        this.i = new Path();
    }
    
    static /* synthetic */ int[] a() {
        final int[] k = IMCustomView.k;
        if (k != null) {
            return k;
        }
        final int[] i = new int[SwitchIconType.values().length];
        while (true) {
            try {
                i[SwitchIconType.BACK.ordinal()] = 5;
                try {
                    i[SwitchIconType.CLOSE_BUTTON.ordinal()] = 1;
                    try {
                        i[SwitchIconType.CLOSE_ICON.ordinal()] = 3;
                        try {
                            i[SwitchIconType.CLOSE_TRANSPARENT.ordinal()] = 2;
                            try {
                                i[SwitchIconType.FORWARD_ACTIVE.ordinal()] = 6;
                                try {
                                    i[SwitchIconType.FORWARD_INACTIVE.ordinal()] = 7;
                                    try {
                                        i[SwitchIconType.REFRESH.ordinal()] = 4;
                                        return IMCustomView.k = i;
                                    }
                                    catch (NoSuchFieldError noSuchFieldError) {}
                                }
                                catch (NoSuchFieldError noSuchFieldError2) {}
                            }
                            catch (NoSuchFieldError noSuchFieldError3) {}
                        }
                        catch (NoSuchFieldError noSuchFieldError4) {}
                    }
                    catch (NoSuchFieldError noSuchFieldError5) {}
                }
                catch (NoSuchFieldError noSuchFieldError6) {}
            }
            catch (NoSuchFieldError noSuchFieldError7) {
                continue;
            }
            break;
        }
    }
    
    protected void onDraw(final Canvas canvas) {
        super.onDraw(canvas);
        this.h.reset();
        switch (a()[this.f.ordinal()]) {
            default: {}
            case 1: {
                this.h.setAntiAlias(true);
                this.h.setColor(-16777216);
                this.h.setStrokeWidth(3.0f);
                this.h.setStyle(Paint$Style.FILL_AND_STROKE);
                canvas.drawCircle(this.b, this.b, this.c, this.h);
                this.h.setColor(-1);
                this.h.setStyle(Paint$Style.STROKE);
                canvas.drawLine(this.d, this.d, this.e, this.e, this.h);
                canvas.drawLine(this.d, this.e, this.e, this.d, this.h);
                canvas.drawCircle(this.b, this.b, this.c, this.h);
            }
            case 2: {
                this.h.setAntiAlias(true);
                this.h.setColor(0);
                this.h.setStrokeWidth(3.0f);
                this.h.setStyle(Paint$Style.FILL_AND_STROKE);
                canvas.drawCircle(this.b, this.b, this.b, this.h);
            }
            case 6: {
                this.i.reset();
                this.i.setFillType(Path$FillType.EVEN_ODD);
                this.i.moveTo(this.getWidth() / 2 - this.g * this.a / 2.0f, this.getHeight() / 2 - this.g * this.a / 2.0f);
                this.i.lineTo(this.getWidth() / 2 + this.g * this.a / 2.0f, (float)(this.getHeight() / 2));
                this.i.lineTo(this.getWidth() / 2 - this.g * this.a / 2.0f, this.getHeight() / 2 + this.g * this.a / 2.0f);
                this.i.lineTo(this.getWidth() / 2 - this.g * this.a / 2.0f, this.getHeight() / 2 - this.g * this.a / 2.0f);
                this.i.close();
                this.h.setAntiAlias(true);
                this.h.setColor(-16777216);
                this.h.setStrokeWidth(3.0f);
                this.h.setStyle(Paint$Style.FILL_AND_STROKE);
                canvas.drawPath(this.i, this.h);
            }
            case 7: {
                this.i.reset();
                this.i.setFillType(Path$FillType.EVEN_ODD);
                this.i.moveTo(this.getWidth() / 2 - this.g * this.a / 2.0f, this.getHeight() / 2 - this.g * this.a / 2.0f);
                this.i.lineTo(this.getWidth() / 2 + this.g * this.a / 2.0f, (float)(this.getHeight() / 2));
                this.i.lineTo(this.getWidth() / 2 - this.g * this.a / 2.0f, this.getHeight() / 2 + this.g * this.a / 2.0f);
                this.i.lineTo(this.getWidth() / 2 - this.g * this.a / 2.0f, this.getHeight() / 2 - this.g * this.a / 2.0f);
                this.i.close();
                this.h.setAntiAlias(true);
                this.h.setColor(-12303292);
                this.h.setStrokeWidth(3.0f);
                this.h.setStyle(Paint$Style.FILL_AND_STROKE);
                canvas.drawPath(this.i, this.h);
            }
            case 5: {
                this.i.reset();
                this.i.setFillType(Path$FillType.EVEN_ODD);
                this.i.moveTo(this.getWidth() / 2 - this.g * this.a / 2.0f, (float)(this.getHeight() / 2));
                this.i.lineTo(this.getWidth() / 2 + this.g * this.a / 2.0f, this.getHeight() / 2 - this.g * this.a / 2.0f);
                this.i.lineTo(this.getWidth() / 2 + this.g * this.a / 2.0f, this.getHeight() / 2 + this.g * this.a / 2.0f);
                this.i.lineTo(this.getWidth() / 2 - this.g * this.a / 2.0f, (float)(this.getHeight() / 2));
                this.i.close();
                this.h.setAntiAlias(true);
                this.h.setColor(-16777216);
                this.h.setStrokeWidth(3.0f);
                this.h.setStyle(Paint$Style.FILL_AND_STROKE);
                canvas.drawPath(this.i, this.h);
            }
            case 4: {
                this.i.reset();
                this.h.setAntiAlias(true);
                this.h.setColor(-16777216);
                this.h.setStrokeWidth(5.0f);
                this.h.setStyle(Paint$Style.STROKE);
                this.j.set(this.getWidth() / 2 - this.g * this.a / 2.0f, this.getHeight() / 2 - this.g * this.a / 2.0f, this.getWidth() / 2 + this.g * this.a / 2.0f, this.getHeight() / 2 + this.g * this.a / 2.0f);
                canvas.drawArc(this.j, 0.0f, 270.0f, false, this.h);
                this.i.setFillType(Path$FillType.EVEN_ODD);
                this.i.moveTo(this.getWidth() / 2 + this.g * this.a / 2.0f, this.getHeight() / 2 - 2.0f * this.a);
                this.i.lineTo(this.getWidth() / 2 + this.g * this.a / 2.0f - 2.0f * this.a, (float)(this.getHeight() / 2));
                this.i.lineTo(this.getWidth() / 2 + this.g * this.a / 2.0f + 2.0f * this.a, (float)(this.getHeight() / 2));
                this.i.lineTo(this.getWidth() / 2 + this.g * this.a / 2.0f, this.getHeight() / 2 - 2.0f * this.a);
                this.i.close();
                this.h.setStyle(Paint$Style.FILL_AND_STROKE);
                canvas.drawPath(this.i, this.h);
            }
            case 3: {
                this.h.setAntiAlias(true);
                this.h.setColor(-16777216);
                this.h.setStrokeWidth(5.0f);
                this.h.setStyle(Paint$Style.STROKE);
                canvas.drawLine(this.getWidth() / 2 - this.g * this.a / 2.0f, this.getHeight() / 2 - this.g * this.a / 2.0f, this.getWidth() / 2 + this.g * this.a / 2.0f, this.getHeight() / 2 + this.g * this.a / 2.0f, this.h);
                canvas.drawLine(this.getWidth() / 2 - this.g * this.a / 2.0f, this.getHeight() / 2 + this.g * this.a / 2.0f, this.getWidth() / 2 + this.g * this.a / 2.0f, this.getHeight() / 2 - this.g * this.a / 2.0f, this.h);
            }
        }
    }
    
    public void setSwitchInt(final SwitchIconType f) {
        this.f = f;
    }
    
    public enum SwitchIconType
    {
        BACK("BACK", 4), 
        CLOSE_BUTTON("CLOSE_BUTTON", 0), 
        CLOSE_ICON("CLOSE_ICON", 2), 
        CLOSE_TRANSPARENT("CLOSE_TRANSPARENT", 1), 
        FORWARD_ACTIVE("FORWARD_ACTIVE", 5), 
        FORWARD_INACTIVE("FORWARD_INACTIVE", 6), 
        REFRESH("REFRESH", 3);
        
        static {
            a = new SwitchIconType[] { SwitchIconType.CLOSE_BUTTON, SwitchIconType.CLOSE_TRANSPARENT, SwitchIconType.CLOSE_ICON, SwitchIconType.REFRESH, SwitchIconType.BACK, SwitchIconType.FORWARD_ACTIVE, SwitchIconType.FORWARD_INACTIVE };
        }
    }
}
