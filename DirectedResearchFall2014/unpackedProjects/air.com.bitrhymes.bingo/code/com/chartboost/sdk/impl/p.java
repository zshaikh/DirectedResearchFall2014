package com.chartboost.sdk.impl;

import com.chartboost.sdk.Libraries.*;
import android.view.*;
import com.chartboost.sdk.*;
import android.view.animation.*;

public class p
{
    public static void a(final b b, final com.chartboost.sdk.impl.a a) {
        a(b, a, null);
    }
    
    public static void a(final b b, final com.chartboost.sdk.impl.a a, final a a2) {
        b(b, a, a2, true);
    }
    
    static /* synthetic */ int[] a() {
        final int[] a = p.a;
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
                            return p.a = a2;
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
        if (b == p.b.f) {
            if (a2 != null) {
                a2.a(a);
            }
        }
        else if (a != null && a.h != null) {
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
        final int[] b = p.b;
        if (b != null) {
            return b;
        }
        final int[] b2 = new int[p.b.values().length];
        while (true) {
            try {
                b2[p.b.b.ordinal()] = 2;
                try {
                    b2[p.b.f.ordinal()] = 6;
                    try {
                        b2[p.b.a.ordinal()] = 1;
                        try {
                            b2[p.b.c.ordinal()] = 3;
                            try {
                                b2[p.b.d.ordinal()] = 4;
                                try {
                                    b2[p.b.e.ordinal()] = 5;
                                    return p.b = b2;
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
                    case 3: {
                        r r = null;
                        switch (a()[forcedOrientationDifference.ordinal()]) {
                            default: {
                                if (b2) {
                                    r = new r(-60.0f, 0.0f, n / 2.0f, n2 / 2.0f, false);
                                    break;
                                }
                                r = new r(0.0f, 60.0f, n / 2.0f, n2 / 2.0f, false);
                                break;
                            }
                            case 2: {
                                if (b2) {
                                    r = new r(-60.0f, 0.0f, n / 2.0f, n2 / 2.0f, true);
                                    break;
                                }
                                r = new r(0.0f, 60.0f, n / 2.0f, n2 / 2.0f, true);
                                break;
                            }
                            case 3: {
                                if (b2) {
                                    r = new r(60.0f, 0.0f, n / 2.0f, n2 / 2.0f, false);
                                    break;
                                }
                                r = new r(0.0f, -60.0f, n / 2.0f, n2 / 2.0f, false);
                                break;
                            }
                            case 4: {
                                if (b2) {
                                    r = new r(60.0f, 0.0f, n / 2.0f, n2 / 2.0f, true);
                                    break;
                                }
                                r = new r(0.0f, -60.0f, n / 2.0f, n2 / 2.0f, true);
                                break;
                            }
                        }
                        r.setDuration(600L);
                        r.setFillAfter(true);
                        set.addAnimation((Animation)r);
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
                    case 1: {
                        r r2 = null;
                        switch (a()[forcedOrientationDifference.ordinal()]) {
                            default: {
                                if (b2) {
                                    r2 = new r(-60.0f, 0.0f, n / 2.0f, n2 / 2.0f, true);
                                    break;
                                }
                                r2 = new r(0.0f, 60.0f, n / 2.0f, n2 / 2.0f, true);
                                break;
                            }
                            case 2: {
                                if (b2) {
                                    r2 = new r(60.0f, 0.0f, n / 2.0f, n2 / 2.0f, false);
                                    break;
                                }
                                r2 = new r(0.0f, -60.0f, n / 2.0f, n2 / 2.0f, false);
                                break;
                            }
                            case 3: {
                                if (b2) {
                                    r2 = new r(60.0f, 0.0f, n / 2.0f, n2 / 2.0f, true);
                                    break;
                                }
                                r2 = new r(0.0f, -60.0f, n / 2.0f, n2 / 2.0f, true);
                                break;
                            }
                            case 4: {
                                if (b2) {
                                    r2 = new r(-60.0f, 0.0f, n / 2.0f, n2 / 2.0f, false);
                                    break;
                                }
                                r2 = new r(0.0f, 60.0f, n / 2.0f, n2 / 2.0f, false);
                                break;
                            }
                        }
                        r2.setDuration(600L);
                        r2.setFillAfter(true);
                        set.addAnimation((Animation)r2);
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
                    case 4: {
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
                                if (b2) {
                                    n5 = 0.0f;
                                }
                                else {
                                    n5 = n2;
                                }
                                n7 = n8;
                                n4 = 0.0f;
                                n6 = 0.0f;
                                break;
                            }
                            case 2: {
                                float n9;
                                if (b2) {
                                    n9 = -n;
                                }
                                else {
                                    n9 = 0.0f;
                                }
                                float n10;
                                if (b2) {
                                    n10 = 0.0f;
                                }
                                else {
                                    n10 = -n;
                                }
                                n4 = n10;
                                n6 = n9;
                                n7 = 0.0f;
                                n5 = 0.0f;
                                break;
                            }
                            case 3: {
                                float n11;
                                if (b2) {
                                    n11 = -n2;
                                }
                                else {
                                    n11 = 0.0f;
                                }
                                if (b2) {
                                    n5 = 0.0f;
                                }
                                else {
                                    n5 = -n2;
                                }
                                n7 = n11;
                                n4 = 0.0f;
                                n6 = 0.0f;
                                break;
                            }
                            case 4: {
                                float n12;
                                if (b2) {
                                    n12 = n;
                                }
                                else {
                                    n12 = 0.0f;
                                }
                                float n13;
                                if (b2) {
                                    n13 = 0.0f;
                                }
                                else {
                                    n13 = n;
                                }
                                n4 = n13;
                                n6 = n12;
                                n7 = 0.0f;
                                n5 = 0.0f;
                                break;
                            }
                        }
                        final TranslateAnimation translateAnimation3 = new TranslateAnimation(n6, n4, n7, n5);
                        ((Animation)translateAnimation3).setDuration(600L);
                        ((Animation)translateAnimation3).setFillAfter(true);
                        set.addAnimation((Animation)translateAnimation3);
                        break;
                    }
                    case 5: {
                        float n14 = 0.0f;
                        float n15 = 0.0f;
                        float n16 = 0.0f;
                        float n17 = 0.0f;
                        switch (a()[forcedOrientationDifference.ordinal()]) {
                            default: {
                                n15 = 0.0f;
                                n16 = 0.0f;
                                n17 = 0.0f;
                                break;
                            }
                            case 1: {
                                float n18;
                                if (b2) {
                                    n18 = -n2;
                                }
                                else {
                                    n18 = 0.0f;
                                }
                                if (b2) {
                                    n15 = 0.0f;
                                }
                                else {
                                    n15 = -n2;
                                }
                                n17 = n18;
                                n14 = 0.0f;
                                n16 = 0.0f;
                                break;
                            }
                            case 2: {
                                float n19;
                                if (b2) {
                                    n19 = n;
                                }
                                else {
                                    n19 = 0.0f;
                                }
                                float n20;
                                if (b2) {
                                    n20 = 0.0f;
                                }
                                else {
                                    n20 = n;
                                }
                                n14 = n20;
                                n16 = n19;
                                n17 = 0.0f;
                                n15 = 0.0f;
                                break;
                            }
                            case 3: {
                                float n21;
                                if (b2) {
                                    n21 = n2;
                                }
                                else {
                                    n21 = 0.0f;
                                }
                                if (b2) {
                                    n15 = 0.0f;
                                }
                                else {
                                    n15 = n2;
                                }
                                n17 = n21;
                                n14 = 0.0f;
                                n16 = 0.0f;
                                break;
                            }
                            case 4: {
                                float n22;
                                if (b2) {
                                    n22 = -n;
                                }
                                else {
                                    n22 = 0.0f;
                                }
                                float n23;
                                if (b2) {
                                    n23 = 0.0f;
                                }
                                else {
                                    n23 = -n;
                                }
                                n14 = n23;
                                n16 = n22;
                                n17 = 0.0f;
                                n15 = 0.0f;
                                break;
                            }
                        }
                        final TranslateAnimation translateAnimation4 = new TranslateAnimation(n16, n14, n17, n15);
                        ((Animation)translateAnimation4).setDuration(600L);
                        ((Animation)translateAnimation4).setFillAfter(true);
                        set.addAnimation((Animation)translateAnimation4);
                        break;
                    }
                    case 2: {
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
                if (b != p.b.f) {
                    Chartboost.sharedChartboost().getHandler().postDelayed((Runnable)new Runnable() {
                        @Override
                        public void run() {
                            if (a2 != null) {
                                a2.a(a);
                            }
                        }
                    }, 600L);
                    c.startAnimation((Animation)set);
                    return;
                }
                if (a2 != null) {
                    a2.a(a);
                }
            }
        }
    }
    
    public interface a
    {
        void a(com.chartboost.sdk.impl.a p0);
    }
    
    public enum b
    {
        a("CBAnimationTypePerspectiveRotate", 0), 
        b("CBAnimationTypeBounce", 1), 
        c("CBAnimationTypePerspectiveZoom", 2), 
        d("CBAnimationTypeSlideFromBottom", 3), 
        e("CBAnimationTypeSlideFromTop", 4), 
        f("CBAnimationTypeNone", 5);
        
        static {
            g = new b[] { b.a, b.b, b.c, b.d, b.e, b.f };
        }
        
        public static b a(final int n) {
            if (n == 0) {
                return null;
            }
            if (n > 0 && n <= values().length) {
                return values()[n - 1];
            }
            return null;
        }
    }
}
