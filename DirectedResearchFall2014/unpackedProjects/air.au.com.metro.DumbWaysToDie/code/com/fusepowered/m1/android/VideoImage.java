package com.fusepowered.m1.android;

import android.widget.*;
import android.os.*;
import org.json.*;
import android.net.*;
import java.io.*;

class VideoImage implements Parcelable, Externalizable
{
    public static final Parcelable$Creator<VideoImage> CREATOR;
    static final long serialVersionUID = 808334584720834205L;
    int anchor;
    int anchor2;
    long appearanceDelay;
    ImageButton button;
    long contentLength;
    String[] eventLoggingUrls;
    long fadeDuration;
    float fromAlpha;
    String imageUrl;
    long inactivityTimeout;
    boolean isLeaveBehind;
    RelativeLayout$LayoutParams layoutParams;
    String linkUrl;
    String overlayOrientation;
    int paddingBottom;
    int paddingLeft;
    int paddingRight;
    int paddingTop;
    int position;
    int position2;
    float toAlpha;
    
    static {
        CREATOR = (Parcelable$Creator)new Parcelable$Creator<VideoImage>() {
            public VideoImage createFromParcel(final Parcel parcel) {
                return new VideoImage(parcel);
            }
            
            public VideoImage[] newArray(final int n) {
                return new VideoImage[n];
            }
        };
    }
    
    public VideoImage() {
        super();
        this.paddingTop = 0;
        this.paddingBottom = 0;
        this.paddingLeft = 0;
        this.paddingRight = 0;
        this.fromAlpha = 1.0f;
        this.toAlpha = 1.0f;
        this.fadeDuration = 1000L;
    }
    
    VideoImage(final Parcel parcel) {
        super();
        this.paddingTop = 0;
        this.paddingBottom = 0;
        this.paddingLeft = 0;
        this.paddingRight = 0;
        this.fromAlpha = 1.0f;
        this.toAlpha = 1.0f;
        this.fadeDuration = 1000L;
        try {
            this.imageUrl = parcel.readString();
            this.contentLength = parcel.readLong();
            parcel.readStringArray(this.eventLoggingUrls = new String[parcel.readInt()]);
            this.linkUrl = parcel.readString();
            this.overlayOrientation = parcel.readString();
            this.paddingTop = parcel.readInt();
            this.paddingBottom = parcel.readInt();
            this.paddingLeft = parcel.readInt();
            this.paddingRight = parcel.readInt();
            this.position = parcel.readInt();
            this.anchor = parcel.readInt();
            this.position2 = parcel.readInt();
            this.anchor2 = parcel.readInt();
            this.appearanceDelay = parcel.readLong();
            this.inactivityTimeout = parcel.readLong();
            this.fromAlpha = parcel.readFloat();
            this.toAlpha = parcel.readFloat();
            this.fadeDuration = parcel.readLong();
            this.isLeaveBehind = (parcel.readInt() == 1);
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    VideoImage(final JSONObject jsonObject) {
        super();
        this.paddingTop = 0;
        this.paddingBottom = 0;
        this.paddingLeft = 0;
        this.paddingRight = 0;
        this.fromAlpha = 1.0f;
        this.toAlpha = 1.0f;
        this.fadeDuration = 1000L;
        this.deserializeFromObj(jsonObject);
    }
    
    private void deserializeFromObj(final JSONObject jsonObject) {
        if (jsonObject == null) {
            return;
        }
        this.imageUrl = jsonObject.optString("image", (String)null);
        this.contentLength = jsonObject.optLong("contentLength");
        final JSONArray optJSONArray = jsonObject.optJSONArray("activity");
        if (optJSONArray != null) {
            this.eventLoggingUrls = new String[optJSONArray.length()];
            for (int i = 0; i < optJSONArray.length(); ++i) {
                this.eventLoggingUrls[i] = optJSONArray.optString(i);
            }
        }
        else {
            this.eventLoggingUrls = new String[0];
        }
        this.linkUrl = jsonObject.optString("url", (String)null);
        this.overlayOrientation = jsonObject.optString("overlayOrientation", (String)null);
        this.position = jsonObject.optInt("android-layout");
        this.anchor = jsonObject.optInt("android-layoutAnchor");
        this.position2 = jsonObject.optInt("android-layout2");
        this.anchor2 = jsonObject.optInt("android-layoutAnchor2");
        this.paddingTop = jsonObject.optInt("android-paddingTop");
        this.paddingLeft = jsonObject.optInt("android-paddingLeft");
        this.paddingRight = jsonObject.optInt("android-paddingRight");
        this.paddingBottom = jsonObject.optInt("android-paddingBottom");
        this.appearanceDelay = (long)(1000.0 * jsonObject.optDouble("appearanceDelay", 0.0));
        this.inactivityTimeout = (long)(1000.0 * jsonObject.optDouble("inactivityTimeout", 0.0));
        final JSONObject optJSONObject = jsonObject.optJSONObject("opacity");
        if (optJSONObject != null) {
            this.fromAlpha = (float)optJSONObject.optDouble("start", 1.0);
            this.toAlpha = (float)optJSONObject.optDouble("end", 1.0);
            this.fadeDuration = (long)(1000.0 * optJSONObject.optDouble("fadeDuration", 1.0));
        }
        this.isLeaveBehind = jsonObject.optBoolean("is_leavebehind");
    }
    
    public int describeContents() {
        return 0;
    }
    
    String getImageName() {
        if (this.imageUrl != null) {
            final Uri parse = Uri.parse(this.imageUrl);
            if (parse != null && parse.getLastPathSegment() != null) {
                return parse.getLastPathSegment().replaceFirst("\\.[^\\.]*$", ".dat");
            }
        }
        return null;
    }
    
    public void readExternal(final ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.imageUrl = (String)objectInput.readObject();
        this.contentLength = objectInput.readLong();
        final int int1 = objectInput.readInt();
        this.eventLoggingUrls = new String[int1];
        for (int i = 0; i < int1; ++i) {
            this.eventLoggingUrls[i] = (String)objectInput.readObject();
        }
        this.linkUrl = (String)objectInput.readObject();
        this.overlayOrientation = (String)objectInput.readObject();
        this.paddingTop = objectInput.readInt();
        this.paddingBottom = objectInput.readInt();
        this.paddingLeft = objectInput.readInt();
        this.paddingRight = objectInput.readInt();
        this.position = objectInput.readInt();
        this.anchor = objectInput.readInt();
        this.position2 = objectInput.readInt();
        this.anchor2 = objectInput.readInt();
        this.appearanceDelay = objectInput.readLong();
        this.inactivityTimeout = objectInput.readLong();
        this.fromAlpha = objectInput.readFloat();
        this.toAlpha = objectInput.readFloat();
        this.fadeDuration = objectInput.readLong();
        this.isLeaveBehind = objectInput.readBoolean();
    }
    
    public void writeExternal(final ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.imageUrl);
        objectOutput.writeLong(this.contentLength);
        objectOutput.writeInt(this.eventLoggingUrls.length);
        final String[] eventLoggingUrls = this.eventLoggingUrls;
        for (int length = eventLoggingUrls.length, i = 0; i < length; ++i) {
            objectOutput.writeObject(eventLoggingUrls[i]);
        }
        objectOutput.writeObject(this.linkUrl);
        objectOutput.writeObject(this.overlayOrientation);
        objectOutput.writeInt(this.paddingTop);
        objectOutput.writeInt(this.paddingBottom);
        objectOutput.writeInt(this.paddingLeft);
        objectOutput.writeInt(this.paddingRight);
        objectOutput.writeInt(this.position);
        objectOutput.writeInt(this.anchor);
        objectOutput.writeInt(this.position2);
        objectOutput.writeInt(this.anchor2);
        objectOutput.writeLong(this.appearanceDelay);
        objectOutput.writeLong(this.inactivityTimeout);
        objectOutput.writeFloat(this.fromAlpha);
        objectOutput.writeFloat(this.toAlpha);
        objectOutput.writeLong(this.fadeDuration);
        objectOutput.writeBoolean(this.isLeaveBehind);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.imageUrl);
        parcel.writeLong(this.contentLength);
        parcel.writeInt(this.eventLoggingUrls.length);
        parcel.writeStringArray(this.eventLoggingUrls);
        parcel.writeString(this.linkUrl);
        parcel.writeString(this.overlayOrientation);
        parcel.writeInt(this.paddingTop);
        parcel.writeInt(this.paddingBottom);
        parcel.writeInt(this.paddingLeft);
        parcel.writeInt(this.paddingRight);
        parcel.writeInt(this.position);
        parcel.writeInt(this.anchor);
        parcel.writeInt(this.position2);
        parcel.writeInt(this.anchor2);
        parcel.writeLong(this.appearanceDelay);
        parcel.writeLong(this.inactivityTimeout);
        parcel.writeFloat(this.fromAlpha);
        parcel.writeFloat(this.toAlpha);
        parcel.writeLong(this.fadeDuration);
        int n2;
        if (this.isLeaveBehind) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        parcel.writeInt(n2);
    }
}
