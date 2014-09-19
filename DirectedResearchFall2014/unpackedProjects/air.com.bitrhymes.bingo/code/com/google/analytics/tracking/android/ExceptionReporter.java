package com.google.analytics.tracking.android;

import android.content.*;
import java.util.*;

public class ExceptionReporter implements UncaughtExceptionHandler
{
    static final String DEFAULT_DESCRIPTION = "UncaughtException";
    private ExceptionParser mExceptionParser;
    private final UncaughtExceptionHandler mOriginalHandler;
    private final ServiceManager mServiceManager;
    private final Tracker mTracker;
    
    public ExceptionReporter(final Tracker mTracker, final ServiceManager mServiceManager, final UncaughtExceptionHandler mOriginalHandler, final Context context) {
        super();
        if (mTracker == null) {
            throw new NullPointerException("tracker cannot be null");
        }
        if (mServiceManager == null) {
            throw new NullPointerException("serviceManager cannot be null");
        }
        this.mOriginalHandler = mOriginalHandler;
        this.mTracker = mTracker;
        this.mServiceManager = mServiceManager;
        this.mExceptionParser = new StandardExceptionParser(context, new ArrayList<String>());
        final StringBuilder append = new StringBuilder().append("ExceptionReporter created, original handler is ");
        String name;
        if (mOriginalHandler == null) {
            name = "null";
        }
        else {
            name = mOriginalHandler.getClass().getName();
        }
        Log.iDebug(append.append(name).toString());
    }
    
    public ExceptionParser getExceptionParser() {
        return this.mExceptionParser;
    }
    
    public void setExceptionParser(final ExceptionParser mExceptionParser) {
        this.mExceptionParser = mExceptionParser;
    }
    
    @Override
    public void uncaughtException(final Thread thread, final Throwable t) {
        String description = "UncaughtException";
        if (this.mExceptionParser != null) {
            String name;
            if (thread != null) {
                name = thread.getName();
            }
            else {
                name = null;
            }
            description = this.mExceptionParser.getDescription(name, t);
        }
        Log.iDebug("Tracking Exception: " + description);
        this.mTracker.sendException(description, true);
        this.mServiceManager.dispatch();
        if (this.mOriginalHandler != null) {
            Log.iDebug("Passing exception to original handler.");
            this.mOriginalHandler.uncaughtException(thread, t);
        }
    }
}
