package com.flurry.android;

import android.content.*;
import android.text.*;
import java.util.*;

final class z implements k
{
    private static final Map<String, k> ac;
    private static final String d;
    
    static {
        d = z.class.getSimpleName();
        final HashMap<String, k> m = new HashMap<String, k>();
        m.put("Admob".toUpperCase(Locale.US), new da());
        m.put("Millennial Media".toUpperCase(Locale.US), new cd());
        m.put("InMobi".toUpperCase(Locale.US), new b());
        m.put("Mobclix".toUpperCase(Locale.US), new al());
        m.put("Jumptap".toUpperCase(Locale.US), new be());
        ac = Collections.unmodifiableMap((Map<?, ?>)m);
    }
    
    @Override
    public final p b(final Context context, final FlurryAds flurryAds, final cz cz, final AdUnit m) {
        if (context == null || flurryAds == null || cz == null || m == null) {
            return null;
        }
        final List<AdFrame> adFrames = m.getAdFrames();
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
        final k k = z.ac.get(string.toUpperCase(Locale.US));
        if (k == null) {
            db.g(z.d, "Cannot create ad network view for type: " + string);
            return null;
        }
        new StringBuilder().append("Creating ad network view for type: ").append(string).toString();
        final p b = k.b(context, flurryAds, cz, m);
        if (b == null) {
            db.d(z.d, "Cannot create ad network view for type: " + string);
            return null;
        }
        if (b != null) {
            b.M = m;
        }
        return b;
    }
}
