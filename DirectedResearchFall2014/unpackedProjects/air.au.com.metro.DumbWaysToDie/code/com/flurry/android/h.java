package com.flurry.android;

import android.content.*;
import android.util.*;
import java.util.*;

final class h implements bq
{
    private static String d;
    private static final Map<String, bq> o;
    
    static {
        h.d = h.class.getSimpleName();
        final HashMap<String, bq> m = new HashMap<String, bq>();
        m.put("FLURRY", new ba());
        m.put("THIRD_PARTY", new br());
        o = Collections.unmodifiableMap((Map<?, ?>)m);
    }
    
    @Override
    public final ao a(final Context context, final FlurryAds flurryAds, final cz cz, final AdUnit adUnit) {
        if (context == null || flurryAds == null || cz == null || adUnit == null) {
            return null;
        }
        while (true) {
            Label_0134: {
                if (adUnit == null) {
                    break Label_0134;
                }
                final List<AdFrame> adFrames = adUnit.getAdFrames();
                String s;
                if (adFrames == null || adFrames.isEmpty()) {
                    s = null;
                }
                else {
                    final AdFrame adFrame = adFrames.get(0);
                    if (adFrame == null) {
                        break Label_0134;
                    }
                    final int intValue = adFrame.getBinding();
                    if (adUnit.getCombinable() == 1 || intValue == 2 || intValue == 1 || intValue == 3) {
                        s = "FLURRY";
                    }
                    else {
                        if (intValue != 4) {
                            break Label_0134;
                        }
                        s = "THIRD_PARTY";
                    }
                }
                if (s == null) {
                    return null;
                }
                final bq bq = h.o.get(s);
                if (bq == null) {
                    Log.w(h.d, "Cannot create ad takeover for type: " + s);
                    return null;
                }
                new StringBuilder().append("Creating ad takeover for type: ").append(s).toString();
                return bq.a(context, flurryAds, cz, adUnit);
            }
            String s = null;
            continue;
        }
    }
}
