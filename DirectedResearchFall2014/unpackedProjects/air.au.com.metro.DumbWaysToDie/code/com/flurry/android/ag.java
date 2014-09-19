package com.flurry.android;

import java.util.concurrent.*;
import java.util.*;

final class ag
{
    private FlurryAds by;
    
    ag(final FlurryAds by) {
        super();
        this.by = by;
    }
    
    final List<SdkAdLog> a(final List<cz> list) {
        final CopyOnWriteArrayList<SdkAdLog> list2 = new CopyOnWriteArrayList<SdkAdLog>();
        final Iterator<cz> iterator = list.iterator();
        while (iterator.hasNext()) {
            SdkAdLog sdkAdLog;
            CopyOnWriteArrayList<SdkAdEvent> list3;
            while (true) {
                final cz cz = iterator.next();
                sdkAdLog = new SdkAdLog();
                sdkAdLog.b(cz.au());
                sdkAdLog.c(cz.at());
                list3 = new CopyOnWriteArrayList<SdkAdEvent>();
                while (true) {
                    final SdkAdEvent sdkAdEvent;
                    final HashMap<String, String> hashMap;
                    synchronized (cz) {
                        Block_5: {
                            for (final bu bu : cz.av()) {
                                if (bu.ai()) {
                                    break Block_5;
                                }
                            }
                            break;
                        }
                        sdkAdEvent = new SdkAdEvent();
                        final bu bu;
                        sdkAdEvent.a(bu.getType());
                        sdkAdEvent.a(Long.valueOf(bu.M()));
                        final Map<String, String> params = bu.getParams();
                        hashMap = new HashMap<String, String>();
                        for (final Map.Entry<String, String> entry : params.entrySet()) {
                            hashMap.put(entry.getKey(), entry.getValue());
                        }
                    }
                    sdkAdEvent.a((Map<CharSequence, CharSequence>)hashMap);
                    list3.add(sdkAdEvent);
                    continue;
                }
            }
            // monitorexit(cz)
            sdkAdLog.g(list3);
            list2.add(sdkAdLog);
        }
        this.by.d(list);
        return list2;
    }
}
