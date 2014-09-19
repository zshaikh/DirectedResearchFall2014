package com.inmobi.androidsdk.ai.controller;

import com.inmobi.androidsdk.ai.container.*;
import android.content.*;
import android.util.*;
import android.app.*;
import com.inmobi.commons.internal.*;
import android.view.*;
import android.webkit.*;
import org.json.*;

public class JSDisplayController extends JSController
{
    private WindowManager a;
    private float b;
    
    public JSDisplayController(final IMWebView imWebView, final Context context) {
        super(imWebView, context);
        final DisplayMetrics displayMetrics = new DisplayMetrics();
        this.a = (WindowManager)context.getSystemService("window");
        this.a.getDefaultDisplay().getMetrics(displayMetrics);
        this.b = ((Activity)this.mContext).getResources().getDisplayMetrics().density;
    }
    
    private ExpandProperties a(final ExpandProperties expandProperties) {
        final Display defaultDisplay = this.a.getDefaultDisplay();
        final int widthPixels = ((Activity)this.mContext).getResources().getDisplayMetrics().widthPixels;
        final int heightPixels = ((Activity)this.mContext).getResources().getDisplayMetrics().heightPixels;
        final View viewById = ((Activity)this.mContext).getWindow().findViewById(16908290);
        expandProperties.topStuff = viewById.getTop();
        expandProperties.bottomStuff = heightPixels - viewById.getBottom();
        int displayRotation = InternalSDKUtil.getDisplayRotation(defaultDisplay);
        if (InternalSDKUtil.getWhetherTablet(displayRotation, widthPixels, heightPixels)) {
            if (++displayRotation > 3) {
                displayRotation = 0;
            }
            this.imWebView.isTablet = true;
        }
        final int i = displayRotation;
        IMLog.debug("InMobiAndroidSDK_3.6.2", "Device current rotation: " + i);
        IMLog.debug("InMobiAndroidSDK_3.6.2", "Density of device: " + this.b);
        expandProperties.width *= (int)this.b;
        expandProperties.height *= (int)this.b;
        expandProperties.x *= (int)this.b;
        expandProperties.y *= (int)this.b;
        expandProperties.currentX = 0;
        expandProperties.currentY = 0;
        this.imWebView.publisherOrientation = ((Activity)this.imWebView.getContext()).getRequestedOrientation();
        if (i == 0 || i == 2) {
            expandProperties.rotationAtExpand = "portrait";
        }
        else {
            expandProperties.rotationAtExpand = "landscape";
        }
        if (expandProperties.height <= 0 || expandProperties.width <= 0) {
            expandProperties.height = heightPixels;
            expandProperties.width = widthPixels;
            expandProperties.zeroWidthHeight = true;
        }
        if (i == 0 || i == 2) {
            expandProperties.portraitWidthRequested = expandProperties.width;
            expandProperties.portraitHeightRequested = expandProperties.height;
        }
        else {
            expandProperties.portraitWidthRequested = expandProperties.height;
            expandProperties.portraitHeightRequested = expandProperties.width;
        }
        IMLog.debug("InMobiAndroidSDK_3.6.2", "Device Width: " + widthPixels + " Device height: " + heightPixels);
        final int height = heightPixels - expandProperties.topStuff;
        if (expandProperties.width > widthPixels) {
            expandProperties.width = widthPixels;
        }
        if (expandProperties.height > height) {
            expandProperties.height = height;
        }
        final int[] array = new int[2];
        this.imWebView.getLocationOnScreen(array);
        if (expandProperties.x < 0) {
            expandProperties.x = array[0];
        }
        if (expandProperties.y < 0) {
            expandProperties.y = array[1] - expandProperties.topStuff;
            IMLog.debug("InMobiAndroidSDK_3.6.2", "topStuff: " + expandProperties.topStuff + " ,bottomStuff: " + expandProperties.bottomStuff);
        }
        IMLog.debug("InMobiAndroidSDK_3.6.2", "loc 0: " + array[0] + " loc 1: " + array[1]);
        final int n = widthPixels - (expandProperties.x + expandProperties.width);
        if (n < 0) {
            expandProperties.x += n;
            if (expandProperties.x < 0) {
                expandProperties.width += expandProperties.x;
                expandProperties.x = 0;
            }
        }
        final int n2 = height - (expandProperties.y + expandProperties.height);
        if (n2 < 0) {
            expandProperties.y += n2;
            if (expandProperties.y < 0) {
                expandProperties.height += expandProperties.y;
                expandProperties.y = 0;
            }
        }
        expandProperties.currentX = expandProperties.x;
        expandProperties.currentY = expandProperties.y;
        IMLog.debug("InMobiAndroidSDK_3.6.2", "final expanded width after density : " + expandProperties.width + "final expanded height after density " + expandProperties.height + "portrait width requested :" + expandProperties.portraitWidthRequested + "portrait height requested :" + expandProperties.portraitHeightRequested);
        return expandProperties;
    }
    
    private void a(final ExpandProperties expandProperties, final ExpandProperties expandProperties2) {
        expandProperties.width = expandProperties2.width;
        expandProperties.height = expandProperties2.height;
        expandProperties.x = expandProperties2.x;
        expandProperties.y = expandProperties2.y;
        expandProperties.actualWidthRequested = expandProperties2.actualWidthRequested;
        expandProperties.actualHeightRequested = expandProperties2.actualHeightRequested;
        expandProperties.lockOrientation = expandProperties2.lockOrientation;
        expandProperties.isModal = expandProperties2.isModal;
        expandProperties.useCustomClose = expandProperties2.useCustomClose;
        expandProperties.orientation = expandProperties2.orientation;
        expandProperties.topStuff = expandProperties2.topStuff;
        expandProperties.bottomStuff = expandProperties2.bottomStuff;
        expandProperties.portraitWidthRequested = expandProperties2.portraitWidthRequested;
        expandProperties.portraitHeightRequested = expandProperties2.portraitHeightRequested;
        expandProperties.zeroWidthHeight = expandProperties2.zeroWidthHeight;
        expandProperties.rotationAtExpand = expandProperties2.rotationAtExpand;
        expandProperties.currentX = expandProperties2.currentX;
        expandProperties.currentY = expandProperties2.currentY;
    }
    
    @JavascriptInterface
    public void acceptAction(final String s) {
        this.imWebView.acceptAction(s);
    }
    
    @JavascriptInterface
    public void close() {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSDisplayController-> close");
        if (this.imWebView.mOriginalWebviewForExpandUrl != null) {
            this.imWebView.mOriginalWebviewForExpandUrl.close();
            return;
        }
        this.imWebView.close();
    }
    
    @JavascriptInterface
    public void expand(final String str) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSDisplayController-> expand: url: " + str);
        try {
            if (this.imWebView.getStateVariable() == IMWebView.ViewState.EXPANDED || this.imWebView.getStateVariable() == IMWebView.ViewState.EXPANDING) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "JSDisplayController-> Already expanded state");
                return;
            }
            this.imWebView.useLockOrient = false;
            if (this.imWebView.getStateVariable() != IMWebView.ViewState.DEFAULT) {
                this.imWebView.postInjectJavaScript("window.mraidview.fireErrorEvent(\"Current state is not default\", \"expand\")");
                return;
            }
        }
        catch (Exception ex) {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception while expanding the ad. ", ex);
            return;
        }
        if (this.imWebView.getStateVariable() == IMWebView.ViewState.DEFAULT && this.imWebView.mIsInterstitialAd) {
            this.imWebView.postInjectJavaScript("window.mraidview.fireErrorEvent(\"Expand cannot be called on interstitial ad\", \"expand\")");
            return;
        }
        this.a(this.temporaryexpProps, this.expProps);
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSDisplayController-> At the time of expand the properties are: Expandable width: " + this.temporaryexpProps.width + " Expandable height: " + this.temporaryexpProps.height + " Expandable orientation: " + this.temporaryexpProps.orientation + " Expandable lock orientation: " + this.temporaryexpProps.lockOrientation + " Expandable Modality: " + this.temporaryexpProps.isModal + " Expandable Use custom close " + this.temporaryexpProps.useCustomClose);
        this.imWebView.lockExpandOrientation(this.temporaryexpProps);
        this.imWebView.expand(str, this.a(this.temporaryexpProps));
    }
    
    @JavascriptInterface
    public String getOrientation() {
        try {
            final String currentRotation = this.imWebView.getCurrentRotation(this.imWebView.getIntegerCurrentRotation());
            IMLog.debug("InMobiAndroidSDK_3.6.2", "JSDisplayController-> getOrientation: " + currentRotation);
            return currentRotation;
        }
        catch (Exception ex) {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "Error getOrientation: " + "-1", ex);
            return "-1";
        }
    }
    
    @JavascriptInterface
    public String getPlacementType() {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSDisplayController-> getPlacementType");
        return this.imWebView.getPlacementType();
    }
    
    @JavascriptInterface
    public String getState() {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSDisplayController-> getState");
        return this.imWebView.getState();
    }
    
    @JavascriptInterface
    public boolean isViewable() {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSDisplayController-> isViewable");
        return this.imWebView.isViewable();
    }
    
    @JavascriptInterface
    public void onOrientationChange() {
        this.imWebView.onOrientationEventChange();
    }
    
    @JavascriptInterface
    public void open(final String str) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSDisplayController-> open: url: " + str);
        this.imWebView.openURL(str);
    }
    
    @JavascriptInterface
    public void rejectAction(final String s) {
        this.imWebView.rejectAction(s);
    }
    
    @JavascriptInterface
    public void setExpandProperties(final String s) {
        try {
            this.expProps = (ExpandProperties)JSController.getFromJSON(new JSONObject(s), ExpandProperties.class);
            IMLog.debug("InMobiAndroidSDK_3.6.2", "JSDisplayController-> ExpandProperties is set: Expandable Width: " + this.expProps.width + " Expandable height: " + this.expProps.height + " Expandable orientation: " + this.expProps.orientation + " Expandable lock orientation: " + this.expProps.lockOrientation + " Expandable Modality: " + this.expProps.isModal + " Expandable Use Custom close: " + this.expProps.useCustomClose);
            this.imWebView.setExpandPropertiesForInterstitial(this.expProps.useCustomClose, this.expProps.lockOrientation, this.expProps.orientation);
        }
        catch (Exception obj) {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception while setting the expand properties " + obj);
        }
    }
    
    @Override
    public void stopAllListeners() {
    }
    
    @JavascriptInterface
    public void useCustomClose(final boolean b) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSDisplayController-> useCustomClose" + b);
        this.imWebView.setCustomClose(b);
    }
}
