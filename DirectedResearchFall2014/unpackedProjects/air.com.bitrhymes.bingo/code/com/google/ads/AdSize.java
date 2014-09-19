package com.google.ads;

import android.content.*;
import android.util.*;

public class AdSize
{
    public static final int AUTO_HEIGHT = -2;
    public static final AdSize BANNER;
    public static final int FULL_WIDTH = -1;
    public static final AdSize IAB_BANNER;
    public static final AdSize IAB_LEADERBOARD;
    public static final AdSize IAB_MRECT;
    public static final AdSize IAB_WIDE_SKYSCRAPER;
    public static final int LANDSCAPE_AD_HEIGHT = 32;
    public static final int LARGE_AD_HEIGHT = 90;
    public static final int PORTRAIT_AD_HEIGHT = 50;
    public static final AdSize SMART_BANNER;
    private final int a;
    private final int b;
    private boolean c;
    private boolean d;
    private boolean e;
    private String f;
    
    static {
        SMART_BANNER = new AdSize(-1, -2, "mb");
        BANNER = new AdSize(320, 50, "mb");
        IAB_MRECT = new AdSize(300, 250, "as");
        IAB_BANNER = new AdSize(468, 60, "as");
        IAB_LEADERBOARD = new AdSize(728, 90, "as");
        IAB_WIDE_SKYSCRAPER = new AdSize(160, 600, "as");
    }
    
    public AdSize(final int n, final int n2) {
        this(n, n2, null);
        if (this.a()) {
            this.e = false;
            this.f = "mb";
            return;
        }
        this.e = true;
    }
    
    private AdSize(final int a, final int b, final String f) {
        super();
        this.a = a;
        this.b = b;
        this.f = f;
        this.c = (a == -1);
        this.d = (b == -2);
        this.e = false;
    }
    
    private static int a(final Context context) {
        final DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return (int)(displayMetrics.widthPixels / displayMetrics.density);
    }
    
    private boolean a() {
        return this.a < 0 || this.b < 0;
    }
    
    private static int b(final Context context) {
        final DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        final int n = (int)(displayMetrics.heightPixels / displayMetrics.density);
        if (n <= 400) {
            return 32;
        }
        if (n <= 720) {
            return 50;
        }
        return 90;
    }
    
    public static AdSize createAdSize(final AdSize adSize, final Context context) {
        if (context != null && adSize.a()) {
            int n;
            if (adSize.c) {
                n = a(context);
            }
            else {
                n = adSize.getWidth();
            }
            int n2;
            if (adSize.d) {
                n2 = b(context);
            }
            else {
                n2 = adSize.getHeight();
            }
            final AdSize adSize2 = new AdSize(n, n2, adSize.f);
            adSize2.d = adSize.d;
            adSize2.c = adSize.c;
            adSize2.e = adSize.e;
            return adSize2;
        }
        if (adSize.a()) {
            return AdSize.BANNER;
        }
        return adSize;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (!(o instanceof AdSize)) {
            return false;
        }
        final AdSize adSize = (AdSize)o;
        return this.a == adSize.a && this.b == adSize.b;
    }
    
    public AdSize findBestSize(final AdSize... array) {
        double n = 0.0;
        AdSize adSize = null;
        if (array != null) {
            final int length = array.length;
            AdSize adSize2 = null;
            for (final AdSize adSize3 : array) {
                if (this.isSizeAppropriate(adSize3.a, adSize3.b)) {
                    double n2 = adSize3.a * adSize3.b / (this.a * this.b);
                    if (n2 > 1.0) {
                        n2 = 1.0 / n2;
                    }
                    if (n2 > n) {
                        n = n2;
                        adSize2 = adSize3;
                    }
                }
            }
            adSize = adSize2;
        }
        return adSize;
    }
    
    public int getHeight() {
        if (this.b < 0) {
            throw new UnsupportedOperationException("Ad size was not set before getHeight() was called.");
        }
        return this.b;
    }
    
    public int getHeightInPixels(final Context context) {
        return (int)TypedValue.applyDimension(1, (float)this.b, context.getResources().getDisplayMetrics());
    }
    
    public int getWidth() {
        if (this.a < 0) {
            throw new UnsupportedOperationException("Ad size was not set before getWidth() was called.");
        }
        return this.a;
    }
    
    public int getWidthInPixels(final Context context) {
        return (int)TypedValue.applyDimension(1, (float)this.a, context.getResources().getDisplayMetrics());
    }
    
    @Override
    public int hashCode() {
        return Integer.valueOf(this.a).hashCode() << 16 | (0xFFFF & Integer.valueOf(this.b).hashCode());
    }
    
    public boolean isAutoHeight() {
        return this.d;
    }
    
    public boolean isCustomAdSize() {
        return this.e;
    }
    
    public boolean isFullWidth() {
        return this.c;
    }
    
    public boolean isSizeAppropriate(final int n, final int n2) {
        return n <= 1.25 * this.a && n >= 0.8 * this.a && n2 <= 1.25 * this.b && n2 >= 0.8 * this.b;
    }
    
    @Override
    public String toString() {
        final StringBuilder append = new StringBuilder().append(this.getWidth()).append("x").append(this.getHeight());
        String string;
        if (this.f == null) {
            string = "";
        }
        else {
            string = "_" + this.f;
        }
        return append.append(string).toString();
    }
}
