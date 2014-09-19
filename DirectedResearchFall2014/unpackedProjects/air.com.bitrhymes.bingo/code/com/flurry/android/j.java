package com.flurry.android;

import android.content.*;
import android.util.*;
import java.util.*;

final class j implements k
{
    private static String d;
    private static final Map<String, k> v;
    
    static {
        j.d = j.class.getSimpleName();
        final HashMap<String, k> m = new HashMap<String, k>();
        m.put("FLURRY", new t());
        m.put("THIRD_PARTY", new z());
        v = Collections.unmodifiableMap((Map<?, ?>)m);
    }
    
    @Override
    public final p b(final Context context, final FlurryAds flurryAds, final cz cz, final AdUnit adUnit) {
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
                final k k = j.v.get(s);
                if (k == null) {
                    Log.w(j.d, "Cannot create ad banner for type: " + s);
                    return null;
                }
                new StringBuilder().append("Creating ad banner for type: ").append(s).toString();
                return k.b(context, flurryAds, cz, adUnit);
            }
            String s = null;
            continue;
        }
    }
}
