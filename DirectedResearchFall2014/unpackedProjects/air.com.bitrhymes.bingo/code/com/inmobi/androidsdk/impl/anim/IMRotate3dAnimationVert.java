package com.inmobi.androidsdk.impl.anim;

import android.view.animation.*;
import android.graphics.*;

public class IMRotate3dAnimationVert extends Animation
{
    private final float a;
    private final float b;
    private final float c;
    private final float d;
    private final float e;
    private final boolean f;
    private Camera g;
    
    public IMRotate3dAnimationVert(final float a, final float b, final float c, final float d, final float e, final boolean f) {
        super();
        this.a = a;
        this.b = b;
        this.c = c;
        this.d = d;
        this.e = e;
        this.f = f;
    }
    
    protected void applyTransformation(final float n, final Transformation transformation) {
        final float a = this.a;
        final float n2 = a + n * (this.b - a);
        final float c = this.c;
        final float d = this.d;
        final Camera g = this.g;
        final Matrix matrix = transformation.getMatrix();
        g.save();
        if (this.f) {
            g.translate(0.0f, 0.0f, n * this.e);
        }
        else {
            g.translate(0.0f, 0.0f, this.e * (1.0f - n));
        }
        g.rotateY(n2);
        g.getMatrix(matrix);
        g.restore();
        matrix.preTranslate(-c, -d);
        matrix.postTranslate(c, d);
    }
    
    public void initialize(final int n, final int n2, final int n3, final int n4) {
        super.initialize(n, n2, n3, n4);
        this.g = new Camera();
    }
}
