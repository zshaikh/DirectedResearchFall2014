package com.fusepowered.m2.m2l;

import android.content.*;
import android.util.*;
import com.fusepowered.m2.m2l.factories.*;
import org.apache.http.client.methods.*;
import org.apache.http.impl.client.*;
import org.apache.http.*;

public class MoPubConversionTracker
{
    private static final String PREFERENCE_NAME = "mopubSettings";
    private static final String TRACK_HANDLER = "/m/open";
    private static final String TRACK_HOST = "ads.mopub.com";
    private Context mContext;
    private String mIsTrackedKey;
    private String mPackageName;
    private SharedPreferences mSharedPreferences;
    
    private boolean isAlreadyTracked() {
        return this.mSharedPreferences.getBoolean(this.mIsTrackedKey, false);
    }
    
    public void reportAppOpen(final Context mContext) {
        if (mContext == null) {
            return;
        }
        this.mContext = mContext;
        this.mPackageName = this.mContext.getPackageName();
        this.mIsTrackedKey = String.valueOf(this.mPackageName) + " tracked";
        this.mSharedPreferences = this.mContext.getSharedPreferences("mopubSettings", 0);
        if (!this.isAlreadyTracked()) {
            new Thread(new TrackOpen((TrackOpen)null)).start();
            return;
        }
        Log.d("MoPub", "Conversion already tracked");
    }
    
    private class ConversionUrlGenerator extends BaseUrlGenerator
    {
        private void setPackageId(final String s) {
            this.addParam("id", s);
        }
        
        @Override
        public String generateUrlString(final String s) {
            this.initUrlString(s, "/m/open");
            this.setApiVersion("6");
            this.setPackageId(MoPubConversionTracker.this.mPackageName);
            this.setUdid(this.getUdidFromContext(MoPubConversionTracker.this.mContext));
            this.setAppVersion(this.getAppVersionFromContext(MoPubConversionTracker.this.mContext));
            return this.getFinalUrlString();
        }
    }
    
    private class TrackOpen implements Runnable
    {
        @Override
        public void run() {
            final String generateUrlString = new ConversionUrlGenerator((ConversionUrlGenerator)null).generateUrlString("ads.mopub.com");
            Log.d("MoPub", "Conversion track: " + generateUrlString);
            final DefaultHttpClient create = HttpClientFactory.create();
            HttpResponse execute;
            try {
                execute = create.execute((HttpUriRequest)new HttpGet(generateUrlString));
                if (execute.getStatusLine().getStatusCode() != 200) {
                    Log.d("MoPub", "Conversion track failed: Status code != 200.");
                    return;
                }
            }
            catch (Exception ex) {
                Log.d("MoPub", "Conversion track failed [" + ex.getClass().getSimpleName() + "]: " + generateUrlString);
                return;
            }
            final HttpEntity entity = execute.getEntity();
            if (entity == null || entity.getContentLength() == 0L) {
                Log.d("MoPub", "Conversion track failed: Response was empty.");
                return;
            }
            Log.d("MoPub", "Conversion track successful.");
            MoPubConversionTracker.this.mSharedPreferences.edit().putBoolean(MoPubConversionTracker.this.mIsTrackedKey, true).commit();
        }
    }
}
