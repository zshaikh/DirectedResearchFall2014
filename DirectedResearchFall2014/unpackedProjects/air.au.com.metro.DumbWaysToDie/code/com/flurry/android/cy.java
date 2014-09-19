package com.flurry.android;

import java.util.*;
import android.content.*;

final class cy implements bq
{
    private static final bq fa;
    
    static {
        final HashMap<String, bq> m = new HashMap<String, bq>();
        m.put("Admob".toUpperCase(Locale.US), new da());
        m.put("Millennial Media".toUpperCase(Locale.US), new cd());
        m.put("InMobi".toUpperCase(Locale.US), new b());
        m.put("Mobclix".toUpperCase(Locale.US), new al());
        m.put("Jumptap".toUpperCase(Locale.US), new be());
        fa = new bb((Map<String, bq>)Collections.unmodifiableMap((Map<?, ?>)m));
    }
    
    @Override
    public final ao a(final Context context, final FlurryAds flurryAds, final cz cz, final AdUnit adUnit) {
        return cy.fa.a(context, flurryAds, cz, adUnit);
    }
}
