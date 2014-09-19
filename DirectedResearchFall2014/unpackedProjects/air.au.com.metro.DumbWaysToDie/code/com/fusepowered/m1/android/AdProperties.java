package com.fusepowered.m1.android;

import java.lang.ref.*;
import android.content.*;
import org.json.*;
import android.util.*;

class AdProperties
{
    WeakReference<Context> contextRef;
    
    AdProperties(final Context referent) {
        super();
        this.contextRef = new WeakReference<Context>(referent);
    }
    
    private JSONObject getAd() throws JSONException {
        final JSONObject jsonObject = new JSONObject();
        jsonObject.put("height", (Object)this.getAdDpiIndependentHeight());
        jsonObject.put("width", (Object)this.getAdDpiIndependentWidth());
        return jsonObject;
    }
    
    private JSONObject getPermissions() throws JSONException {
        final JSONObject jsonObject = new JSONObject();
        jsonObject.put("android.permission.ACCESS_FINE_LOCATION", this.getContext().checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0);
        return jsonObject;
    }
    
    private JSONObject getScreen() throws JSONException {
        final JSONObject jsonObject = new JSONObject();
        jsonObject.put("height", (Object)this.getScreenDpiIndependentHeight());
        jsonObject.put("width", (Object)this.getScreenDpiIndependentWidth());
        return jsonObject;
    }
    
    private JSONObject getSupports() throws JSONException {
        final JSONObject jsonObject = new JSONObject();
        final Context context = this.getContext();
        jsonObject.put("sms", (Object)MMSDK.getSupportsSms(context));
        jsonObject.put("tel", (Object)MMSDK.getSupportsTel(context));
        jsonObject.put("calendar", (Object)"false");
        jsonObject.put("storePicture", (Object)"false");
        jsonObject.put("inlineVideo", (Object)"true");
        return jsonObject;
    }
    
    String getAdDpiIndependentHeight() {
        return this.getScreenDpiIndependentHeight();
    }
    
    String getAdDpiIndependentWidth() {
        return this.getScreenDpiIndependentWidth();
    }
    
    public JSONObject getAdProperties() {
        final JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("screen", (Object)this.getScreen());
            jsonObject.put("ad", (Object)this.getAd());
            jsonObject.put("do", (Object)MMSDK.getOrientation(this.getContext()));
            jsonObject.put("supports", (Object)this.getSupports());
            jsonObject.put("device", (Object)BridgeMMDevice.getDeviceInfo(this.getContext()));
            jsonObject.put("permissions", (Object)this.getPermissions());
            jsonObject.put("maxSize", (Object)this.getScreen());
            return jsonObject;
        }
        catch (JSONException ex) {
            return jsonObject;
        }
    }
    
    Context getContext() {
        return this.contextRef.get();
    }
    
    String getScreenDpiIndependentHeight() {
        final DisplayMetrics metrics = MMSDK.getMetrics(this.getContext());
        return String.valueOf((int)(metrics.heightPixels / metrics.density));
    }
    
    String getScreenDpiIndependentWidth() {
        final DisplayMetrics metrics = MMSDK.getMetrics(this.getContext());
        return String.valueOf((int)(metrics.widthPixels / metrics.density));
    }
}
