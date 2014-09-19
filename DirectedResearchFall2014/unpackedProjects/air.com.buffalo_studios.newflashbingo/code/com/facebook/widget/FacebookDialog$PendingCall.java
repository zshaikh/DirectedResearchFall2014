package com.facebook.widget;

import java.util.*;
import android.content.*;
import android.os.*;

public class FacebookDialog$PendingCall implements Parcelable
{
    public static final Parcelable$Creator<FacebookDialog$PendingCall> CREATOR;
    private UUID callId;
    private int requestCode;
    private Intent requestIntent;
    
    static {
        CREATOR = (Parcelable$Creator)new FacebookDialog$PendingCall$1();
    }
    
    public FacebookDialog$PendingCall(final int requestCode) {
        super();
        this.callId = UUID.randomUUID();
        this.requestCode = requestCode;
    }
    
    private FacebookDialog$PendingCall(final Parcel parcel) {
        super();
        this.callId = UUID.fromString(parcel.readString());
        this.requestIntent = (Intent)parcel.readParcelable((ClassLoader)null);
        this.requestCode = parcel.readInt();
    }
    
    private void setRequestCode(final int requestCode) {
        this.requestCode = requestCode;
    }
    
    private void setRequestIntent(final Intent requestIntent) {
        (this.requestIntent = requestIntent).putExtra("com.facebook.platform.protocol.CALL_ID", this.callId.toString());
    }
    
    public int describeContents() {
        return 0;
    }
    
    public UUID getCallId() {
        return this.callId;
    }
    
    public int getRequestCode() {
        return this.requestCode;
    }
    
    public Intent getRequestIntent() {
        return this.requestIntent;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.callId.toString());
        parcel.writeParcelable((Parcelable)this.requestIntent, 0);
        parcel.writeInt(this.requestCode);
    }
}
