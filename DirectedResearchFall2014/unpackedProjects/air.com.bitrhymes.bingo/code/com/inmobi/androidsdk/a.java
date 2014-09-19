package com.inmobi.androidsdk;

import android.view.animation.*;
import com.inmobi.androidsdk.impl.anim.*;

class a
{
    private IMAdView a;
    private Animation$AnimationListener b;
    
    public a(final IMAdView a, final Animation$AnimationListener b) {
        super();
        this.a = a;
        this.b = b;
    }
    
    public void a(final IMAdView.AnimationType animationType) {
        if (animationType == IMAdView.AnimationType.ANIMATION_ALPHA) {
            final AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 0.5f);
            final AlphaAnimation alphaAnimation2 = new AlphaAnimation(0.5f, 1.0f);
            alphaAnimation.setDuration(1000L);
            alphaAnimation.setFillAfter(false);
            alphaAnimation.setAnimationListener(this.b);
            alphaAnimation.setInterpolator((Interpolator)new DecelerateInterpolator());
            alphaAnimation2.setDuration(500L);
            alphaAnimation2.setFillAfter(false);
            alphaAnimation2.setAnimationListener(this.b);
            alphaAnimation2.setInterpolator((Interpolator)new DecelerateInterpolator());
            this.a.a((Animation)alphaAnimation);
            this.a.b((Animation)alphaAnimation2);
        }
        else if (animationType == IMAdView.AnimationType.ROTATE_HORIZONTAL_AXIS) {
            final IMRotate3dAnimation imRotate3dAnimation = new IMRotate3dAnimation(0.0f, 90.0f, this.a.getWidth() / 2.0f, this.a.getHeight() / 2.0f, 0.0f, true);
            final IMRotate3dAnimation imRotate3dAnimation2 = new IMRotate3dAnimation(270.0f, 360.0f, this.a.getWidth() / 2.0f, this.a.getHeight() / 2.0f, 0.0f, true);
            imRotate3dAnimation.setDuration(500L);
            imRotate3dAnimation.setFillAfter(false);
            imRotate3dAnimation.setAnimationListener(this.b);
            imRotate3dAnimation.setInterpolator((Interpolator)new AccelerateInterpolator());
            imRotate3dAnimation2.setDuration(500L);
            imRotate3dAnimation2.setFillAfter(false);
            imRotate3dAnimation2.setAnimationListener(this.b);
            imRotate3dAnimation2.setInterpolator((Interpolator)new DecelerateInterpolator());
            this.a.a(imRotate3dAnimation);
            this.a.b(imRotate3dAnimation2);
        }
        else if (animationType == IMAdView.AnimationType.ROTATE_VERTICAL_AXIS) {
            final IMRotate3dAnimationVert imRotate3dAnimationVert = new IMRotate3dAnimationVert(0.0f, 90.0f, this.a.getWidth() / 2.0f, this.a.getHeight() / 2.0f, 0.0f, true);
            final IMRotate3dAnimationVert imRotate3dAnimationVert2 = new IMRotate3dAnimationVert(270.0f, 360.0f, this.a.getWidth() / 2.0f, this.a.getHeight() / 2.0f, 0.0f, true);
            imRotate3dAnimationVert.setDuration(500L);
            imRotate3dAnimationVert.setFillAfter(false);
            imRotate3dAnimationVert.setAnimationListener(this.b);
            imRotate3dAnimationVert.setInterpolator((Interpolator)new AccelerateInterpolator());
            imRotate3dAnimationVert2.setDuration(500L);
            imRotate3dAnimationVert2.setFillAfter(false);
            imRotate3dAnimationVert2.setAnimationListener(this.b);
            imRotate3dAnimationVert2.setInterpolator((Interpolator)new DecelerateInterpolator());
            this.a.a(imRotate3dAnimationVert);
            this.a.b(imRotate3dAnimationVert2);
        }
        this.a.startAnimation(this.a.a());
    }
}
