package com.fusepowered.m2.m2l;

import android.content.*;
import android.location.*;
import android.telephony.*;
import android.net.*;
import java.text.*;
import android.os.*;
import com.fusepowered.m2.m2l.util.*;

public class AdUrlGenerator extends BaseUrlGenerator
{
    public static final String DEVICE_ORIENTATION_LANDSCAPE = "l";
    public static final String DEVICE_ORIENTATION_PORTRAIT = "p";
    public static final String DEVICE_ORIENTATION_SQUARE = "s";
    public static final String DEVICE_ORIENTATION_UNKNOWN = "u";
    public static final int UNKNOWN_NETWORK_TYPE = 8;
    private String mAdUnitId;
    private ConnectivityManager mConnectivityManager;
    private Context mContext;
    private boolean mFacebookSupportEnabled;
    private String mKeywords;
    private Location mLocation;
    private TelephonyManager mTelephonyManager;
    
    public AdUrlGenerator(final Context mContext) {
        super();
        this.mContext = mContext;
        this.mTelephonyManager = (TelephonyManager)this.mContext.getSystemService("phone");
        this.mConnectivityManager = (ConnectivityManager)this.mContext.getSystemService("connectivity");
    }
    
    private static String addKeyword(final String obj, final String str) {
        if (str == null || str.length() == 0) {
            return obj;
        }
        if (obj == null || obj.length() == 0) {
            return str;
        }
        return String.valueOf(obj) + "," + str;
    }
    
    private void addParam(final String s, final MoPubNetworkType moPubNetworkType) {
        this.addParam(s, moPubNetworkType.toString());
    }
    
    private boolean detectIsMraidSupported() {
        try {
            Class.forName("com.fusepowered.m2.m2l.MraidView");
            return true;
        }
        catch (ClassNotFoundException ex) {
            return false;
        }
    }
    
    private int getActiveNetworkType() {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) {
            return 8;
        }
        final NetworkInfo activeNetworkInfo = this.mConnectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo != null) {
            return activeNetworkInfo.getType();
        }
        return 8;
    }
    
    private static String getFacebookKeyword(final Context context, final boolean b) {
        if (!b) {
            return null;
        }
        try {
            final Class<?> forName = Class.forName("com.fusepowered.m2.m2l.FacebookKeywordProvider");
            return (String)forName.getMethod("getKeyword", Context.class).invoke(forName, context);
        }
        catch (Exception ex) {
            return null;
        }
    }
    
    private String getNetworkOperator() {
        String s = this.mTelephonyManager.getNetworkOperator();
        if (this.mTelephonyManager.getPhoneType() == 2 && this.mTelephonyManager.getSimState() == 5) {
            s = this.mTelephonyManager.getSimOperator();
        }
        return s;
    }
    
    private static String getTimeZoneOffsetString() {
        final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("Z");
        simpleDateFormat.setTimeZone(DateAndTime.localTimeZone());
        return simpleDateFormat.format(DateAndTime.now());
    }
    
    private int mncPortionLength(final String s) {
        return Math.min(3, s.length());
    }
    
    private void setAdUnitId(final String s) {
        this.addParam("id", s);
    }
    
    private void setCarrierName(final String s) {
        this.addParam("cn", s);
    }
    
    private void setDensity(final float f) {
        this.addParam("sc_a", new StringBuilder().append(f).toString());
    }
    
    private void setIsoCountryCode(final String s) {
        this.addParam("iso", s);
    }
    
    private void setKeywords(final String s) {
        this.addParam("q", s);
    }
    
    private void setLocation(final Location location) {
        if (location != null) {
            this.addParam("ll", String.valueOf(location.getLatitude()) + "," + location.getLongitude());
            this.addParam("lla", new StringBuilder().append((int)location.getAccuracy()).toString());
        }
    }
    
    private void setMccCode(final String s) {
        String substring;
        if (s == null) {
            substring = "";
        }
        else {
            substring = s.substring(0, this.mncPortionLength(s));
        }
        this.addParam("mcc", substring);
    }
    
    private void setMncCode(final String s) {
        String substring;
        if (s == null) {
            substring = "";
        }
        else {
            substring = s.substring(this.mncPortionLength(s));
        }
        this.addParam("mnc", substring);
    }
    
    private void setMraidFlag(final boolean b) {
        if (b) {
            this.addParam("mr", "1");
        }
    }
    
    private void setNetworkType(final int n) {
        switch (n) {
            default: {
                this.addParam("ct", MoPubNetworkType.UNKNOWN);
            }
            case 9: {
                this.addParam("ct", MoPubNetworkType.ETHERNET);
            }
            case 1: {
                this.addParam("ct", MoPubNetworkType.WIFI);
            }
            case 0:
            case 2:
            case 3:
            case 4:
            case 5: {
                this.addParam("ct", MoPubNetworkType.MOBILE);
            }
        }
    }
    
    private void setOrientation(final int n) {
        String s = "u";
        if (n == 1) {
            s = "p";
        }
        else if (n == 2) {
            s = "l";
        }
        else if (n == 3) {
            s = "s";
        }
        this.addParam("o", s);
    }
    
    private void setSdkVersion(final String s) {
        this.addParam("nv", s);
    }
    
    private void setTimezone(final String s) {
        this.addParam("z", s);
    }
    
    @Override
    public String generateUrlString(final String s) {
        this.initUrlString(s, "/m/ad");
        this.setApiVersion("6");
        this.setAdUnitId(this.mAdUnitId);
        this.setSdkVersion("1.17.0.0");
        this.setDeviceInfo(Build.MANUFACTURER, Build.MODEL, Build.PRODUCT);
        this.setUdid(this.getUdidFromContext(this.mContext));
        this.setKeywords(addKeyword(this.mKeywords, getFacebookKeyword(this.mContext, this.mFacebookSupportEnabled)));
        this.setLocation(this.mLocation);
        this.setTimezone(getTimeZoneOffsetString());
        this.setOrientation(this.mContext.getResources().getConfiguration().orientation);
        this.setDensity(this.mContext.getResources().getDisplayMetrics().density);
        this.setMraidFlag(this.detectIsMraidSupported());
        final String networkOperator = this.getNetworkOperator();
        this.setMccCode(networkOperator);
        this.setMncCode(networkOperator);
        this.setIsoCountryCode(this.mTelephonyManager.getNetworkCountryIso());
        this.setCarrierName(this.mTelephonyManager.getNetworkOperatorName());
        this.setNetworkType(this.getActiveNetworkType());
        this.setAppVersion(this.getAppVersionFromContext(this.mContext));
        this.setExternalStoragePermission(Mraids.isStorePictureSupported(this.mContext));
        return this.getFinalUrlString();
    }
    
    public AdUrlGenerator withAdUnitId(final String mAdUnitId) {
        this.mAdUnitId = mAdUnitId;
        return this;
    }
    
    public AdUrlGenerator withFacebookSupported(final boolean mFacebookSupportEnabled) {
        this.mFacebookSupportEnabled = mFacebookSupportEnabled;
        return this;
    }
    
    public AdUrlGenerator withKeywords(final String mKeywords) {
        this.mKeywords = mKeywords;
        return this;
    }
    
    public AdUrlGenerator withLocation(final Location mLocation) {
        this.mLocation = mLocation;
        return this;
    }
    
    public enum MoPubNetworkType
    {
        ETHERNET("ETHERNET", 1), 
        MOBILE("MOBILE", 3), 
        UNKNOWN("UNKNOWN", 0), 
        WIFI("WIFI", 2);
        
        @Override
        public String toString() {
            return Integer.toString(this.ordinal());
        }
    }
}
