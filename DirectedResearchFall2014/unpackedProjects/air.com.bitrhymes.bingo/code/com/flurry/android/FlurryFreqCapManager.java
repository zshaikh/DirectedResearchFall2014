package com.flurry.android;

import java.util.*;

public class FlurryFreqCapManager
{
    private static FlurryFreqCapManager eC;
    private HashMap<String, FlurryFreqCapInfo> eD;
    
    FlurryFreqCapManager() {
        super();
        this.eD = new HashMap<String, FlurryFreqCapInfo>();
    }
    
    static FlurryFreqCapManager an() {
        if (FlurryFreqCapManager.eC == null) {
            FlurryFreqCapManager.eC = new FlurryFreqCapManager();
        }
        return FlurryFreqCapManager.eC;
    }
    
    static boolean d(final long n) {
        return n <= System.currentTimeMillis();
    }
    
    final void a(final FlurryFreqCapInfo flurryFreqCapInfo) {
        while (true) {
            try {
                if (flurryFreqCapInfo.getIdHash().length() == 0) {
                    return;
                }
                synchronized (this) {
                    if (this.eD.containsKey(flurryFreqCapInfo.getIdHash())) {
                        this.eD.remove(flurryFreqCapInfo.getIdHash());
                        if (flurryFreqCapInfo.getNewCap() != -1) {
                            this.eD.put(flurryFreqCapInfo.getIdHash(), flurryFreqCapInfo);
                        }
                        return;
                    }
                }
            }
            catch (Exception ex) {
                ex.printStackTrace();
                return;
            }
            this.eD.put(flurryFreqCapInfo.getIdHash(), flurryFreqCapInfo);
        }
    }
    
    final List<FlurryFreqCapInfo> ao() {
        ArrayList<FlurryFreqCapInfo> list;
        try {
            synchronized (this) {
                list = new ArrayList<FlurryFreqCapInfo>();
                final Iterator<FlurryFreqCapInfo> iterator = this.getFreqCapInfoMap().values().iterator();
                while (iterator.hasNext()) {
                    list.add(iterator.next().getCopy());
                }
            }
        }
        catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
        // monitorexit(this)
        return list;
    }
    
    final void ap() {
        try {
            synchronized (this) {
                for (final FlurryFreqCapInfo flurryFreqCapInfo : this.ao()) {
                    if (d(flurryFreqCapInfo.getExpirationTime())) {
                        new StringBuilder().append("expiring adunit freq cap for idHash: ").append(flurryFreqCapInfo.getIdHash()).append(" adunit exp: ").append(flurryFreqCapInfo.getExpirationTime()).append(" device epoch").append(System.currentTimeMillis()).toString();
                        this.z(flurryFreqCapInfo.getIdHash());
                    }
                }
            }
        }
        catch (Exception ex) {
            ex.printStackTrace();
            return;
        }
    }
    // monitorexit(this)
    
    public HashMap<String, FlurryFreqCapInfo> getFreqCapInfoMap() {
        return this.eD;
    }
    
    final FlurryFreqCapInfo y(final String s) {
        try {
            synchronized (this) {
                if (this.eD.containsKey(s)) {
                    return this.eD.get(s);
                }
                return null;
            }
        }
        catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }
    
    final void z(final String s) {
        try {
            synchronized (this) {
                if (this.eD.containsKey(s)) {
                    this.eD.remove(s);
                }
            }
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
