package com.fusepowered.m1.android;

import java.io.*;
import android.os.*;
import org.apache.http.*;
import java.util.*;

class HttpMMHeaders implements Parcelable, Serializable
{
    public static final Parcelable$Creator<HttpMMHeaders> CREATOR;
    private static final String HEADER_MM_ACID = "X-MM-ACID";
    private static final String HEADER_MM_CUSTOM_CLOSE = "X-MM-USE-CUSTOM-CLOSE";
    private static final String HEADER_MM_ENABLE_HARDWARE_ACCEL = "X-MM-ENABLE-HARDWARE-ACCELERATION";
    private static final String HEADER_MM_TRANSITION = "X-MM-TRANSITION";
    private static final String HEADER_MM_TRANSITION_DURATION = "X-MM-TRANSITION-DURATION";
    private static final String HEADER_MM_TRANSPARENT = "X-MM-TRANSPARENT";
    static final long serialVersionUID = 3168621112125974L;
    String acid;
    boolean enableHardwareAccel;
    boolean isTransparent;
    String transition;
    long transitionTimeInMillis;
    boolean useCustomClose;
    
    static {
        CREATOR = (Parcelable$Creator)new Parcelable$Creator<HttpMMHeaders>() {
            public HttpMMHeaders createFromParcel(final Parcel parcel) {
                return new HttpMMHeaders(parcel);
            }
            
            public HttpMMHeaders[] newArray(final int n) {
                return new HttpMMHeaders[n];
            }
        };
    }
    
    public HttpMMHeaders(final Parcel parcel) {
        super();
        try {
            final boolean[] array = new boolean[3];
            parcel.readBooleanArray(array);
            this.isTransparent = array[0];
            this.useCustomClose = array[1];
            this.enableHardwareAccel = array[2];
            this.transition = parcel.readString();
            this.acid = parcel.readString();
            this.transitionTimeInMillis = parcel.readLong();
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    public HttpMMHeaders(final Header[] array) {
        super();
        for (final Header header : array) {
            this.checkTransparent(header);
            this.checkTransition(header);
            this.checkTransitionDuration(header);
            this.checkUseCustomClose(header);
            this.checkEnableHardwareAccel(header);
            this.checkAcid(header);
        }
    }
    
    private void checkAcid(final Header header) {
        if ("X-MM-ACID".equalsIgnoreCase(header.getName())) {
            this.acid = header.getValue();
        }
    }
    
    private void checkEnableHardwareAccel(final Header header) {
        if ("X-MM-ENABLE-HARDWARE-ACCELERATION".equalsIgnoreCase(header.getName())) {
            this.enableHardwareAccel = Boolean.parseBoolean(header.getValue());
        }
    }
    
    private void checkTransition(final Header header) {
        if ("X-MM-TRANSITION".equalsIgnoreCase(header.getName())) {
            this.transition = header.getValue();
        }
    }
    
    private void checkTransitionDuration(final Header header) {
        if ("X-MM-TRANSITION-DURATION".equalsIgnoreCase(header.getName())) {
            final String value = header.getValue();
            if (value != null) {
                this.transitionTimeInMillis = (long)(1000.0f * Float.parseFloat(value));
            }
        }
    }
    
    private void checkTransparent(final Header header) {
        if ("X-MM-TRANSPARENT".equalsIgnoreCase(header.getName())) {
            final String value = header.getValue();
            if (value != null) {
                this.isTransparent = Boolean.parseBoolean(value);
            }
        }
    }
    
    private void checkUseCustomClose(final Header header) {
        if ("X-MM-USE-CUSTOM-CLOSE".equalsIgnoreCase(header.getName())) {
            this.useCustomClose = Boolean.parseBoolean(header.getValue());
        }
    }
    
    public int describeContents() {
        return 0;
    }
    
    void updateArgumentsWithSettings(final Map<String, String> map) {
        map.put("transparent", String.valueOf(this.isTransparent));
        map.put("transition", String.valueOf(this.transition));
        map.put("acid", String.valueOf(this.acid));
        map.put("transitionDuration", String.valueOf(this.transitionTimeInMillis));
        map.put("useCustomClose", String.valueOf(this.useCustomClose));
        map.put("enableHardwareAccel", String.valueOf(this.enableHardwareAccel));
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeBooleanArray(new boolean[] { this.isTransparent, this.useCustomClose, this.enableHardwareAccel });
        parcel.writeString(this.transition);
        parcel.writeString(this.acid);
        parcel.writeLong(this.transitionTimeInMillis);
    }
}
