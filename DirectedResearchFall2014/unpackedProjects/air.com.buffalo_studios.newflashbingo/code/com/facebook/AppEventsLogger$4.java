package com.facebook;

import android.content.*;
import java.util.concurrent.*;
import com.facebook.model.*;
import android.os.*;
import com.facebook.internal.*;
import org.json.*;
import java.math.*;
import java.util.*;

final class AppEventsLogger$4 implements Runnable
{
    final /* synthetic */ AppEventsLogger$FlushReason val$reason;
    
    AppEventsLogger$4(final AppEventsLogger$FlushReason val$reason) {
        this.val$reason = val$reason;
        super();
    }
    
    @Override
    public final void run() {
        flushAndWait(this.val$reason);
    }
}
