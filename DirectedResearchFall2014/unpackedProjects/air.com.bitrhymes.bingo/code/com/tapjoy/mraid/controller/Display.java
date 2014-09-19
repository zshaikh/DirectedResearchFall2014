package com.tapjoy.mraid.controller;

import com.tapjoy.mraid.util.*;
import android.view.*;
import com.tapjoy.mraid.view.*;
import android.util.*;
import com.tapjoy.*;
import org.json.*;
import android.webkit.*;
import android.net.*;
import android.app.*;
import java.util.*;
import android.*;
import android.content.*;

public class Display extends Abstract
{
    private static final String TAG = "MRAID Display";
    private boolean bMaxSizeSet;
    private Context context;
    private ConfigBroadcastReceiver mBroadCastReceiver;
    private float mDensity;
    private int mMaxHeight;
    private int mMaxWidth;
    private WindowManager mWindowManager;
    
    public Display(final MraidView mraidView, final Context context) {
        super(mraidView, context);
        this.bMaxSizeSet = false;
        this.mMaxWidth = -1;
        this.mMaxHeight = -1;
        this.context = context;
        final DisplayMetrics displayMetrics = new DisplayMetrics();
        this.mWindowManager = (WindowManager)context.getSystemService("window");
        this.mWindowManager.getDefaultDisplay().getMetrics(displayMetrics);
        this.mDensity = displayMetrics.density;
    }
    
    private Dimensions getDeviceDimensions(final Dimensions dimensions) {
        dimensions.width = (int)Math.ceil(this.mDensity * dimensions.width);
        dimensions.height = (int)Math.ceil(this.mDensity * dimensions.height);
        dimensions.x *= (int)this.mDensity;
        dimensions.y *= (int)this.mDensity;
        if (dimensions.height < 0) {
            dimensions.height = this.mMraidView.getHeight();
        }
        if (dimensions.width < 0) {
            dimensions.width = this.mMraidView.getWidth();
        }
        final int[] array = new int[2];
        this.mMraidView.getLocationInWindow(array);
        if (dimensions.x < 0) {
            dimensions.x = array[0];
        }
        if (dimensions.y < 0) {
            dimensions.y = array[1] - 0;
        }
        return dimensions;
    }
    
    @JavascriptInterface
    public void close() {
        TapjoyLog.d("MRAID Display", "close");
        this.mMraidView.close();
    }
    
    public String dimensions() {
        return "{ \"top\" :" + (int)(this.mMraidView.getTop() / this.mDensity) + "," + "\"left\" :" + (int)(this.mMraidView.getLeft() / this.mDensity) + "," + "\"bottom\" :" + (int)(this.mMraidView.getBottom() / this.mDensity) + "," + "\"right\" :" + (int)(this.mMraidView.getRight() / this.mDensity) + "}";
    }
    
    @JavascriptInterface
    public void expand(final String str, final String str2) {
        TapjoyLog.d("MRAID Display", "expand: properties: " + str2 + " url: " + str);
        try {
            final JSONObject jsonObject = new JSONObject(str2);
            final JSONObject jsonObject2 = new JSONObject();
            jsonObject2.put("width", jsonObject.get("width"));
            jsonObject2.put("height", jsonObject.get("height"));
            jsonObject2.put("x", 0);
            jsonObject2.put("y", 0);
            this.mMraidView.expand(this.getDeviceDimensions((Dimensions)Abstract.getFromJSON(jsonObject2, Dimensions.class)), str, (Properties)Abstract.getFromJSON(new JSONObject(str2), Properties.class));
        }
        catch (NumberFormatException ex) {
            ex.printStackTrace();
        }
        catch (NullPointerException ex2) {
            ex2.printStackTrace();
        }
        catch (IllegalAccessException ex3) {
            ex3.printStackTrace();
        }
        catch (InstantiationException ex4) {
            ex4.printStackTrace();
        }
        catch (JSONException ex5) {
            ex5.printStackTrace();
        }
    }
    
    public String getMaxSize() {
        if (this.bMaxSizeSet) {
            return "{ width: " + this.mMaxWidth + ", " + "height: " + this.mMaxHeight + "}";
        }
        return this.getScreenSize();
    }
    
    public int getOrientation() {
        final int orientation = this.mWindowManager.getDefaultDisplay().getOrientation();
        int i = -1;
        switch (orientation) {
            case 0: {
                i = 0;
                break;
            }
            case 1: {
                i = 90;
                break;
            }
            case 2: {
                i = 180;
                break;
            }
            case 3: {
                i = 270;
                break;
            }
        }
        TapjoyLog.d("MRAID Display", "getOrientation: " + i);
        return i;
    }
    
    public String getScreenSize() {
        final DisplayMetrics displayMetrics = new DisplayMetrics();
        this.mWindowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return "{ width: " + (int)Math.ceil(displayMetrics.widthPixels / displayMetrics.density) + ", " + "height: " + (int)Math.ceil(displayMetrics.heightPixels / displayMetrics.density) + "}";
    }
    
    public String getSize() {
        return this.mMraidView.getSize();
    }
    
    @JavascriptInterface
    public void hide() {
        TapjoyLog.d("MRAID Display", "hide");
        this.mMraidView.hide();
    }
    
    public boolean isVisible() {
        return this.mMraidView.getVisibility() == 0;
    }
    
    public void logHTML(final String s) {
        TapjoyLog.d("MRAID Display", s);
    }
    
    public void onOrientationChanged(final int i) {
        final String string = "window.mraidview.fireChangeEvent({ orientation: " + i + "});";
        TapjoyLog.d("MRAID Display", string);
        this.mMraidView.injectMraidJavaScript(string);
    }
    
    @JavascriptInterface
    public void open(final String str, final boolean b, final boolean b2, final boolean b3) {
        TapjoyLog.i("MRAID Display", "open: url: " + str + " back: " + b + " forward: " + b2 + " refresh: " + b3);
        if (URLUtil.isValidUrl(str)) {
            this.mMraidView.open(str, b, b2, b3);
            return;
        }
        TapjoyLog.i("MRAID Display", "invalid URL");
        final Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        final List queryIntentActivities = this.context.getPackageManager().queryIntentActivities(intent, 0);
        if (queryIntentActivities.size() == 1) {
            this.context.startActivity(intent);
            return;
        }
        if (queryIntentActivities.size() > 1) {
            ((Activity)this.context).startActivity(Intent.createChooser(intent, (CharSequence)"Select"));
            return;
        }
        this.mMraidView.raiseError("Invalid url", "open");
    }
    
    @JavascriptInterface
    public void openMap(final String str, final boolean b) {
        TapjoyLog.d("MRAID Display", "openMap: url: " + str);
        this.mMraidView.openMap(str, b);
    }
    
    @JavascriptInterface
    public void playAudio(final String str, final boolean b, final boolean b2, final boolean b3, final boolean b4, final String str2, final String str3) {
        TapjoyLog.d("MRAID Display", "playAudio: url: " + str + " autoPlay: " + b + " controls: " + b2 + " loop: " + b3 + " position: " + b4 + " startStyle: " + str2 + " stopStyle: " + str3);
        if (!URLUtil.isValidUrl(str)) {
            this.mMraidView.raiseError("Invalid url", "playAudio");
            return;
        }
        this.mMraidView.playAudio(str, b, b2, b3, b4, str2, str3);
    }
    
    @JavascriptInterface
    public void playVideo(String string, final boolean b, final boolean b2, final boolean b3, final boolean b4, final int[] array, final String str, final String str2) {
        TapjoyLog.d("MRAID Display", "playVideo: url: " + string + " audioMuted: " + b + " autoPlay: " + b2 + " controls: " + b3 + " loop: " + b4 + " x: " + array[0] + " y: " + array[1] + " width: " + array[2] + " height: " + array[3] + " startStyle: " + str + " stopStyle: " + str2);
        final int n = array[0];
        Dimensions deviceDimensions = null;
        if (n != -1) {
            final Dimensions dimensions = new Dimensions();
            dimensions.x = array[0];
            dimensions.y = array[1];
            dimensions.width = array[2];
            dimensions.height = array[3];
            deviceDimensions = this.getDeviceDimensions(dimensions);
        }
        Label_0309: {
            if (!string.contains("android.resource")) {
                break Label_0309;
            }
            final String substring = string.substring(1 + string.lastIndexOf("/"), string.lastIndexOf("."));
            while (true) {
                try {
                    final int int1 = R$raw.class.getField(substring).getInt(null);
                    string = "android.resource://" + this.mContext.getPackageName() + "/" + int1;
                    this.mMraidView.playVideo(string, false, true, true, false, deviceDimensions, "fullscreen", "exit");
                }
                catch (Exception ex) {
                    ex.printStackTrace();
                    final int int1 = 0;
                    continue;
                }
                break;
            }
        }
    }
    
    @JavascriptInterface
    public void resize(final String s) {
        int int1 = 0;
        int int2 = 0;
        int int3 = 0;
        int int4 = 0;
        String string = null;
        boolean boolean1 = true;
        while (true) {
            try {
                final JSONObject jsonObject = new JSONObject(s);
                int1 = jsonObject.getInt("width");
                int2 = jsonObject.getInt("height");
                int3 = jsonObject.getInt("offsetX");
                int4 = jsonObject.getInt("offsetY");
                string = jsonObject.getString("customClosePosition");
                boolean1 = jsonObject.getBoolean("allowOffScreen");
                this.mMraidView.resize((int)(this.mDensity * int1), (int)(this.mDensity * int2), int3, int4, string, boolean1);
            }
            catch (Exception ex) {
                continue;
            }
            break;
        }
    }
    
    public void setMaxSize(final int n, final int n2) {
        TapjoyLog.i("MRAID Display", "setMaxSize: " + n + "x" + n2);
        this.bMaxSizeSet = true;
        this.mMaxWidth = n;
        this.mMaxHeight = n2;
    }
    
    @JavascriptInterface
    public void setOrientationProperties(final boolean b, final String str) {
        TapjoyLog.d("MRAID Display", "setOrientationProperties: allowOrientationChange: " + Boolean.toString(b) + " forceOrientation: " + str);
        this.mMraidView.setOrientationProperties(b, str);
    }
    
    @JavascriptInterface
    public void show() {
        TapjoyLog.d("MRAID Display", "show");
        this.mMraidView.show();
    }
    
    public void startConfigurationListener() {
        try {
            if (this.mBroadCastReceiver == null) {
                this.mBroadCastReceiver = new ConfigBroadcastReceiver(this);
            }
            this.mContext.registerReceiver((BroadcastReceiver)this.mBroadCastReceiver, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
        }
        catch (Exception ex) {}
    }
    
    @Override
    public void stopAllListeners() {
        this.stopConfigurationListener();
        this.mBroadCastReceiver = null;
    }
    
    public void stopConfigurationListener() {
        try {
            this.mContext.unregisterReceiver((BroadcastReceiver)this.mBroadCastReceiver);
        }
        catch (Exception ex) {}
    }
    
    @JavascriptInterface
    public void useCustomClose(final boolean b) {
        if (b) {
            this.mMraidView.removeCloseImageButton();
        }
        else if (!b) {
            this.mMraidView.showCloseImageButton();
        }
    }
}
