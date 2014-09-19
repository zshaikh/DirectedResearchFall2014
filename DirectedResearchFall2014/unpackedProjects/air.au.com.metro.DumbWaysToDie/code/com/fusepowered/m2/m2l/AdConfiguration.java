package com.fusepowered.m2.m2l;

import java.io.*;
import android.content.*;
import android.provider.*;
import android.webkit.*;
import android.os.*;
import java.util.*;
import org.apache.http.*;
import com.fusepowered.m2.m2l.util.*;

public class AdConfiguration implements Serializable
{
    private static final int DEFAULT_REFRESH_TIME_MILLISECONDS = 60000;
    private static final int MINIMUM_REFRESH_TIME_MILLISECONDS = 10000;
    private static final String mPlatform = "Android";
    private Integer mAdTimeoutDelay;
    private String mAdType;
    private String mAdUnitId;
    private String mClickthroughUrl;
    private final String mDeviceLocale;
    private final String mDeviceModel;
    private String mDspCreativeId;
    private String mFailUrl;
    private final String mHashedUdid;
    private int mHeight;
    private String mImpressionUrl;
    private String mNetworkType;
    private final int mPlatformVersion;
    private String mRedirectUrl;
    private int mRefreshTimeMilliseconds;
    private String mResponseString;
    private final String mSdkVersion;
    private long mTimeStamp;
    private final String mUserAgent;
    private int mWidth;
    
    AdConfiguration(final Context context) {
        super();
        this.setDefaults();
        if (context != null) {
            final String string = Settings$Secure.getString(context.getContentResolver(), "android_id");
            String s;
            if (string != null) {
                s = string;
            }
            else {
                s = "";
            }
            this.mHashedUdid = Utils.sha1(s);
            this.mUserAgent = new WebView(context).getSettings().getUserAgentString();
            this.mDeviceLocale = context.getResources().getConfiguration().locale.toString();
        }
        else {
            this.mHashedUdid = null;
            this.mUserAgent = null;
            this.mDeviceLocale = null;
        }
        this.mDeviceModel = String.valueOf(Build.MANUFACTURER) + " " + Build.MODEL;
        this.mPlatformVersion = VersionCode.currentApiLevel().getApiLevel();
        this.mSdkVersion = "1.17.0.0";
    }
    
    static AdConfiguration extractFromMap(final Map<String, Object> map) {
        if (map == null) {
            return null;
        }
        final AdConfiguration value = map.get("Ad-Configuration");
        if (value instanceof AdConfiguration) {
            return value;
        }
        return null;
    }
    
    private void setDefaults() {
        this.mAdUnitId = null;
        this.mResponseString = null;
        this.mAdType = null;
        this.mNetworkType = null;
        this.mRedirectUrl = null;
        this.mClickthroughUrl = null;
        this.mImpressionUrl = null;
        this.mTimeStamp = DateAndTime.now().getTime();
        this.mWidth = 0;
        this.mHeight = 0;
        this.mAdTimeoutDelay = null;
        this.mRefreshTimeMilliseconds = 60000;
        this.mFailUrl = null;
        this.mDspCreativeId = null;
    }
    
    void addHttpResponse(final HttpResponse httpResponse) {
        this.mAdType = HttpResponses.extractHeader(httpResponse, ResponseHeader.AD_TYPE);
        this.mNetworkType = HttpResponses.extractHeader(httpResponse, ResponseHeader.NETWORK_TYPE);
        this.mRedirectUrl = HttpResponses.extractHeader(httpResponse, ResponseHeader.REDIRECT_URL);
        this.mClickthroughUrl = HttpResponses.extractHeader(httpResponse, ResponseHeader.CLICKTHROUGH_URL);
        this.mFailUrl = HttpResponses.extractHeader(httpResponse, ResponseHeader.FAIL_URL);
        this.mImpressionUrl = HttpResponses.extractHeader(httpResponse, ResponseHeader.IMPRESSION_URL);
        this.mTimeStamp = DateAndTime.now().getTime();
        this.mWidth = HttpResponses.extractIntHeader(httpResponse, ResponseHeader.WIDTH, 0);
        this.mHeight = HttpResponses.extractIntHeader(httpResponse, ResponseHeader.HEIGHT, 0);
        this.mAdTimeoutDelay = HttpResponses.extractIntegerHeader(httpResponse, ResponseHeader.AD_TIMEOUT);
        if (!httpResponse.containsHeader(ResponseHeader.REFRESH_TIME.getKey())) {
            this.mRefreshTimeMilliseconds = 0;
        }
        else {
            this.mRefreshTimeMilliseconds = 1000 * HttpResponses.extractIntHeader(httpResponse, ResponseHeader.REFRESH_TIME, 0);
            this.mRefreshTimeMilliseconds = Math.max(this.mRefreshTimeMilliseconds, 10000);
        }
        this.mDspCreativeId = HttpResponses.extractHeader(httpResponse, ResponseHeader.DSP_CREATIVE_ID);
    }
    
    void cleanup() {
        this.setDefaults();
    }
    
    Integer getAdTimeoutDelay() {
        return this.mAdTimeoutDelay;
    }
    
    String getAdType() {
        return this.mAdType;
    }
    
    String getAdUnitId() {
        return this.mAdUnitId;
    }
    
    String getClickthroughUrl() {
        return this.mClickthroughUrl;
    }
    
    String getDeviceLocale() {
        return this.mDeviceLocale;
    }
    
    String getDeviceModel() {
        return this.mDeviceModel;
    }
    
    String getDspCreativeId() {
        return this.mDspCreativeId;
    }
    
    String getFailUrl() {
        return this.mFailUrl;
    }
    
    String getHashedUdid() {
        return this.mHashedUdid;
    }
    
    int getHeight() {
        return this.mHeight;
    }
    
    String getImpressionUrl() {
        return this.mImpressionUrl;
    }
    
    String getNetworkType() {
        return this.mNetworkType;
    }
    
    String getPlatform() {
        return "Android";
    }
    
    int getPlatformVersion() {
        return this.mPlatformVersion;
    }
    
    String getRedirectUrl() {
        return this.mRedirectUrl;
    }
    
    int getRefreshTimeMilliseconds() {
        return this.mRefreshTimeMilliseconds;
    }
    
    String getResponseString() {
        return this.mResponseString;
    }
    
    String getSdkVersion() {
        return this.mSdkVersion;
    }
    
    long getTimeStamp() {
        return this.mTimeStamp;
    }
    
    String getUserAgent() {
        return this.mUserAgent;
    }
    
    int getWidth() {
        return this.mWidth;
    }
    
    void setAdUnitId(final String mAdUnitId) {
        this.mAdUnitId = mAdUnitId;
    }
    
    @Deprecated
    void setClickthroughUrl(final String mClickthroughUrl) {
        this.mClickthroughUrl = mClickthroughUrl;
    }
    
    void setFailUrl(final String mFailUrl) {
        this.mFailUrl = mFailUrl;
    }
    
    @Deprecated
    void setRefreshTimeMilliseconds(final int mRefreshTimeMilliseconds) {
        this.mRefreshTimeMilliseconds = mRefreshTimeMilliseconds;
    }
    
    void setResponseString(final String mResponseString) {
        this.mResponseString = mResponseString;
    }
}
