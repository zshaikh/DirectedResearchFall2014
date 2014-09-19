package com.facebook;

import android.os.*;

class Request$ParcelFileDescriptorWithMimeType implements Parcelable
{
    public static final Parcelable$Creator<Request$ParcelFileDescriptorWithMimeType> CREATOR;
    private final ParcelFileDescriptor fileDescriptor;
    private final String mimeType;
    
    static {
        CREATOR = (Parcelable$Creator)new Request$ParcelFileDescriptorWithMimeType$1();
    }
    
    private Request$ParcelFileDescriptorWithMimeType(final Parcel parcel) {
        super();
        this.mimeType = parcel.readString();
        this.fileDescriptor = parcel.readFileDescriptor();
    }
    
    public Request$ParcelFileDescriptorWithMimeType(final ParcelFileDescriptor fileDescriptor, final String mimeType) {
        super();
        this.mimeType = mimeType;
        this.fileDescriptor = fileDescriptor;
    }
    
    public int describeContents() {
        return 1;
    }
    
    public ParcelFileDescriptor getFileDescriptor() {
        return this.fileDescriptor;
    }
    
    public String getMimeType() {
        return this.mimeType;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.mimeType);
        parcel.writeFileDescriptor(this.fileDescriptor.getFileDescriptor());
    }
}
