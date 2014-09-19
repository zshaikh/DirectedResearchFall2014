package com.flurry.android;

import java.lang.ref.*;
import java.util.*;
import android.content.*;
import android.view.*;

final class dc
{
    private Map<String, bf> fj;
    private Map<String, WeakReference<ac>> fk;
    
    dc() {
        super();
        this.fj = new HashMap<String, bf>();
        this.fk = new HashMap<String, WeakReference<ac>>();
    }
    
    final ac A(final String s) {
        synchronized (this) {
            ac ac;
            if (this.fk.containsKey(s)) {
                ac = this.fk.get(s).get();
            }
            else {
                ac = null;
            }
            return ac;
        }
    }
    
    final void B(final String s) {
        synchronized (this) {
            this.fk.remove(s);
        }
    }
    
    final ac a(final FlurryAds flurryAds, final Context context, final ViewGroup viewGroup, final String s) {
        while (true) {
            final ac ac;
            synchronized (this) {
                final WeakReference<ac> weakReference = this.fk.get(s);
                ac referent;
                if (weakReference == null) {
                    referent = new ac(flurryAds, context, s, viewGroup);
                    this.fk.put(s, new WeakReference<ac>(referent));
                }
                else {
                    ac = weakReference.get();
                    if (ac != null && context == ac.getContext()) {
                        return ac;
                    }
                    final ac referent2 = new ac(flurryAds, context, s, viewGroup);
                    weakReference.clear();
                    this.fk.put(s, new WeakReference<ac>(referent2));
                    referent = referent2;
                }
                return referent;
            }
            return ac;
        }
    }
    
    final void a(final String s, final bf bf) {
        synchronized (this) {
            this.fj.put(s, bf);
        }
    }
    
    final bf n(final String s) {
        synchronized (this) {
            return this.fj.get(s);
        }
    }
    
    final void o(final String s) {
        synchronized (this) {
            this.fj.remove(s);
        }
    }
}
