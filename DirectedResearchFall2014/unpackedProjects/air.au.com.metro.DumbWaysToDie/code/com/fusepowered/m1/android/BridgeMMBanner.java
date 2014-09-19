package com.fusepowered.m1.android;

import android.content.*;
import java.util.*;
import android.text.*;

class BridgeMMBanner extends MMJSObject
{
    int getScreenHeight(final Context context) {
        return Integer.parseInt(MMSDK.getDpiHeight(context));
    }
    
    int getScreenWidth(final Context context) {
        return Integer.parseInt(MMSDK.getDpiWidth(context));
    }
    
    public MMJSResponse resize(final HashMap<String, String> hashMap) {
        final MMWebView mmWebView = this.mmWebViewRef.get();
        if (mmWebView == null) {
            return null;
        }
        if (mmWebView.isMraidResized()) {
            return MMJSResponse.responseWithError("State is currently resized");
        }
        final String s = hashMap.get("width");
        final String s2 = hashMap.get("height");
        final boolean empty = TextUtils.isEmpty((CharSequence)s);
        int n = 0;
        if (!empty) {
            n = (int)Float.parseFloat(s);
        }
        final boolean empty2 = TextUtils.isEmpty((CharSequence)s2);
        int n2 = 0;
        if (!empty2) {
            n2 = (int)Float.parseFloat(s2);
        }
        final String s3 = hashMap.get("customClosePosition");
        final String s4 = hashMap.get("offsetX");
        final String s5 = hashMap.get("offsetY");
        final boolean empty3 = TextUtils.isEmpty((CharSequence)s5);
        int n3 = 0;
        if (!empty3) {
            n3 = (int)Float.parseFloat(s5);
        }
        final boolean empty4 = TextUtils.isEmpty((CharSequence)s4);
        int n4 = 0;
        if (!empty4) {
            n4 = (int)Float.parseFloat(s4);
        }
        final boolean boolean1 = Boolean.parseBoolean(hashMap.get("allowOffscreen"));
        final Context context = mmWebView.getContext();
        mmWebView.setMraidResize(new DTOResizeParameters(MMSDK.getMetrics(context).density, n, n2, s3, n4, n3, boolean1, this.getScreenWidth(context), this.getScreenHeight(context)));
        return MMJSResponse.responseWithSuccess();
    }
}
