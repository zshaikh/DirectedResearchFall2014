package com.fusepowered.m1.android;

import android.os.*;
import org.json.*;
import java.io.*;

class VideoLogEvent implements Parcelable, Externalizable
{
    public static final Parcelable$Creator<VideoLogEvent> CREATOR;
    static final long serialVersionUID = 795553873017368584L;
    String[] activities;
    long position;
    
    static {
        CREATOR = (Parcelable$Creator)new Parcelable$Creator<VideoLogEvent>() {
            public VideoLogEvent createFromParcel(final Parcel parcel) {
                return new VideoLogEvent(parcel);
            }
            
            public VideoLogEvent[] newArray(final int n) {
                return new VideoLogEvent[n];
            }
        };
    }
    
    public VideoLogEvent() {
        super();
    }
    
    VideoLogEvent(final Parcel parcel) {
        super();
        try {
            this.position = parcel.readLong();
            parcel.readStringArray(this.activities = new String[parcel.readInt()]);
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    VideoLogEvent(final JSONObject jsonObject) {
        super();
        this.deserializeFromObj(jsonObject);
    }
    
    private void deserializeFromObj(final JSONObject jsonObject) {
        if (jsonObject != null) {
            this.position = 1000 * jsonObject.optInt("time");
            final JSONArray optJSONArray = jsonObject.optJSONArray("urls");
            if (optJSONArray == null) {
                this.activities = new String[0];
                return;
            }
            this.activities = new String[optJSONArray.length()];
            for (int i = 0; i < optJSONArray.length(); ++i) {
                this.activities[i] = optJSONArray.optString(i);
            }
        }
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void readExternal(final ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.position = objectInput.readLong();
        final int int1 = objectInput.readInt();
        this.activities = new String[int1];
        for (int i = 0; i < int1; ++i) {
            this.activities[i] = (String)objectInput.readObject();
        }
    }
    
    public void writeExternal(final ObjectOutput objectOutput) throws IOException {
        objectOutput.writeLong(this.position);
        objectOutput.writeInt(this.activities.length);
        final String[] activities = this.activities;
        for (int length = activities.length, i = 0; i < length; ++i) {
            objectOutput.writeObject(activities[i]);
        }
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeLong(this.position);
        parcel.writeInt(this.activities.length);
        parcel.writeStringArray(this.activities);
    }
}
