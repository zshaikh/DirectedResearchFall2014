package com.playhaven.src.common;

import v2.com.playhaven.requests.crashreport.*;
import java.lang.ref.*;
import android.content.*;

public class PHCrashReport extends v2.com.playhaven.requests.crashreport.PHCrashReport implements PHAPIRequest
{
    private WeakReference<Context> context;
    
    public PHCrashReport() {
        super();
    }
    
    public PHCrashReport(final Exception ex, final String s, final Urgency urgency) {
        super(ex, s, urgency);
    }
    
    public PHCrashReport(final Exception ex, final Urgency urgency) {
        super(ex, urgency);
    }
    
    public static PHCrashReport reportCrash(final Exception ex, final String s, final Urgency urgency) {
        return null;
    }
    
    public static PHCrashReport reportCrash(final Exception ex, final Urgency urgency) {
        return null;
    }
    
    @Override
    public void send() {
    }
    
    @Override
    public void setDelegate(final Delegate delegate) {
    }
}
