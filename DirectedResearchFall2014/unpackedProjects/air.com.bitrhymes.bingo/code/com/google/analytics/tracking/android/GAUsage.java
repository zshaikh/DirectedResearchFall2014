package com.google.analytics.tracking.android;

import java.util.*;
import com.google.android.gms.common.util.*;
import java.io.*;

class GAUsage
{
    private static final String BASE_64_CHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";
    private static final GAUsage INSTANCE;
    private boolean mDisableUsage;
    private StringBuilder mSequence;
    private SortedSet<Field> mUsedFields;
    
    static {
        INSTANCE = new GAUsage();
    }
    
    private GAUsage() {
        super();
        this.mUsedFields = new TreeSet<Field>();
        this.mSequence = new StringBuilder();
        this.mDisableUsage = false;
    }
    
    public static GAUsage getInstance() {
        return GAUsage.INSTANCE;
    }
    
    @VisibleForTesting
    static GAUsage getPrivateInstance() {
        return new GAUsage();
    }
    
    public String getAndClearSequence() {
        synchronized (this) {
            if (this.mSequence.length() > 0) {
                this.mSequence.insert(0, ".");
            }
            final String string = this.mSequence.toString();
            this.mSequence = new StringBuilder();
            return string;
        }
    }
    
    public String getAndClearUsage() {
        synchronized (this) {
            final StringBuilder sb = new StringBuilder();
            int n = 0;
            int n2 = 6;
            while (this.mUsedFields.size() > 0) {
                final Field field = this.mUsedFields.first();
                this.mUsedFields.remove(field);
                while (field.ordinal() >= n2) {
                    sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(n));
                    n2 += 6;
                    n = 0;
                }
                n += 1 << field.ordinal() % 6;
            }
            if (n > 0 || sb.length() == 0) {
                sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(n));
            }
            this.mUsedFields.clear();
            return sb.toString();
        }
    }
    
    public void setDisableUsage(final boolean mDisableUsage) {
        synchronized (this) {
            this.mDisableUsage = mDisableUsage;
        }
    }
    
    public void setUsage(final Field field) {
        synchronized (this) {
            if (!this.mDisableUsage) {
                this.mUsedFields.add(field);
                this.mSequence.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(field.ordinal()));
            }
        }
    }
    
    public enum Field
    {
        BLANK_06, 
        BLANK_13, 
        BLANK_15, 
        BLANK_17, 
        BLANK_48, 
        CONSTRUCT_EVENT, 
        CONSTRUCT_EXCEPTION, 
        CONSTRUCT_ITEM, 
        CONSTRUCT_RAW_EXCEPTION, 
        CONSTRUCT_SOCIAL, 
        CONSTRUCT_TIMING, 
        CONSTRUCT_TRANSACTION, 
        DISPATCH, 
        GET, 
        GET_ANONYMIZE_IP, 
        GET_APP_ID, 
        GET_APP_INSTALLER_ID, 
        GET_DEBUG, 
        GET_DEFAULT_TRACKER, 
        GET_EXCEPTION_PARSER, 
        GET_SAMPLE_RATE, 
        GET_TRACKER, 
        GET_TRACKING_ID, 
        GET_USE_SECURE, 
        REPORT_UNCAUGHT_EXCEPTIONS, 
        REQUEST_APP_OPT_OUT, 
        SEND, 
        SET, 
        SET_ANONYMIZE_IP, 
        SET_APP_ID, 
        SET_APP_INSTALLER_ID, 
        SET_APP_NAME, 
        SET_APP_OPT_OUT, 
        SET_APP_SCREEN, 
        SET_APP_VERSION, 
        SET_AUTO_ACTIVITY_TRACKING, 
        SET_CAMPAIGN, 
        SET_DEBUG, 
        SET_DEFAULT_TRACKER, 
        SET_DISPATCH_PERIOD, 
        SET_EXCEPTION_PARSER, 
        SET_REFERRER, 
        SET_SAMPLE_RATE, 
        SET_SESSION_TIMEOUT, 
        SET_START_SESSION, 
        SET_USE_SECURE, 
        TRACK_EVENT, 
        TRACK_EXCEPTION_WITH_DESCRIPTION, 
        TRACK_EXCEPTION_WITH_THROWABLE, 
        TRACK_SOCIAL, 
        TRACK_TIMING, 
        TRACK_TRANSACTION, 
        TRACK_VIEW, 
        TRACK_VIEW_WITH_APPSCREEN;
    }
}
