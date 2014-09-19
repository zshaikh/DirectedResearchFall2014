package com.flurry.android;

import android.content.*;
import android.text.*;
import java.util.*;

final class bb implements bq
{
    private static final String d;
    private final Map<String, bq> cq;
    
    static {
        d = bb.class.getSimpleName();
    }
    
    public bb(final Map<String, bq> cq) {
        super();
        this.cq = cq;
    }
    
    @Override
    public final ao a(final Context context, final FlurryAds flurryAds, final cz cz, final AdUnit adUnit) {
        if (context == null || flurryAds == null || cz == null || adUnit == null) {
            return null;
        }
        final List<AdFrame> adFrames = adUnit.getAdFrames();
        if (adFrames == null || adFrames.isEmpty()) {
            return null;
        }
        final AdFrame adFrame = adFrames.get(0);
        if (adFrame == null) {
            return null;
        }
        final String string = adFrame.getContent().toString();
        if (TextUtils.isEmpty((CharSequence)string)) {
            return null;
        }
        bq bq;
        if (this.cq != null) {
            bq = this.cq.get(string.toUpperCase(Locale.US));
        }
        else {
            bq = null;
        }
        if (bq == null) {
            return null;
        }
        new StringBuilder().append("Creating ad network takeover launcher: ").append(bq.getClass().getSimpleName()).append(" for type: ").append(string).toString();
        final ao a = bq.a(context, flurryAds, cz, adUnit);
        if (a == null) {
            db.d(bb.d, "Cannot create ad network takeover launcher for type: " + string);
        }
        return a;
    }
}
