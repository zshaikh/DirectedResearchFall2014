package com.chartboost.sdk.impl;

import android.view.animation.*;
import android.graphics.*;

public class r extends Animation
{
    private final float a;
    private final float b;
    private final float c;
    private final float d;
    private boolean e;
    private Camera f;
    
    public r(final float a, final float b, final float c, final float d, final boolean e) {
        super();
        this.e = true;
        this.a = a;
        this.b = b;
        this.c = c;
        this.d = d;
        this.e = e;
    }
    
    protected void applyTransformation(final float n, final Transformation transformation) {
        final float n2 = this.a + n * (this.b - this.a);
        final Camera f = this.f;
        final Matrix matrix = transformation.getMatrix();
        f.save();
        if (this.e) {
            f.rotateY(n2);
        }
        else {
            f.rotateX(n2);
        }
        f.getMatrix(matrix);
        f.restore();
        matrix.preTranslate(-this.c, -this.d);
        matrix.postTranslate(this.c, this.d);
    }
    
    public void initialize(final int n, final int n2, final int n3, final int n4) {
        super.initialize(n, n2, n3, n4);
        this.f = new Camera();
    }
}
