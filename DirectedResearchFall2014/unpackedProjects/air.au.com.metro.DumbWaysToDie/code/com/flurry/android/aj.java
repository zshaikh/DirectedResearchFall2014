package com.flurry.android;

import android.content.*;
import android.os.*;
import java.util.*;

final class aj
{
    Context bE;
    private Map<String, List<AdUnit>> bF;
    private bw bG;
    
    aj() {
        super();
        this.bF = new HashMap<String, List<AdUnit>>();
    }
    
    private void c(final String s, final int n) {
        while (true) {
            while (true) {
                final FlurryAdSize banner_BOTTOM;
                synchronized (this) {
                    final List<AdUnit> list = this.bF.get(s);
                    banner_BOTTOM = FlurryAdSize.BANNER_BOTTOM;
                    if (list != null && list.size() > 0 && list.get(0).getAdFrames().size() > 0 && list.get(0).getAdFrames().get(0).getAdSpaceLayout() != null) {
                        final FlurryAdSize a = FlurryAdSize.a(list.get(0).getAdFrames().get(0).getAdSpaceLayout());
                        if (this.c(list)) {
                            final StringBuilder append = new StringBuilder().append("Starting AsyncAdTask from EnsureCacheNotEmpty size: ");
                            String string;
                            if (list != null) {
                                string = Integer.toString(list.size());
                            }
                            else {
                                string = "";
                            }
                            append.append(string).append(" wait: ").append(Integer.toString(0)).toString();
                            final FlurryAds instance = FlurryAds.getInstance();
                            instance.getClass();
                            (this.bG = new bw(instance, this.bE, s, a)).execute((Object[])new Void[0]);
                        }
                        return;
                    }
                }
                final FlurryAdSize a = banner_BOTTOM;
                continue;
            }
        }
    }
    
    private boolean c(final List<AdUnit> list) {
        // monitorenter(this)
        Label_0016: {
            if (list == null) {
                break Label_0016;
            }
            try {
                Label_0049: {
                    if (list.size() >= 2) {
                        break Label_0049;
                    }
                    if (this.bG != null && !this.bG.getStatus().equals((Object)AsyncTask$Status.FINISHED)) {
                        break Label_0049;
                    }
                    return true;
                }
                if (this.bG != null) {
                    this.bG.getStatus().equals((Object)AsyncTask$Status.FINISHED);
                }
                return false;
            }
            finally {
            }
            // monitorexit(this)
        }
    }
    
    final void a(final String s, final int n) {
        synchronized (this) {
            final List<AdUnit> list = this.bF.get(s);
            if (list != null) {
                if (n <= -1 || n > list.size()) {
                    this.bF.put(s, new ArrayList<AdUnit>());
                }
                else if (n > 0) {
                    list.subList(0, n).clear();
                    this.bF.put(s, list);
                }
            }
            this.c(s, 0);
        }
    }
    
    final List<AdUnit> b(final String s, final int n) {
        final ArrayList<AdUnit> list;
        synchronized (this) {
            list = new ArrayList<AdUnit>();
            final List<AdUnit> list2 = this.bF.get(s);
            if (list2 != null) {
                final Iterator<AdUnit> iterator = list2.iterator();
                while (iterator.hasNext() && list.size() <= n) {
                    final AdUnit adUnit = iterator.next();
                    if (bd.b(adUnit.getExpiration()) && adUnit.getCombinable() == 1 && adUnit.getAdFrames().size() > 0) {
                        list.add(adUnit);
                        iterator.remove();
                    }
                }
            }
        }
        this.c(s, 0);
        // monitorexit(this)
        return list;
    }
    
    final void b(final String s, final String anObject) {
        synchronized (this) {
            final List<AdUnit> list = this.bF.get(s);
            if (list != null) {
                final Iterator<AdUnit> iterator = list.iterator();
                while (iterator.hasNext()) {
                    if (iterator.next().getGroupId().toString().equals(anObject)) {
                        iterator.remove();
                    }
                }
            }
        }
        this.c(s, 0);
    }
    // monitorexit(this)
    
    final void b(final List<AdUnit> list) {
        synchronized (this.bF) {
            for (final AdUnit adUnit : list) {
                if (adUnit.getIdHash().length() > 0) {
                    FlurryFreqCapManager.an().a(new FlurryFreqCapInfo(adUnit.getIdHash().toString(), adUnit.getServeTime(), adUnit.getExpirationTime(), adUnit.getNewCap(), adUnit.getPreviousCap(), adUnit.getPreviousCapType()));
                }
                final String string = adUnit.getAdSpace().toString();
                List<AdUnit> list2 = this.bF.get(string);
                if (list2 == null) {
                    list2 = new ArrayList<AdUnit>();
                }
                list2.add(adUnit);
                this.bF.put(string, list2);
            }
        }
    }
    // monitorexit(map)
    
    final AdUnit h(final String s) {
        synchronized (this) {
            final List<AdUnit> list = this.bF.get(s);
            if (list != null) {
                final Iterator<AdUnit> iterator = list.iterator();
                while (iterator.hasNext()) {
                    final AdUnit adUnit = iterator.next();
                    if (bd.b(adUnit.getExpiration()) && adUnit.getAdFrames().size() > 0) {
                        iterator.remove();
                        this.c(s, 0);
                        return adUnit;
                    }
                }
            }
            Label_0095: {
                break Label_0095;
            }
            this.c(s, 0);
            return null;
        }
    }
    
    final boolean i(final String s) {
        synchronized (this) {
            final List<AdUnit> list = this.bF.get(s);
            if (list != null && !list.isEmpty()) {
                final Iterator<AdUnit> iterator = list.iterator();
                while (iterator.hasNext()) {
                    if (bd.b(iterator.next().getExpiration())) {
                        return true;
                    }
                }
                return false;
            }
            return false;
            return false;
        }
    }
}
