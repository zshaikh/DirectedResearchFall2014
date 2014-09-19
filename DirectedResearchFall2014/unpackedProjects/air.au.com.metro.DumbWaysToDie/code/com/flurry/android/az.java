package com.flurry.android;

import android.text.*;
import android.content.*;
import android.os.*;
import java.util.*;

abstract class az implements bq, k
{
    private static final String d;
    
    static {
        d = az.class.getSimpleName();
    }
    
    private static boolean a(final av av) {
        boolean b;
        if (av == null) {
            b = false;
        }
        else {
            while (true) {
                while (true) {
                    try {
                        if (!TextUtils.isEmpty((CharSequence)av.H())) {
                            Class.forName(av.H());
                            b = true;
                            if (!b) {
                                db.d(az.d, "Please consider to add to the project the library: " + av.F() + " version: " + av.G() + " or higher");
                                return b;
                            }
                            break;
                        }
                    }
                    catch (ClassNotFoundException ex) {
                        db.a(6, az.d, "failed to find third party ad network api with exception: ", ex);
                        b = false;
                        continue;
                    }
                    catch (ExceptionInInitializerError exceptionInInitializerError) {
                        db.a(6, az.d, "failed to initialize third party ad network api with exception: ", exceptionInInitializerError);
                        b = false;
                        continue;
                    }
                    catch (LinkageError linkageError) {
                        db.a(6, az.d, "failed to link third party ad network api with exception: ", linkageError);
                    }
                    b = false;
                    continue;
                }
            }
        }
        return b;
    }
    
    protected abstract Bundle a(final Context p0);
    
    @Override
    public final ao a(final Context context, final FlurryAds flurryAds, final cz cz, final AdUnit adUnit) {
        if (context == null || flurryAds == null || cz == null || adUnit == null) {
            return null;
        }
        final av b = this.b();
        if (b == null) {
            return null;
        }
        if (!a(b)) {
            return null;
        }
        final Bundle a = this.a(context);
        if (a == null) {
            return null;
        }
        return this.a(context, flurryAds, cz, adUnit, a);
    }
    
    protected abstract ao a(final Context p0, final FlurryAds p1, final cz p2, final AdUnit p3, final Bundle p4);
    
    protected abstract p a(final Context p0, final FlurryAds p1, final cz p2, final AdCreative p3, final Bundle p4);
    
    protected abstract av b();
    
    @Override
    public final p b(final Context context, final FlurryAds flurryAds, final cz cz, final AdUnit adUnit) {
        if (context == null || flurryAds == null || cz == null || adUnit == null) {
            return null;
        }
        final av c = this.c();
        if (c == null) {
            return null;
        }
        if (!a(c)) {
            return null;
        }
        final Bundle a = this.a(context);
        if (a == null) {
            return null;
        }
        AdCreative b;
        if (adUnit == null) {
            b = null;
        }
        else {
            final List<AdFrame> adFrames = adUnit.getAdFrames();
            if (adFrames == null || adFrames.isEmpty()) {
                b = null;
            }
            else {
                final AdFrame adFrame = adFrames.get(0);
                if (adFrame == null) {
                    b = null;
                }
                else {
                    final AdSpaceLayout adSpaceLayout = adFrame.getAdSpaceLayout();
                    if (adSpaceLayout == null) {
                        b = null;
                    }
                    else {
                        b = cx.b(adSpaceLayout);
                    }
                }
            }
        }
        if (b == null) {
            return null;
        }
        return this.a(context, flurryAds, cz, b, a);
    }
    
    protected abstract av c();
}
