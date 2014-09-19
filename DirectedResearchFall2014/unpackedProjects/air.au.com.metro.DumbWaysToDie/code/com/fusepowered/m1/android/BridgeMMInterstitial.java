package com.fusepowered.m1.android;

import android.net.*;
import android.os.*;
import java.util.*;
import android.content.*;

class BridgeMMInterstitial extends MMJSObject
{
    private Intent getExpandExtrasIntent(final String s, final OverlaySettings overlaySettings) {
        final Intent intent = new Intent();
        if (s != null) {
            intent.setData(Uri.parse(s));
        }
        intent.putExtra("settings", (Parcelable)overlaySettings);
        intent.putExtra("internalId", overlaySettings.creatorAdImplId);
        return intent;
    }
    
    private boolean isForcingOrientation(final MMJSResponse mmjsResponse) {
        if (mmjsResponse.result == 1 && mmjsResponse.response instanceof String) {
            final String s = (String)mmjsResponse.response;
            return s.contains("portrait") || s.contains("landscape");
        }
        return false;
    }
    
    private MMJSResponse setAllowOrientationChange(final HashMap<String, String> hashMap) {
        final String s = hashMap.get("allowOrientationChange");
        if (s != null) {
            final AdViewOverlayActivity baseActivity = this.getBaseActivity();
            if (baseActivity != null) {
                baseActivity.setAllowOrientationChange(Boolean.parseBoolean(s));
                return MMJSResponse.responseWithSuccess();
            }
        }
        return null;
    }
    
    private MMJSResponse setForceOrientation(final HashMap<String, String> hashMap) {
        final String anObject = hashMap.get("forceOrientation");
        if (!"none".equals(anObject)) {
            final AdViewOverlayActivity baseActivity = this.getBaseActivity();
            if (baseActivity != null) {
                if ("portrait".equals(anObject)) {
                    baseActivity.setRequestedOrientationPortrait();
                    return MMJSResponse.responseWithSuccess("portrait");
                }
                if ("landscape".equals(anObject)) {
                    baseActivity.setRequestedOrientationLandscape();
                    return MMJSResponse.responseWithSuccess("landscape");
                }
            }
        }
        return null;
    }
    
    public MMJSResponse close(final HashMap<String, String> hashMap) {
        final MMWebView mmWebView = this.mmWebViewRef.get();
        if (mmWebView != null) {
            mmWebView.getMMLayout().closeAreaTouched();
            return MMJSResponse.responseWithSuccess();
        }
        return null;
    }
    
    public MMJSResponse expandToExternalBrowser(final HashMap<String, String> hashMap) {
        return this.open(hashMap);
    }
    
    public MMJSResponse expandWithProperties(final HashMap<String, String> hashMap) {
        final String s = hashMap.get("PROPERTY_BANNER_TYPE");
        if (s != null && !Boolean.parseBoolean(s)) {
            return MMJSResponse.responseWithError("Cannot expand a non banner ad");
        }
        final String urlToLoad = hashMap.get("url");
        final String s2 = hashMap.get("transparent");
        final String s3 = hashMap.get("useCustomClose");
        final String transition = hashMap.get("transition");
        String orientation = hashMap.get("orientation");
        final String s4 = hashMap.get("transitionDuration");
        final String s5 = hashMap.get("height");
        final String s6 = hashMap.get("width");
        final String s7 = hashMap.get("modal");
        final String s8 = hashMap.get("PROPERTY_EXPANDING");
        final String s9 = hashMap.get("allowOrientationChange");
        final Context context = this.contextRef.get();
        Label_0385: {
            if (context == null) {
                break Label_0385;
            }
            final OverlaySettings overlaySettings = new OverlaySettings();
            if (urlToLoad != null) {
                overlaySettings.urlToLoad = urlToLoad;
            }
            if (s8 != null) {
                overlaySettings.creatorAdImplId = (int)Float.parseFloat(s8);
            }
            if (s2 != null) {
                overlaySettings.setIsTransparent(Boolean.parseBoolean(s2));
            }
            if (s3 != null) {
                overlaySettings.setUseCustomClose(Boolean.parseBoolean(s3));
            }
            if (transition != null) {
                overlaySettings.setTransition(transition);
            }
            if (s9 != null) {
                overlaySettings.allowOrientationChange = Boolean.parseBoolean(s9);
            }
            if (orientation == null) {
                orientation = hashMap.get("forceOrientation");
            }
            if (orientation != null) {
                overlaySettings.orientation = orientation;
            }
            if (s5 != null) {
                overlaySettings.height = (int)Float.parseFloat(s5);
            }
            if (s6 != null) {
                overlaySettings.width = (int)Float.parseFloat(s6);
            }
            if (s7 != null) {
                overlaySettings.modal = Boolean.parseBoolean(s7);
            }
            while (true) {
                if (s4 == null) {
                    break Label_0351;
                }
                try {
                    overlaySettings.setTransitionDurationInMillis(1000L * Long.parseLong(s4));
                    Utils.IntentUtils.startAdViewOverlayActivity(context, this.getExpandExtrasIntent(urlToLoad, overlaySettings));
                    MMSDK.Event.overlayOpenedBroadCast(context, this.getAdImplId(hashMap.get("PROPERTY_EXPANDING")));
                    return MMJSResponse.responseWithSuccess();
                    return null;
                }
                catch (Exception ex) {
                    continue;
                }
                break;
            }
        }
    }
    
    public MMJSResponse open(final HashMap<String, String> hashMap) {
        final String s = hashMap.get("url");
        final Context context = this.contextRef.get();
        if (s != null && context != null) {
            final Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
            MMSDK.Event.intentStarted(context, "browser", this.getAdImplId(hashMap.get("PROPERTY_EXPANDING")));
            Utils.IntentUtils.startActivity(context, intent);
            return MMJSResponse.responseWithSuccess();
        }
        return null;
    }
    
    public MMJSResponse setOrientation(final HashMap<String, String> hashMap) {
        MMJSResponse mmjsResponse = this.setForceOrientation(hashMap);
        if (mmjsResponse == null || !this.isForcingOrientation(mmjsResponse)) {
            mmjsResponse = this.setAllowOrientationChange(hashMap);
        }
        return mmjsResponse;
    }
    
    public MMJSResponse show(final HashMap<String, String> hashMap) {
        final String s = hashMap.get("url");
        final Context context = this.contextRef.get();
        if (s != null && context != null) {
            Utils.IntentUtils.startAdViewOverlayActivityWithData(context, s);
            return MMJSResponse.responseWithSuccess();
        }
        return null;
    }
    
    public MMJSResponse useCustomClose(final HashMap<String, String> hashMap) {
        final MMWebView mmWebView = this.mmWebViewRef.get();
        final String s = hashMap.get("useCustomClose");
        if (s != null && mmWebView != null) {
            final AdViewOverlayView adViewOverlayView = mmWebView.getAdViewOverlayView();
            if (adViewOverlayView != null) {
                adViewOverlayView.setUseCustomClose(Boolean.parseBoolean(s));
                return MMJSResponse.responseWithSuccess();
            }
        }
        return null;
    }
}
