package com.facebook;

import android.content.*;
import java.util.concurrent.*;
import com.facebook.model.*;
import android.os.*;
import com.facebook.internal.*;
import org.json.*;
import java.math.*;
import java.util.*;

final class AppEventsLogger$3 extends TimerTask
{
    @Override
    public final void run() {
        final HashSet<String> set = new HashSet<String>();
        synchronized (AppEventsLogger.staticLock) {
            final Iterator<AppEventsLogger$AccessTokenAppIdPair> iterator = AppEventsLogger.stateMap.keySet().iterator();
            while (iterator.hasNext()) {
                set.add(iterator.next().getApplicationId());
            }
        }
        // monitorexit(o)
        final Iterator<Object> iterator2 = set.iterator();
        while (iterator2.hasNext()) {
            Utility.queryAppSettings(iterator2.next(), true);
        }
    }
}
