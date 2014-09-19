package com.facebook.internal;

import android.content.*;

class NativeProtocol$WakizashiAppInfo extends NativeProtocol$NativeAppInfo
{
    static final String WAKIZASHI_PACKAGE = "com.facebook.wakizashi";
    
    private NativeProtocol$WakizashiAppInfo() {
        super(null);
    }
    
    @Override
    protected String getPackage() {
        return "com.facebook.wakizashi";
    }
    
    @Override
    protected String getSignature() {
        return null;
    }
    
    @Override
    public boolean validateSignature(final Context context, final String s) {
        return true;
    }
}
