package com.fusepowered.util;

import android.view.animation.*;

public class FuseAnimationController
{
    public static LayoutAnimationController getAdLayoutAnimationController(final AnimationSet set) {
        return new LayoutAnimationController((Animation)set, 0.25f);
    }
    
    public static Animation getAlphaAnimation(final int n) {
        final AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        ((Animation)alphaAnimation).setDuration((long)n);
        return (Animation)alphaAnimation;
    }
    
    public static AnimationSet getFancyTransitionAnimation(final int n) {
        final AnimationSet set = new AnimationSet(true);
        final TranslateAnimation translateAnimation = new TranslateAnimation(1, -1.0f, 1, 0.0f, 1, 0.0f, 1, 0.0f);
        final RotateAnimation rotateAnimation = new RotateAnimation(-15.0f, 0.0f);
        set.addAnimation((Animation)translateAnimation);
        set.addAnimation((Animation)rotateAnimation);
        set.setInterpolator((Interpolator)new AccelerateDecelerateInterpolator());
        set.setDuration((long)n);
        return set;
    }
    
    public static Animation getSlideInAnimation(final int n) {
        final TranslateAnimation translateAnimation = new TranslateAnimation(1, -1.0f, 1, 0.0f, 1, 0.0f, 1, 0.0f);
        ((Animation)translateAnimation).setDuration((long)n);
        ((Animation)translateAnimation).setInterpolator((Interpolator)new AccelerateDecelerateInterpolator());
        return (Animation)translateAnimation;
    }
    
    public static Animation getSlideOutAnimation(final int n) {
        final TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 1.0f, 1, 0.0f, 1, 0.0f);
        ((Animation)translateAnimation).setDuration((long)n);
        ((Animation)translateAnimation).setInterpolator((Interpolator)new AccelerateInterpolator());
        return (Animation)translateAnimation;
    }
    
    public static Animation getTranslateAnimation(final int n) {
        final TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, -1.0f, 1, 0.0f);
        ((Animation)translateAnimation).setDuration((long)n);
        ((Animation)translateAnimation).setInterpolator((Interpolator)new AccelerateDecelerateInterpolator());
        return (Animation)translateAnimation;
    }
}
