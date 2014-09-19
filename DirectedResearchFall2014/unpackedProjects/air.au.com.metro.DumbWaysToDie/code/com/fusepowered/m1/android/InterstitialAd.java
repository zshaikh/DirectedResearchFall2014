package com.fusepowered.m1.android;

import android.os.*;
import android.content.*;
import java.io.*;

class InterstitialAd extends CachedAd implements Parcelable, Externalizable
{
    public static final Parcelable$Creator<InterstitialAd> CREATOR;
    static final String EXTRA_AD_URL = "EXTRA_AD_URL";
    static final String EXTRA_CONTENT = "EXTRA_CONTENT";
    static final long serialVersionUID = 5158660334173309853L;
    String adUrl;
    String content;
    HttpMMHeaders mmHeaders;
    
    static {
        CREATOR = (Parcelable$Creator)new Parcelable$Creator<InterstitialAd>() {
            public InterstitialAd createFromParcel(final Parcel parcel) {
                return new InterstitialAd(parcel);
            }
            
            public InterstitialAd[] newArray(final int n) {
                return new InterstitialAd[n];
            }
        };
    }
    
    public InterstitialAd() {
        super();
    }
    
    InterstitialAd(final Parcel parcel) {
        super(parcel);
        try {
            this.content = parcel.readString();
            this.adUrl = parcel.readString();
            this.mmHeaders = (HttpMMHeaders)parcel.readParcelable(HttpMMHeaders.class.getClassLoader());
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    private Intent getExpandExtrasIntent(final Context context, final long creatorAdImplId) {
        final Intent intent = new Intent();
        final OverlaySettings overlaySettings = new OverlaySettings();
        overlaySettings.creatorAdImplId = creatorAdImplId;
        overlaySettings.content = this.content;
        overlaySettings.adUrl = this.adUrl;
        overlaySettings.setWebMMHeaders(this.mmHeaders);
        overlaySettings.isFromInterstitial = true;
        intent.putExtra("settings", (Parcelable)overlaySettings);
        intent.putExtra("internalId", creatorAdImplId);
        return intent;
    }
    
    @Override
    boolean canShow(final Context context, final MMAdImpl mmAdImpl, final boolean b) {
        if (b) {
            return this.content != null && this.content.length() > 0 && this.adUrl != null && this.adUrl.length() > 0 && HandShake.sharedHandShake(context).canDisplayCachedAd(mmAdImpl.adType, this.deferredViewStart);
        }
        return this.content != null && this.content.length() > 0 && this.adUrl != null && this.adUrl.length() > 0;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    boolean download(final Context context) {
        return true;
    }
    
    @Override
    int getType() {
        return 2;
    }
    
    @Override
    String getTypeString() {
        return "Interstitial";
    }
    
    @Override
    boolean isOnDisk(final Context context) {
        return true;
    }
    
    @Override
    public void readExternal(final ObjectInput objectInput) throws IOException, ClassNotFoundException {
        super.readExternal(objectInput);
        this.content = (String)objectInput.readObject();
        this.adUrl = (String)objectInput.readObject();
        this.mmHeaders = (HttpMMHeaders)objectInput.readObject();
    }
    
    @Override
    boolean saveAssets(final Context context) {
        return true;
    }
    
    @Override
    void show(final Context context, final long n) {
        Utils.IntentUtils.startAdViewOverlayActivity(context, this.getExpandExtrasIntent(context, n));
    }
    
    @Override
    public void writeExternal(final ObjectOutput objectOutput) throws IOException {
        super.writeExternal(objectOutput);
        objectOutput.writeObject(this.content);
        objectOutput.writeObject(this.adUrl);
        objectOutput.writeObject(this.mmHeaders);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        parcel.writeString(this.content);
        parcel.writeString(this.adUrl);
        parcel.writeParcelable((Parcelable)this.mmHeaders, n);
    }
}
