package com.inmobi.androidsdk.impl.anim;

import android.view.animation.*;

public class IMTranslateAnimation extends Animation
{
    private int a;
    private int b;
    private int c;
    private int d;
    private float e;
    private float f;
    private float g;
    private float h;
    private float i;
    private float j;
    private float k;
    private float l;
    
    public IMTranslateAnimation(final float e, final float f, final float g, final float h) {
        super();
        this.a = 0;
        this.b = 0;
        this.c = 0;
        this.d = 0;
        this.e = 0.0f;
        this.f = 0.0f;
        this.g = 0.0f;
        this.h = 0.0f;
        this.e = e;
        this.f = f;
        this.g = g;
        this.h = h;
        this.a = 0;
        this.b = 0;
        this.c = 0;
        this.d = 0;
    }
    
    public IMTranslateAnimation(final int a, final float e, final int b, final float f, final int c, final float g, final int d, final float h) {
        super();
        this.a = 0;
        this.b = 0;
        this.c = 0;
        this.d = 0;
        this.e = 0.0f;
        this.f = 0.0f;
        this.g = 0.0f;
        this.h = 0.0f;
        this.e = e;
        this.f = f;
        this.g = g;
        this.h = h;
        this.a = a;
        this.b = b;
        this.c = c;
        this.d = d;
    }
    
    protected void applyTransformation(final float n, final Transformation transformation) {
        float i = this.i;
        float k = this.k;
        if (this.i != this.j) {
            i = this.i + n * (this.j - this.i);
        }
        if (this.k != this.l) {
            k = this.k + n * (this.l - this.k);
        }
        transformation.getMatrix().setTranslate(i, k);
    }
    
    public void initialize(final int n, final int n2, final int n3, final int n4) {
        super.initialize(n, n2, n3, n4);
        this.i = this.resolveSize(this.a, this.e, n, n3);
        this.j = this.resolveSize(this.b, this.f, n, n3);
        this.k = this.resolveSize(this.c, this.g, n2, n4);
        this.l = this.resolveSize(this.d, this.h, n2, n4);
    }
}
