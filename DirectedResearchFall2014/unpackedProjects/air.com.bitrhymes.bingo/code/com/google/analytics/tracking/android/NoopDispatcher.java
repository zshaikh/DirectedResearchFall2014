package com.google.analytics.tracking.android;

import java.util.*;
import android.text.*;

class NoopDispatcher implements Dispatcher
{
    @Override
    public int dispatchHits(final List<Hit> list) {
        if (list == null) {
            return 0;
        }
        Log.iDebug("Hits not actually being sent as dispatch is false...");
        final int min = Math.min(list.size(), 40);
        for (int i = 0; i < min; ++i) {
            if (Log.isDebugEnabled()) {
                String postProcessHit;
                if (TextUtils.isEmpty((CharSequence)list.get(i).getHitParams())) {
                    postProcessHit = "";
                }
                else {
                    postProcessHit = HitBuilder.postProcessHit(list.get(i), System.currentTimeMillis());
                }
                String str;
                if (TextUtils.isEmpty((CharSequence)postProcessHit)) {
                    str = "Hit couldn't be read, wouldn't be sent:";
                }
                else if (postProcessHit.length() <= 2036) {
                    str = "GET would be sent:";
                }
                else if (postProcessHit.length() > 8192) {
                    str = "Would be too big:";
                }
                else {
                    str = "POST would be sent:";
                }
                Log.iDebug(str + postProcessHit);
            }
        }
        return min;
    }
    
    @Override
    public boolean okToDispatch() {
        return true;
    }
}
