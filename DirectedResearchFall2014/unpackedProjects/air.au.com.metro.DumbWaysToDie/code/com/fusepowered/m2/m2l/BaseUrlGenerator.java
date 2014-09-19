package com.fusepowered.m2.m2l;

import com.fusepowered.m2.m2l.util.*;
import android.net.*;
import android.content.*;
import android.provider.*;

public abstract class BaseUrlGenerator
{
    private boolean mFirstParam;
    private StringBuilder mStringBuilder;
    
    private String getParamDelimiter() {
        if (this.mFirstParam) {
            this.mFirstParam = false;
            return "?";
        }
        return "&";
    }
    
    protected void addParam(final String str, final String s) {
        if (s == null || Strings.isEmpty(s)) {
            return;
        }
        this.mStringBuilder.append(this.getParamDelimiter());
        this.mStringBuilder.append(str);
        this.mStringBuilder.append("=");
        this.mStringBuilder.append(Uri.encode(s));
    }
    
    public abstract String generateUrlString(final String p0);
    
    protected String getAppVersionFromContext(final Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        }
        catch (Exception ex) {
            return null;
        }
    }
    
    protected String getFinalUrlString() {
        return this.mStringBuilder.toString();
    }
    
    protected String getUdidFromContext(final Context context) {
        return Settings$Secure.getString(context.getContentResolver(), "android_id");
    }
    
    protected void initUrlString(final String str, final String str2) {
        this.mStringBuilder = new StringBuilder("http://" + str + str2);
        this.mFirstParam = true;
    }
    
    protected void setApiVersion(final String s) {
        this.addParam("v", s);
    }
    
    protected void setAppVersion(final String s) {
        this.addParam("av", s);
    }
    
    protected void setDeviceInfo(final String... array) {
        final StringBuilder sb = new StringBuilder();
        if (array == null || array.length < 1) {
            return;
        }
        for (int i = 0; i < array.length - 1; ++i) {
            sb.append(array[i]).append(",");
        }
        sb.append(array[array.length - 1]);
        this.addParam("dn", sb.toString());
    }
    
    protected void setExternalStoragePermission(final boolean b) {
        String s;
        if (b) {
            s = "1";
        }
        else {
            s = "0";
        }
        this.addParam("android_perms_ext_storage", s);
    }
    
    protected void setUdid(final String s) {
        String sha1;
        if (s == null) {
            sha1 = "";
        }
        else {
            sha1 = Utils.sha1(s);
        }
        this.addParam("udid", "sha:" + sha1);
    }
}
