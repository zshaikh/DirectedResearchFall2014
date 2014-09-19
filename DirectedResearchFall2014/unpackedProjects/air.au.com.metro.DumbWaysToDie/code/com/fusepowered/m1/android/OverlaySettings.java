package com.fusepowered.m1.android;

import com.fusepowered.m1.google.gson.annotations.*;
import android.os.*;
import com.fusepowered.m1.google.gson.*;
import android.text.*;

class OverlaySettings implements Parcelable
{
    public static final Parcelable$Creator<OverlaySettings> CREATOR;
    static final String PROPERTIES_ACID = "acid";
    static final String PROPERTIES_ALLOW_ORIENTATION_CHANGE = "allowOrientationChange";
    static final String PROPERTIES_CUSTOM_CLOSE = "useCustomClose";
    static final String PROPERTIES_ENABLE_HARDWARE_ACCEL = "enableHardwareAccel";
    static final String PROPERTIES_FORCE_ORIENTATION = "forceOrientation";
    static final String PROPERTIES_HEIGHT = "height";
    static final String PROPERTIES_MODAL = "modal";
    static final String PROPERTIES_ORIENTATION = "orientation";
    static final String PROPERTIES_TRANSITION = "transition";
    static final String PROPERTIES_TRANSITION_DURATION = "transitionDuration";
    static final String PROPERTIES_TRANSPARENT = "transparent";
    static final String PROPERTIES_WIDTH = "width";
    String adUrl;
    boolean allowOrientationChange;
    String content;
    long creatorAdImplId;
    boolean hasLoadedExpandUrl;
    int height;
    boolean isFromInterstitial;
    @SerializedName("transparent")
    private boolean isTransparent;
    HttpMMHeaders mmHeaders;
    boolean modal;
    String orientation;
    boolean shouldLaunchToOverlay;
    int shouldResizeOverlay;
    private String transition;
    @SerializedName("transitionDuration")
    private long transitionTimeInMillis;
    String urlToLoad;
    private boolean useCustomClose;
    int width;
    
    static {
        CREATOR = (Parcelable$Creator)new Parcelable$Creator<OverlaySettings>() {
            public OverlaySettings createFromParcel(final Parcel parcel) {
                return new OverlaySettings(parcel);
            }
            
            public OverlaySettings[] newArray(final int n) {
                return new OverlaySettings[n];
            }
        };
    }
    
    OverlaySettings() {
        super();
        this.transition = "";
        this.orientation = "";
        this.urlToLoad = "";
        this.allowOrientationChange = true;
        this.content = "";
        this.adUrl = "";
        this.hasLoadedExpandUrl = false;
    }
    
    OverlaySettings(final Parcel parcel) {
        super();
        this.transition = "";
        this.orientation = "";
        this.urlToLoad = "";
        this.allowOrientationChange = true;
        this.content = "";
        this.adUrl = "";
        this.hasLoadedExpandUrl = false;
        try {
            final boolean[] array = new boolean[6];
            parcel.readBooleanArray(array);
            this.shouldLaunchToOverlay = array[0];
            this.isTransparent = array[1];
            this.useCustomClose = array[2];
            this.modal = array[3];
            this.isFromInterstitial = array[4];
            this.allowOrientationChange = array[5];
            this.shouldResizeOverlay = parcel.readInt();
            this.transition = parcel.readString();
            this.transitionTimeInMillis = parcel.readLong();
            long transitionTimeInMillis;
            if (this.transitionTimeInMillis < 0L) {
                transitionTimeInMillis = 0L;
            }
            else {
                transitionTimeInMillis = this.transitionTimeInMillis;
            }
            this.transitionTimeInMillis = transitionTimeInMillis;
            this.orientation = parcel.readString();
            this.creatorAdImplId = parcel.readLong();
            this.urlToLoad = parcel.readString();
            this.height = parcel.readInt();
            this.width = parcel.readInt();
            this.content = parcel.readString();
            this.adUrl = parcel.readString();
            this.mmHeaders = (HttpMMHeaders)parcel.readParcelable(HttpMMHeaders.class.getClassLoader());
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    static final OverlaySettings createFromJson(final String s) {
        return new Gson().fromJson(s, OverlaySettings.class);
    }
    
    public int describeContents() {
        return 0;
    }
    
    boolean enableHardwareAccel() {
        return this.mmHeaders != null && this.mmHeaders.enableHardwareAccel;
    }
    
    String getAcid() {
        if (this.mmHeaders != null && !TextUtils.isEmpty((CharSequence)this.mmHeaders.acid)) {
            return this.mmHeaders.acid;
        }
        return "";
    }
    
    boolean getIsTransparent() {
        return this.isTransparent || (this.mmHeaders != null && this.mmHeaders.isTransparent);
    }
    
    String getTransition() {
        if (!TextUtils.isEmpty((CharSequence)this.transition)) {
            return this.transition;
        }
        if (this.mmHeaders != null && !TextUtils.isEmpty((CharSequence)this.mmHeaders.transition)) {
            return this.mmHeaders.transition;
        }
        return "none";
    }
    
    long getTransitionDurationInMillis() {
        if (this.transitionTimeInMillis > 0L) {
            return this.transitionTimeInMillis;
        }
        if (this.mmHeaders != null) {
            return this.mmHeaders.transitionTimeInMillis;
        }
        return 0L;
    }
    
    boolean getUseCustomClose() {
        return this.useCustomClose || (this.mmHeaders != null && this.mmHeaders.useCustomClose);
    }
    
    boolean hasExpandUrl() {
        return this.urlToLoad != null && !this.urlToLoad.equals("");
    }
    
    boolean hasLoadedExpandUrl() {
        if (!this.hasLoadedExpandUrl) {
            this.hasLoadedExpandUrl = true;
            return false;
        }
        return true;
    }
    
    boolean isExpanded() {
        return !this.isFromInterstitial && this.creatorAdImplId != 0L;
    }
    
    boolean isFromInterstitial() {
        return this.isFromInterstitial && this.creatorAdImplId != 0L;
    }
    
    void log() {
        MMSDK.Log.v(this.toString());
    }
    
    void setIsTransparent(final boolean isTransparent) {
        this.isTransparent = isTransparent;
    }
    
    void setTransition(final String transition) {
        this.transition = transition;
    }
    
    void setTransitionDurationInMillis(final long transitionTimeInMillis) {
        this.transitionTimeInMillis = transitionTimeInMillis;
    }
    
    void setUseCustomClose(final boolean useCustomClose) {
        this.useCustomClose = useCustomClose;
    }
    
    void setWebMMHeaders(final HttpMMHeaders mmHeaders) {
        this.mmHeaders = mmHeaders;
    }
    
    @Override
    public String toString() {
        return String.format("height %d width %d modal %b urlToLoad %s creatorAdImplId %s shouldResizeOverlay: %d transitionTime: %d overlayTransition: %s shouldMakeOverlayTransparent: %b shouldShowCustomClose: %b Orientation: %s", this.height, this.width, this.modal, this.urlToLoad, this.creatorAdImplId, this.shouldResizeOverlay, this.transitionTimeInMillis, this.transition, this.isTransparent, this.useCustomClose, this.orientation);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeBooleanArray(new boolean[] { this.shouldLaunchToOverlay, this.isTransparent, this.useCustomClose, this.modal, this.isFromInterstitial, this.allowOrientationChange });
        parcel.writeInt(this.shouldResizeOverlay);
        parcel.writeString(this.transition);
        parcel.writeLong(this.transitionTimeInMillis);
        parcel.writeString(this.orientation);
        parcel.writeLong(this.creatorAdImplId);
        parcel.writeString(this.urlToLoad);
        parcel.writeInt(this.height);
        parcel.writeInt(this.width);
        parcel.writeString(this.content);
        parcel.writeString(this.adUrl);
        parcel.writeParcelable((Parcelable)this.mmHeaders, n);
    }
}
