package com.facebook;

import android.content.*;
import java.util.concurrent.*;
import com.facebook.model.*;
import android.os.*;
import com.facebook.internal.*;
import org.json.*;
import java.math.*;
import java.util.*;

final class AppEventsLogger$2 extends TimerTask
{
    @Override
    public final void run() {
        if (AppEventsLogger.getFlushBehavior() != AppEventsLogger$FlushBehavior.EXPLICIT_ONLY) {
            flushAndWait(AppEventsLogger$FlushReason.TIMER);
        }
    }
}
