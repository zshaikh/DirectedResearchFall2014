package com.facebook.internal;

import com.facebook.*;
import android.util.*;
import java.util.*;

public class Logger
{
    public static final String LOG_TAG_BASE = "FacebookSDK.";
    private static final HashMap stringsToReplace;
    private final LoggingBehavior behavior;
    private StringBuilder contents;
    private int priority;
    private final String tag;
    
    static {
        stringsToReplace = new HashMap();
    }
    
    public Logger(final LoggingBehavior behavior, final String str) {
        super();
        this.priority = 3;
        Validate.notNullOrEmpty(str, "tag");
        this.behavior = behavior;
        this.tag = "FacebookSDK." + str;
        this.contents = new StringBuilder();
    }
    
    public static void log(final LoggingBehavior loggingBehavior, final int n, final String str, final String s) {
        if (Settings.isLoggingBehaviorEnabled(loggingBehavior)) {
            final String replaceStrings = replaceStrings(s);
            String string;
            if (!str.startsWith("FacebookSDK.")) {
                string = "FacebookSDK." + str;
            }
            else {
                string = str;
            }
            Log.println(n, string, replaceStrings);
            if (loggingBehavior == LoggingBehavior.DEVELOPER_ERRORS) {
                new Exception().printStackTrace();
            }
        }
    }
    
    public static void log(final LoggingBehavior loggingBehavior, final String s, final String s2) {
        log(loggingBehavior, 3, s, s2);
    }
    
    public static void log(final LoggingBehavior loggingBehavior, final String s, final String format, final Object... args) {
        if (Settings.isLoggingBehaviorEnabled(loggingBehavior)) {
            log(loggingBehavior, 3, s, String.format(format, args));
        }
    }
    
    public static void registerAccessToken(final String s) {
        synchronized (Logger.class) {
            if (!Settings.isLoggingBehaviorEnabled(LoggingBehavior.INCLUDE_ACCESS_TOKENS)) {
                registerStringToReplace(s, "ACCESS_TOKEN_REMOVED");
            }
        }
    }
    
    public static void registerStringToReplace(final String key, final String value) {
        synchronized (Logger.class) {
            Logger.stringsToReplace.put(key, value);
        }
    }
    
    private static String replaceStrings(final String s) {
        synchronized (Logger.class) {
            final Iterator<Map.Entry<CharSequence, V>> iterator = Logger.stringsToReplace.entrySet().iterator();
            String replace = s;
            while (iterator.hasNext()) {
                final Map.Entry<CharSequence, V> entry = iterator.next();
                replace = replace.replace(entry.getKey(), (CharSequence)entry.getValue());
            }
            return replace;
        }
    }
    
    private boolean shouldLog() {
        return Settings.isLoggingBehaviorEnabled(this.behavior);
    }
    
    public void append(final String str) {
        if (this.shouldLog()) {
            this.contents.append(str);
        }
    }
    
    public void append(final String format, final Object... args) {
        if (this.shouldLog()) {
            this.contents.append(String.format(format, args));
        }
    }
    
    public void append(final StringBuilder s) {
        if (this.shouldLog()) {
            this.contents.append((CharSequence)s);
        }
    }
    
    public void appendKeyValue(final String s, final Object o) {
        this.append("  %s:\t%s\n", s, o);
    }
    
    public String getContents() {
        return replaceStrings(this.contents.toString());
    }
    
    public int getPriority() {
        return this.priority;
    }
    
    public void log() {
        this.logString(this.contents.toString());
        this.contents = new StringBuilder();
    }
    
    public void logString(final String s) {
        log(this.behavior, this.priority, this.tag, s);
    }
    
    public void setPriority(final int n) {
        Validate.oneOf(n, "value", 7, 3, 6, 4, 2, 5);
        this.priority = n;
    }
}
