package com.chartboost.sdk.impl;

import com.chartboost.sdk.Libraries.*;
import android.view.*;
import com.chartboost.sdk.*;
import android.view.animation.*;

public class n
{
    public static void a(final b b, final com.chartboost.sdk.impl.a a) {
        a(b, a, null);
    }
    
    public static void a(final b b, final com.chartboost.sdk.impl.a a, final a a2) {
        b(b, a, a2, true);
    }
    
    static /* synthetic */ int[] a() {
        final int[] a = n.a;
        if (a != null) {
            return a;
        }
        final int[] a2 = new int[CBOrientation.Difference.values().length];
        while (true) {
            try {
                a2[CBOrientation.Difference.ANGLE_0.ordinal()] = 1;
                try {
                    a2[CBOrientation.Difference.ANGLE_180.ordinal()] = 3;
                    try {
                        a2[CBOrientation.Difference.ANGLE_270.ordinal()] = 4;
                        try {
                            a2[CBOrientation.Difference.ANGLE_90.ordinal()] = 2;
                            return n.a = a2;
                        }
                        catch (NoSuchFieldError noSuchFieldError) {}
                    }
                    catch (NoSuchFieldError noSuchFieldError2) {}
                }
                catch (NoSuchFieldError noSuchFieldError3) {}
            }
            catch (NoSuchFieldError noSuchFieldError4) {
                continue;
            }
            break;
        }
    }
    
    public static void b(final b b, final com.chartboost.sdk.impl.a a, final a a2) {
        c(b, a, a2, false);
    }
    
    private static void b(final b b, final com.chartboost.sdk.impl.a a, final a a2, final Boolean b2) {
        if (a != null && a.h != null) {
            final View c = a.h.c();
            if (c != null) {
                final ViewTreeObserver viewTreeObserver = c.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.addOnGlobalLayoutListener((ViewTreeObserver$OnGlobalLayoutListener)new ViewTreeObserver$OnGlobalLayoutListener() {
                        public void onGlobalLayout() {
                            c.getViewTreeObserver().removeGlobalOnLayoutListener((ViewTreeObserver$OnGlobalLayoutListener)this);
                            c(b, a, a2, b2);
                        }
                    });
                }
            }
        }
    }
    
    static /* synthetic */ int[] b() {
        final int[] b = n.b;
        if (b != null) {
            return b;
        }
        final int[] b2 = new int[n.b.values().length];
        while (true) {
            try {
                b2[n.b.c.ordinal()] = 3;
                try {
                    b2[n.b.a.ordinal()] = 1;
                    try {
                        b2[n.b.b.ordinal()] = 2;
                        try {
                            b2[n.b.d.ordinal()] = 4;
                            try {
                                b2[n.b.e.ordinal()] = 5;
                                try {
                                    b2[n.b.f.ordinal()] = 6;
                                    return n.b = b2;
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
            catch (NoSuchFieldError noSuchFieldError6) {
                continue;
            }
            break;
        }
    }
    
    private static void c(final b b, final com.chartboost.sdk.impl.a a, final a a2, final Boolean b2) {
        final AnimationSet set = new AnimationSet(true);
        set.addAnimation((Animation)new AlphaAnimation(1.0f, 1.0f));
        if (a != null && a.h != null) {
            final View c = a.h.c();
            if (c != null) {
                final float n = c.getWidth();
                final float n2 = c.getHeight();
                final float n3 = (1.0f - 0.4f) / 2.0f;
                final CBOrientation.Difference forcedOrientationDifference = Chartboost.sharedChartboost().getForcedOrientationDifference();
                switch (b()[b.ordinal()]) {
                    case 4: {
                        p p4 = null;
                        switch (a()[forcedOrientationDifference.ordinal()]) {
                            default: {
                                if (b2) {
                                    p4 = new p(-60.0f, 0.0f, n / 2.0f, n2 / 2.0f, false);
                                    break;
                                }
                                p4 = new p(0.0f, 60.0f, n / 2.0f, n2 / 2.0f, false);
                                break;
                            }
                            case 2: {
                                if (b2) {
                                    p4 = new p(-60.0f, 0.0f, n / 2.0f, n2 / 2.0f, true);
                                    break;
                                }
                                p4 = new p(0.0f, 60.0f, n / 2.0f, n2 / 2.0f, true);
                                break;
                            }
                            case 3: {
                                if (b2) {
                                    p4 = new p(60.0f, 0.0f, n / 2.0f, n2 / 2.0f, false);
                                    break;
                                }
                                p4 = new p(0.0f, -60.0f, n / 2.0f, n2 / 2.0f, false);
                                break;
                            }
                            case 4: {
                                if (b2) {
                                    p4 = new p(60.0f, 0.0f, n / 2.0f, n2 / 2.0f, true);
                                    break;
                                }
                                p4 = new p(0.0f, -60.0f, n / 2.0f, n2 / 2.0f, true);
                                break;
                            }
                        }
                        p4.setDuration(600L);
                        p4.setFillAfter(true);
                        set.addAnimation((Animation)p4);
                        ScaleAnimation scaleAnimation;
                        if (b2) {
                            scaleAnimation = new ScaleAnimation(0.4f, 1.0f, 0.4f, 1.0f);
                        }
                        else {
                            scaleAnimation = new ScaleAnimation(1.0f, 0.4f, 1.0f, 0.4f);
                        }
                        ((Animation)scaleAnimation).setDuration(600L);
                        ((Animation)scaleAnimation).setFillAfter(true);
                        set.addAnimation((Animation)scaleAnimation);
                        TranslateAnimation translateAnimation = null;
                        switch (a()[forcedOrientationDifference.ordinal()]) {
                            default: {
                                if (b2) {
                                    translateAnimation = new TranslateAnimation(n * n3, 0.0f, 0.4f * -n2, 0.0f);
                                    break;
                                }
                                translateAnimation = new TranslateAnimation(0.0f, n * n3, 0.0f, n2);
                                break;
                            }
                            case 2: {
                                if (b2) {
                                    translateAnimation = new TranslateAnimation(n, 0.0f, n2 * n3, 0.0f);
                                    break;
                                }
                                translateAnimation = new TranslateAnimation(0.0f, 0.4f * -n, 0.0f, n2 * n3);
                                break;
                            }
                            case 3: {
                                if (b2) {
                                    translateAnimation = new TranslateAnimation(n * n3, 0.0f, n2, 0.0f);
                                    break;
                                }
                                translateAnimation = new TranslateAnimation(0.0f, n * n3, 0.0f, 0.4f * -n2);
                                break;
                            }
                            case 4: {
                                if (b2) {
                                    translateAnimation = new TranslateAnimation(0.4f * -n, 0.0f, n2 * n3, 0.0f);
                                    break;
                                }
                                translateAnimation = new TranslateAnimation(0.0f, n, 0.0f, n2 * n3);
                                break;
                            }
                        }
                        ((Animation)translateAnimation).setDuration(600L);
                        ((Animation)translateAnimation).setFillAfter(true);
                        set.addAnimation((Animation)translateAnimation);
                        break;
                    }
                    case 2: {
                        p p5 = null;
                        switch (a()[forcedOrientationDifference.ordinal()]) {
                            default: {
                                if (b2) {
                                    p5 = new p(-60.0f, 0.0f, n / 2.0f, n2 / 2.0f, true);
                                    break;
                                }
                                p5 = new p(0.0f, 60.0f, n / 2.0f, n2 / 2.0f, true);
                                break;
                            }
                            case 2: {
                                if (b2) {
                                    p5 = new p(60.0f, 0.0f, n / 2.0f, n2 / 2.0f, false);
                                    break;
                                }
                                p5 = new p(0.0f, -60.0f, n / 2.0f, n2 / 2.0f, false);
                                break;
                            }
                            case 3: {
                                if (b2) {
                                    p5 = new p(60.0f, 0.0f, n / 2.0f, n2 / 2.0f, true);
                                    break;
                                }
                                p5 = new p(0.0f, -60.0f, n / 2.0f, n2 / 2.0f, true);
                                break;
                            }
                            case 4: {
                                if (b2) {
                                    p5 = new p(-60.0f, 0.0f, n / 2.0f, n2 / 2.0f, false);
                                    break;
                                }
                                p5 = new p(0.0f, 60.0f, n / 2.0f, n2 / 2.0f, false);
                                break;
                            }
                        }
                        p5.setDuration(600L);
                        p5.setFillAfter(true);
                        set.addAnimation((Animation)p5);
                        ScaleAnimation scaleAnimation2;
                        if (b2) {
                            scaleAnimation2 = new ScaleAnimation(0.4f, 1.0f, 0.4f, 1.0f);
                        }
                        else {
                            scaleAnimation2 = new ScaleAnimation(1.0f, 0.4f, 1.0f, 0.4f);
                        }
                        ((Animation)scaleAnimation2).setDuration(600L);
                        ((Animation)scaleAnimation2).setFillAfter(true);
                        set.addAnimation((Animation)scaleAnimation2);
                        TranslateAnimation translateAnimation2 = null;
                        switch (a()[forcedOrientationDifference.ordinal()]) {
                            default: {
                                if (b2) {
                                    translateAnimation2 = new TranslateAnimation(0.4f * -n, 0.0f, n2 * n3, 0.0f);
                                    break;
                                }
                                translateAnimation2 = new TranslateAnimation(0.0f, n, 0.0f, n2 * n3);
                                break;
                            }
                            case 2: {
                                if (b2) {
                                    translateAnimation2 = new TranslateAnimation(n * n3, 0.0f, 0.4f * -n2, 0.0f);
                                    break;
                                }
                                translateAnimation2 = new TranslateAnimation(0.0f, n * n3, 0.0f, n2);
                                break;
                            }
                            case 3: {
                                if (b2) {
                                    translateAnimation2 = new TranslateAnimation(n, 0.0f, n2 * n3, 0.0f);
                                    break;
                                }
                                translateAnimation2 = new TranslateAnimation(0.0f, 0.4f * -n, 0.0f, n2 * n3);
                                break;
                            }
                            case 4: {
                                if (b2) {
                                    translateAnimation2 = new TranslateAnimation(n * n3, 0.0f, n2, 0.0f);
                                    break;
                                }
                                translateAnimation2 = new TranslateAnimation(0.0f, n * n3, 0.0f, 0.4f * -n2);
                                break;
                            }
                        }
                        ((Animation)translateAnimation2).setDuration(600L);
                        ((Animation)translateAnimation2).setFillAfter(true);
                        set.addAnimation((Animation)translateAnimation2);
                        break;
                    }
                    case 5: {
                        float n4 = 0.0f;
                        float n5 = 0.0f;
                        float n6 = 0.0f;
                        float n7 = 0.0f;
                        switch (a()[forcedOrientationDifference.ordinal()]) {
                            default: {
                                n5 = 0.0f;
                                n6 = 0.0f;
                                n7 = 0.0f;
                                break;
                            }
                            case 1: {
                                float n8;
                                if (b2) {
                                    n8 = n2;
                                }
                                else {
                                    n8 = 0.0f;
                                }
                                float n9;
                                if (b2) {
                                    n9 = 0.0f;
                                }
                                else {
                                    n9 = n2;
                                }
                                final float n10 = n9;
                                n5 = n8;
                                n7 = n10;
                                n4 = 0.0f;
                                n6 = 0.0f;
                                break;
                            }
                            case 2: {
                                float n11;
                                if (b2) {
                                    n11 = -n;
                                }
                                else {
                                    n11 = 0.0f;
                                }
                                float n12;
                                if (b2) {
                                    n12 = 0.0f;
                                }
                                else {
                                    n12 = -n;
                                }
                                n4 = n12;
                                n6 = n11;
                                n7 = 0.0f;
                                n5 = 0.0f;
                                break;
                            }
                            case 3: {
                                float n13;
                                if (b2) {
                                    n13 = -n2;
                                }
                                else {
                                    n13 = 0.0f;
                                }
                                float n14;
                                if (b2) {
                                    n14 = 0.0f;
                                }
                                else {
                                    n14 = -n2;
                                }
                                final float n15 = n14;
                                n5 = n13;
                                n7 = n15;
                                n4 = 0.0f;
                                n6 = 0.0f;
                                break;
                            }
                            case 4: {
                                float n16;
                                if (b2) {
                                    n16 = n;
                                }
                                else {
                                    n16 = 0.0f;
                                }
                                float n17;
                                if (b2) {
                                    n17 = 0.0f;
                                }
                                else {
                                    n17 = n;
                                }
                                n4 = n17;
                                n6 = n16;
                                n7 = 0.0f;
                                n5 = 0.0f;
                                break;
                            }
                        }
                        final TranslateAnimation translateAnimation3 = new TranslateAnimation(n6, n4, n5, n7);
                        ((Animation)translateAnimation3).setDuration(600L);
                        ((Animation)translateAnimation3).setFillAfter(true);
                        set.addAnimation((Animation)translateAnimation3);
                        break;
                    }
                    case 6: {
                        float n18 = 0.0f;
                        float n19 = 0.0f;
                        float n20 = 0.0f;
                        float n21 = 0.0f;
                        switch (a()[forcedOrientationDifference.ordinal()]) {
                            default: {
                                n19 = 0.0f;
                                n20 = 0.0f;
                                n21 = 0.0f;
                                break;
                            }
                            case 1: {
                                float n22;
                                if (b2) {
                                    n22 = -n2;
                                }
                                else {
                                    n22 = 0.0f;
                                }
                                float n23;
                                if (b2) {
                                    n23 = 0.0f;
                                }
                                else {
                                    n23 = -n2;
                                }
                                final float n24 = n23;
                                n19 = n22;
                                n21 = n24;
                                n18 = 0.0f;
                                n20 = 0.0f;
                                break;
                            }
                            case 2: {
                                float n25;
                                if (b2) {
                                    n25 = n;
                                }
                                else {
                                    n25 = 0.0f;
                                }
                                float n26;
                                if (b2) {
                                    n26 = 0.0f;
                                }
                                else {
                                    n26 = n;
                                }
                                n18 = n26;
                                n20 = n25;
                                n21 = 0.0f;
                                n19 = 0.0f;
                                break;
                            }
                            case 3: {
                                float n27;
                                if (b2) {
                                    n27 = n2;
                                }
                                else {
                                    n27 = 0.0f;
                                }
                                float n28;
                                if (b2) {
                                    n28 = 0.0f;
                                }
                                else {
                                    n28 = n2;
                                }
                                final float n29 = n28;
                                n19 = n27;
                                n21 = n29;
                                n18 = 0.0f;
                                n20 = 0.0f;
                                break;
                            }
                            case 4: {
                                float n30;
                                if (b2) {
                                    n30 = -n;
                                }
                                else {
                                    n30 = 0.0f;
                                }
                                float n31;
                                if (b2) {
                                    n31 = 0.0f;
                                }
                                else {
                                    n31 = -n;
                                }
                                n18 = n31;
                                n20 = n30;
                                n21 = 0.0f;
                                n19 = 0.0f;
                                break;
                            }
                        }
                        final TranslateAnimation translateAnimation4 = new TranslateAnimation(n20, n18, n19, n21);
                        ((Animation)translateAnimation4).setDuration(600L);
                        ((Animation)translateAnimation4).setFillAfter(true);
                        set.addAnimation((Animation)translateAnimation4);
                        break;
                    }
                    case 3: {
                        if (b2) {
                            final ScaleAnimation scaleAnimation3 = new ScaleAnimation(0.6f, 1.1f, 0.6f, 1.1f, 1, 0.5f, 1, 0.5f);
                            ((Animation)scaleAnimation3).setDuration((long)Math.round(0.6f * 600L));
                            ((Animation)scaleAnimation3).setStartOffset(0L);
                            ((Animation)scaleAnimation3).setFillAfter(true);
                            set.addAnimation((Animation)scaleAnimation3);
                            final ScaleAnimation scaleAnimation4 = new ScaleAnimation(1.0f, 0.81818175f, 1.0f, 0.81818175f, 1, 0.5f, 1, 0.5f);
                            ((Animation)scaleAnimation4).setDuration((long)Math.round(0.19999999f * 600L));
                            ((Animation)scaleAnimation4).setStartOffset((long)Math.round(0.6f * 600L));
                            ((Animation)scaleAnimation4).setFillAfter(true);
                            set.addAnimation((Animation)scaleAnimation4);
                            final ScaleAnimation scaleAnimation5 = new ScaleAnimation(1.0f, 1.1111112f, 1.0f, 1.1111112f, 1, 0.5f, 1, 0.5f);
                            ((Animation)scaleAnimation5).setDuration((long)Math.round(0.099999964f * 600L));
                            ((Animation)scaleAnimation5).setStartOffset((long)Math.round(0.8f * 600L));
                            ((Animation)scaleAnimation5).setFillAfter(true);
                            set.addAnimation((Animation)scaleAnimation5);
                            break;
                        }
                        final ScaleAnimation scaleAnimation6 = new ScaleAnimation(1.0f, 0.0f, 1.0f, 0.0f, 1, 0.5f, 1, 0.5f);
                        ((Animation)scaleAnimation6).setDuration(600L);
                        ((Animation)scaleAnimation6).setStartOffset(0L);
                        ((Animation)scaleAnimation6).setFillAfter(true);
                        set.addAnimation((Animation)scaleAnimation6);
                        break;
                    }
                }
                set.setAnimationListener((Animation$AnimationListener)new Animation$AnimationListener() {
                    public void onAnimationEnd(final Animation animation) {
                        if (a2 != null) {
                            a2.a(a);
                        }
                    }
                    
                    public void onAnimationRepeat(final Animation animation) {
                    }
                    
                    public void onAnimationStart(final Animation animation) {
                    }
                });
                c.startAnimation((Animation)set);
            }
        }
    }
    
    public interface a
    {
        void a(com.chartboost.sdk.impl.a p0);
    }
    
    public enum b
    {
        a("CBAnimationTypeNone", 0), 
        b("CBAnimationTypePerspectiveRotate", 1), 
        c("CBAnimationTypeBounce", 2), 
        d("CBAnimationTypePerspectiveZoom", 3), 
        e("CBAnimationTypeSlideFromBottom", 4), 
        f("CBAnimationTypeSlideFromTop", 5);
        
        static {
            g = new b[] { b.a, b.b, b.c, b.d, b.e, b.f };
        }
    }
}
