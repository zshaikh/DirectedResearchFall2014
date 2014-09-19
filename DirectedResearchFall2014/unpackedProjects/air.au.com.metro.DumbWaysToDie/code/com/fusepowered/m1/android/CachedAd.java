package com.fusepowered.m1.android;

import java.util.*;
import android.os.*;
import android.content.*;
import org.json.*;
import java.text.*;
import java.io.*;

abstract class CachedAd implements Externalizable
{
    static final int INTERSTITIAL = 2;
    static final int NATIVE = 3;
    static final int VIDEO = 1;
    static final long serialVersionUID = 316862728709355974L;
    String acid;
    String contentUrl;
    long deferredViewStart;
    boolean downloadAllOrNothing;
    int downloadPriority;
    Date expiration;
    private String id;
    
    CachedAd() {
        super();
        this.downloadAllOrNothing = false;
        this.deferredViewStart = System.currentTimeMillis();
    }
    
    protected CachedAd(final Parcel parcel) {
        super();
        this.downloadAllOrNothing = false;
        try {
            this.id = parcel.readString();
            this.acid = parcel.readString();
            this.expiration = (Date)parcel.readSerializable();
            this.deferredViewStart = parcel.readLong();
            final boolean[] array = { false };
            parcel.readBooleanArray(array);
            this.downloadAllOrNothing = array[0];
            this.contentUrl = parcel.readString();
            this.downloadPriority = parcel.readInt();
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    static CachedAd parseJSON(final String s) {
        if (MMSDK.logLevel >= 5) {
            MMSDK.Log.v("Received cached ad.");
            final int length = s.length();
            if (length > 1000) {
                int i = 999;
                int n = 0;
                while (i < length) {
                    MMSDK.Log.v(s.substring(n, i));
                    n = i;
                    i += 1000;
                    if (i > length) {
                        i = length - 1;
                        break;
                    }
                }
                MMSDK.Log.v(s.substring(n, i));
            }
            else {
                MMSDK.Log.v(s);
            }
        }
        final int length2 = s.length();
        CachedAd cachedAd = null;
        if (length2 > 0) {
            cachedAd = new VideoAd(s);
        }
        return cachedAd;
    }
    
    abstract boolean canShow(final Context p0, final MMAdImpl p1, final boolean p2);
    
    void delete(final Context context) {
        final File cacheDirectory = AdCache.getCacheDirectory(context);
        if (cacheDirectory != null && cacheDirectory.isDirectory()) {
            try {
                final File[] listFiles = cacheDirectory.listFiles(new FileFilter() {
                    @Override
                    public boolean accept(final File file) {
                        return file.isFile() && file.getName().startsWith(CachedAd.this.id);
                    }
                });
                MMSDK.Log.v("Deleting %d files for %s.", listFiles.length, this.id);
                for (int i = 0; i < listFiles.length; ++i) {
                    listFiles[i].delete();
                }
            }
            catch (Exception ex) {
                MMSDK.Log.v(ex);
            }
        }
    }
    
    protected void deserializeFromObj(final JSONObject jsonObject) {
        this.id = jsonObject.optString("id", (String)null);
        this.acid = jsonObject.optString("vid", (String)null);
        this.contentUrl = jsonObject.optString("content-url", (String)null);
        final String optString = jsonObject.optString("expiration", (String)null);
        if (optString == null) {
            return;
        }
        final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss ZZZZ");
        try {
            this.expiration = simpleDateFormat.parse(optString);
        }
        catch (ParseException ex) {
            MMSDK.Log.e(ex);
        }
    }
    
    abstract boolean download(final Context p0);
    
    @Override
    public boolean equals(final Object o) {
        return this == o || (o instanceof CachedAd && this.id.equals(((CachedAd)o).id));
    }
    
    String getId() {
        return this.id;
    }
    
    abstract int getType();
    
    abstract String getTypeString();
    
    boolean isExpired() {
        return this.expiration != null && this.expiration.getTime() <= System.currentTimeMillis();
    }
    
    abstract boolean isOnDisk(final Context p0);
    
    boolean isValid() {
        return this.id != null && this.id.length() > 0 && this.contentUrl != null && this.contentUrl.length() > 0;
    }
    
    @Override
    public void readExternal(final ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.id = (String)objectInput.readObject();
        this.acid = (String)objectInput.readObject();
        this.expiration = (Date)objectInput.readObject();
        this.deferredViewStart = objectInput.readLong();
        this.contentUrl = (String)objectInput.readObject();
    }
    
    abstract boolean saveAssets(final Context p0);
    
    void setId(final String id) {
        this.id = id;
    }
    
    abstract void show(final Context p0, final long p1);
    
    @Override
    public void writeExternal(final ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.id);
        objectOutput.writeObject(this.acid);
        objectOutput.writeObject(this.expiration);
        objectOutput.writeLong(this.deferredViewStart);
        objectOutput.writeObject(this.contentUrl);
    }
    
    protected void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.id);
        parcel.writeString(this.acid);
        parcel.writeSerializable((Serializable)this.expiration);
        parcel.writeLong(this.deferredViewStart);
        parcel.writeBooleanArray(new boolean[] { this.downloadAllOrNothing });
        parcel.writeString(this.contentUrl);
        parcel.writeInt(this.downloadPriority);
    }
}
