package com.flurry.android;

import android.content.*;
import java.util.*;

final class br implements bq
{
    private final List<bq> dN;
    
    public br() {
        super();
        final ArrayList<bq> list = new ArrayList<bq>();
        list.add(new cy());
        this.dN = (List<bq>)Collections.unmodifiableList((List<?>)list);
    }
    
    @Override
    public final ao a(final Context context, final FlurryAds flurryAds, final cz cz, final AdUnit adUnit) {
        ao a = null;
        final Iterator<bq> iterator = this.dN.iterator();
        while (iterator.hasNext()) {
            a = iterator.next().a(context, flurryAds, cz, adUnit);
            if (a != null) {
                break;
            }
        }
        return a;
    }
}
