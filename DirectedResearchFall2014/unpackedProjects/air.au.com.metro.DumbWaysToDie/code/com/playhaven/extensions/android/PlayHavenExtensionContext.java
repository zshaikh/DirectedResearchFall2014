package com.playhaven.extensions.android;

import android.util.*;
import com.playhaven.src.publishersdk.purchases.*;
import android.content.*;
import com.playhaven.src.common.*;
import org.json.*;
import com.playhaven.src.publishersdk.open.*;
import com.playhaven.src.publishersdk.metadata.*;
import android.widget.*;
import android.view.*;
import android.app.*;
import java.util.*;
import com.playhaven.src.publishersdk.content.*;
import com.adobe.fre.*;

public class PlayHavenExtensionContext extends FREContext implements FailureDelegate, ContentDelegate, RewardDelegate, PurchaseDelegate
{
    private static final String TAG = "[PHExtension]";
    PHNotificationView notifyView;
    public String phSecret;
    public String phToken;
    HashMap<String, PHPublisherContentRequest> preloadMap;
    HashMap<String, PHPurchase> purchaseMap;
    
    static /* synthetic */ int[] $SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHDismissType() {
        final int[] $switch_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHDismissType = PlayHavenExtensionContext.$SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHDismissType;
        if ($switch_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHDismissType != null) {
            return $switch_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHDismissType;
        }
        final int[] $switch_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHDismissType2 = new int[PHDismissType.values().length];
        while (true) {
            try {
                $switch_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHDismissType2[PHDismissType.ApplicationTriggered.ordinal()] = 3;
                try {
                    $switch_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHDismissType2[PHDismissType.CloseButtonTriggered.ordinal()] = 2;
                    try {
                        $switch_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHDismissType2[PHDismissType.ContentUnitTriggered.ordinal()] = 1;
                        try {
                            $switch_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHDismissType2[PHDismissType.NoContentTriggered.ordinal()] = 4;
                            return PlayHavenExtensionContext.$SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHDismissType = $switch_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHDismissType2;
                        }
                        catch (NoSuchFieldError noSuchFieldError) {}
                    }
                    catch (NoSuchFieldError noSuchFieldError2) {}
                }
                catch (NoSuchFieldError noSuchFieldError3) {}
            }
            catch (NoSuchFieldError noSuchFieldError4) {
                continue;
            }
            break;
        }
    }
    
    private void dispatchFlashEvent(final String str, final String str2) {
        Log.d("[PHExtension]", "dispatch flash " + str + ",level=" + str2);
        this.dispatchStatusEventAsync(str, str2);
    }
    
    @Override
    public void contentDidFail(final PHPublisherContentRequest phPublisherContentRequest, final Exception ex) {
        this.dispatchFlashEvent("CONTENT_FAILED", String.valueOf(phPublisherContentRequest.placement) + "[ERR]0[ERR]" + ex.getLocalizedMessage());
    }
    
    @Override
    public void didDismissContent(final PHPublisherContentRequest phPublisherContentRequest, final PHDismissType phDismissType) {
        String s = "unknown";
        switch ($SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHDismissType()[phDismissType.ordinal()]) {
            case 1: {
                s = "PHPublisherContentUnitTriggeredDismiss";
                break;
            }
            case 2: {
                s = "PHPublisherNativeCloseButtonTriggeredDismiss";
                break;
            }
            case 3: {
                s = "PHPublisherApplicationBackgroundTriggeredDismiss";
                break;
            }
            case 4: {
                s = "PHPublisherNoContentTriggeredDismiss";
                break;
            }
        }
        this.dispatchFlashEvent("DID_DISMISS_CONTENT", s);
    }
    
    @Override
    public void didDisplayContent(final PHPublisherContentRequest phPublisherContentRequest, final PHContent phContent) {
        this.dispatchFlashEvent("DID_DISPLAY_CONTENT", phPublisherContentRequest.placement);
    }
    
    @Override
    public void didFail(final PHPublisherContentRequest phPublisherContentRequest, final String str) {
        this.dispatchFlashEvent("CONTENT_FAILED", String.valueOf(phPublisherContentRequest.placement) + "[ERR]0[ERR]" + str);
    }
    
    @Override
    public void dispose() {
    }
    
    public void ffiInitPlayHaven(final String s, final String s2, final String s3) {
        this.phToken = s;
        this.phSecret = s2;
        PHConfig.token = s;
        PHConfig.secret = s2;
        this.preloadMap = new HashMap<String, PHPublisherContentRequest>();
        this.purchaseMap = new HashMap<String, PHPurchase>();
    }
    
    public boolean ffiMoveNotification(final float n, final float n2) {
        return false;
    }
    
    public void ffiPreloadContentRequest(final String key) {
        final PHPublisherContentRequest value = new PHPublisherContentRequest(this.getActivity(), key);
        this.preloadMap.put(key, value);
        value.setOnContentListener((PHPublisherContentRequest.ContentDelegate)this);
        value.setOnFailureListener((PHPublisherContentRequest.FailureDelegate)this);
        value.setOnRewardListener((PHPublisherContentRequest.RewardDelegate)this);
        value.setOnPurchaseListener((PHPublisherContentRequest.PurchaseDelegate)this);
        value.preload();
    }
    
    public boolean ffiRefreshNotification(final boolean b) {
        if (this.notifyView == null) {
            return false;
        }
        this.notifyView.refresh();
        return true;
    }
    
    public boolean ffiRemoveNotification() {
        final PHNotificationView notifyView = this.notifyView;
        boolean b = false;
        if (notifyView == null) {
            return b;
        }
        try {
            final ViewGroup viewGroup = (ViewGroup)this.notifyView.getParent();
            final ViewGroup viewGroup2 = (ViewGroup)viewGroup.getParent();
            final ViewGroup viewGroup3 = (ViewGroup)viewGroup2.getParent();
            viewGroup.removeView((View)this.notifyView);
            if (viewGroup2 != null && viewGroup != null) {
                viewGroup2.removeView((View)viewGroup);
            }
            if (viewGroup3 != null && viewGroup2 != null) {
                viewGroup3.removeView((View)viewGroup2);
            }
            this.notifyView = null;
            b = true;
            return b;
        }
        catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }
    
    public void ffiReportPurchaseResolution(final String obj, final String str) {
        final boolean containsKey = this.purchaseMap.containsKey(obj);
        PHPurchase phPurchase = null;
        if (containsKey) {
            phPurchase = this.purchaseMap.get(obj);
        }
        if (phPurchase == null) {
            this.dispatchFlashEvent("PURCHASE_REPORT_FAILED", String.valueOf(obj) + "[ERR]404[ERR] Purchase receipt no longer available.");
            return;
        }
        final PHPurchase.Resolution error = PHPurchase.Resolution.Error;
        PHPurchase.Resolution resolution;
        if (str.equals("buy")) {
            resolution = PHPurchase.Resolution.Buy;
        }
        else if (str.equals("cancel")) {
            resolution = PHPurchase.Resolution.Cancel;
        }
        else {
            if (!str.equals("error")) {
                this.dispatchFlashEvent("PURCHASE_REPORT_FAILED", String.valueOf(obj) + "[ERR]404[ERR] Invalid resolution " + str);
                return;
            }
            resolution = PHPurchase.Resolution.Error;
        }
        phPurchase.reportResolution(resolution, this.getActivity());
        final PHPublisherIAPTrackingRequest phPublisherIAPTrackingRequest = new PHPublisherIAPTrackingRequest((Context)this.getActivity(), phPurchase);
        phPublisherIAPTrackingRequest.setDelegate(new Delegate() {
            private final /* synthetic */ String val$purchaseReceiptId = new StringBuilder(String.valueOf(obj)).toString();
            
            @Override
            public void requestFailed(final PHAPIRequest phapiRequest, final Exception ex) {
                PlayHavenExtensionContext.this.dispatchFlashEvent("PURCHASE_REPORT_FAILED", String.valueOf(this.val$purchaseReceiptId) + "[ERR]0[ERR]" + ex.getLocalizedMessage());
            }
            
            @Override
            public void requestSucceeded(final PHAPIRequest phapiRequest, final JSONObject jsonObject) {
                PlayHavenExtensionContext.this.dispatchFlashEvent("PURCHASE_REPORTED", this.val$purchaseReceiptId);
                PlayHavenExtensionContext.this.purchaseMap.remove(this.val$purchaseReceiptId);
            }
        });
        phPublisherIAPTrackingRequest.send();
    }
    
    public void ffiSendContentRequest(final String str, final boolean b) {
        PHPublisherContentRequest phPublisherContentRequest;
        if (this.preloadMap.containsKey(str)) {
            phPublisherContentRequest = this.preloadMap.get(str);
            Log.d("[PHExtension]", "Located preloaded content request for placement id " + str);
            this.preloadMap.remove(str);
        }
        else {
            phPublisherContentRequest = new PHPublisherContentRequest(this.getActivity(), str);
            phPublisherContentRequest.setOnContentListener((PHPublisherContentRequest.ContentDelegate)this);
            phPublisherContentRequest.setOnFailureListener((PHPublisherContentRequest.FailureDelegate)this);
            phPublisherContentRequest.setOnRewardListener((PHPublisherContentRequest.RewardDelegate)this);
            phPublisherContentRequest.setOnPurchaseListener((PHPublisherContentRequest.PurchaseDelegate)this);
        }
        Log.d("[PHExtension]", "Sending content request on placement id " + str);
        phPublisherContentRequest.send();
    }
    
    public void ffiSendGameOpenRequest() {
        new PHPublisherOpenRequest((Context)this.getActivity()).send();
    }
    
    public void ffiSendMetaDataRequest(final String s) {
        Log.d("[PHExtension]", "ffiSendMetaDatRequest on" + s);
        final PHPublisherMetadataRequest phPublisherMetadataRequest = new PHPublisherMetadataRequest((Context)this.getActivity(), s);
        phPublisherMetadataRequest.setDelegate(new Delegate() {
            private final /* synthetic */ String val$outPlacementId = new StringBuilder(String.valueOf(s)).toString();
            
            @Override
            public void requestFailed(final PHAPIRequest phapiRequest, final Exception ex) {
                Log.d("[PHExtension]", "Request failed meta:" + ex.getLocalizedMessage());
                PlayHavenExtensionContext.this.dispatchFlashEvent("METADATA_FAILED", String.valueOf(this.val$outPlacementId) + "[ERR]0[ERR]" + ex.getLocalizedMessage());
            }
            
            @Override
            public void requestSucceeded(final PHAPIRequest phapiRequest, final JSONObject jsonObject) {
                Log.d("[PHExtension]", "request succeeded for meta:" + jsonObject.toString());
                PlayHavenExtensionContext.this.dispatchFlashEvent("METADATA_LOADED", jsonObject.toString());
            }
        });
        phPublisherMetadataRequest.send();
    }
    
    public void ffiSetOptOutStatus(final boolean b) {
        Log.w("[PHExtension]", "Opt Out not supported Android: ignored");
    }
    
    public void ffiShowNotification(final String s, final double a, final double a2) {
        if (this.notifyView != null) {
            this.ffiRemoveNotification();
        }
        final Activity activity = this.getActivity();
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-2, -2);
        final RelativeLayout relativeLayout = new RelativeLayout((Context)activity);
        relativeLayout.addView((View)(this.notifyView = new PHNotificationView((Context)this.getActivity(), s)));
        final RelativeLayout relativeLayout2 = new RelativeLayout((Context)activity);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams2 = new RelativeLayout$LayoutParams(-1, -1);
        relativeLayout$LayoutParams.addRule(9);
        relativeLayout$LayoutParams.addRule(10);
        relativeLayout$LayoutParams.leftMargin = (int)Math.floor(a);
        relativeLayout$LayoutParams.topMargin = (int)Math.floor(a2);
        relativeLayout2.addView((View)relativeLayout, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
        activity.addContentView((View)relativeLayout2, (ViewGroup$LayoutParams)relativeLayout$LayoutParams2);
    }
    
    @Override
    public Map<String, FREFunction> getFunctions() {
        final HashMap<String, PHSendGameOpenRequestFunction> hashMap = (HashMap<String, PHSendGameOpenRequestFunction>)new HashMap<String, PHReportPurchaseResolutionFunction>();
        hashMap.put("ffiInitPlayHaven", (PHReportPurchaseResolutionFunction)new PHInitFunction((PHInitFunction)null));
        hashMap.put("ffiSendGameOpenRequest", (PHReportPurchaseResolutionFunction)new PHSendGameOpenRequestFunction((PHSendGameOpenRequestFunction)null));
        hashMap.put("ffiSetOptOutStatus", (PHReportPurchaseResolutionFunction)new PHSetOptOutStatusFunction((PHSetOptOutStatusFunction)null));
        hashMap.put("ffiSendContentRequest", (PHReportPurchaseResolutionFunction)new PHSendContentRequestFunction((PHSendContentRequestFunction)null));
        hashMap.put("ffiShowNotification", (PHReportPurchaseResolutionFunction)new PHShowNotificationFunction((PHShowNotificationFunction)null));
        hashMap.put("ffiRemoveNotification", (PHReportPurchaseResolutionFunction)new PHRemoveNotificationFunction((PHRemoveNotificationFunction)null));
        hashMap.put("ffiRefreshNotification", (PHReportPurchaseResolutionFunction)new PHRefreshNotificationFunction((PHRefreshNotificationFunction)null));
        hashMap.put("ffiMoveNotification", (PHReportPurchaseResolutionFunction)new PHMoveNotificationFunction((PHMoveNotificationFunction)null));
        hashMap.put("ffiPreloadContentRequest", (PHReportPurchaseResolutionFunction)new PHPreloadContentRequestFunction((PHPreloadContentRequestFunction)null));
        hashMap.put("ffiSendMetaDataRequest", (PHReportPurchaseResolutionFunction)new PHSendMetaDataRequestFunction((PHSendMetaDataRequestFunction)null));
        hashMap.put("ffiIsAndroid", (PHReportPurchaseResolutionFunction)new PHIsAndroidFunction((PHIsAndroidFunction)null));
        hashMap.put("ffiReportPurchaseResolution", new PHReportPurchaseResolutionFunction((PHReportPurchaseResolutionFunction)null));
        return (Map<String, FREFunction>)hashMap;
    }
    
    public boolean isAndroid() {
        return true;
    }
    
    @Override
    public void requestFailed(final PHAPIRequest phapiRequest, final Exception ex) {
    }
    
    @Override
    public void requestSucceeded(final PHAPIRequest phapiRequest, final JSONObject jsonObject) {
    }
    
    @Override
    public void shouldMakePurchase(final PHPublisherContentRequest phPublisherContentRequest, final PHPurchase value) {
        final JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("productId", (Object)value.product);
            jsonObject.put("quantity", value.quantity);
            jsonObject.put("receipt", (Object)value.receipt);
            final String string = jsonObject.toString();
            this.purchaseMap.put(value.receipt, value);
            this.dispatchFlashEvent("PURCHASE_REQUESTED", string);
        }
        catch (Exception ex) {
            this.dispatchFlashEvent("PURCHASE_REQUEST_INVALID", String.valueOf(phPublisherContentRequest.placement) + "[ERR]0[ERR]Purchaseequest parsing failure");
        }
    }
    
    @Override
    public void unlockedReward(final PHPublisherContentRequest phPublisherContentRequest, final PHReward phReward) {
        final JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("name", (Object)phReward.name);
            jsonObject.put("quantity", phReward.quantity);
            jsonObject.put("receipt", (Object)phReward.receipt);
            this.dispatchFlashEvent("REWARD_UNLOCKED", jsonObject.toString());
        }
        catch (Exception ex) {
            this.dispatchFlashEvent("REWARD_FAILED", String.valueOf(phPublisherContentRequest.placement) + "[ERR]0[ERR]Response parsing failure");
        }
    }
    
    @Override
    public void willDisplayContent(final PHPublisherContentRequest phPublisherContentRequest, final PHContent phContent) {
        this.dispatchFlashEvent("WILL_DISPLAY_CONTENT", phPublisherContentRequest.placement);
    }
    
    @Override
    public void willGetContent(final PHPublisherContentRequest phPublisherContentRequest) {
        this.dispatchFlashEvent("WILL_GET_CONTENT", phPublisherContentRequest.placement);
    }
    
    private class PHInitFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                PlayHavenExtensionContext.this.ffiInitPlayHaven(array[0].getAsString(), array[1].getAsString(), array[2].getAsString());
                return null;
            }
            catch (Exception ex) {
                Log.e("[PHExtension]", ex.getMessage());
                return null;
            }
        }
    }
    
    private class PHIsAndroidFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                return FREObject.newObject(PlayHavenExtensionContext.this.isAndroid());
            }
            catch (Exception ex) {
                Log.e("[PHExtension]", ex.getMessage());
                return null;
            }
        }
    }
    
    private class PHMoveNotificationFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                return FREObject.newObject(PlayHavenExtensionContext.this.ffiMoveNotification((float)array[0].getAsDouble(), (float)array[1].getAsDouble()));
            }
            catch (Exception ex) {
                Log.e("[PHExtension]", ex.getMessage());
                return null;
            }
        }
    }
    
    private class PHPreloadContentRequestFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                PlayHavenExtensionContext.this.ffiPreloadContentRequest(array[0].getAsString());
                return null;
            }
            catch (Exception ex) {
                Log.e("[PHExtension]", ex.getMessage());
                return null;
            }
        }
    }
    
    private class PHRefreshNotificationFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                return FREObject.newObject(PlayHavenExtensionContext.this.ffiRefreshNotification(array[0].getAsBool()));
            }
            catch (Exception ex) {
                Log.e("[PHExtension]", ex.getMessage());
                return null;
            }
        }
    }
    
    private class PHRemoveNotificationFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            final boolean ffiRemoveNotification = PlayHavenExtensionContext.this.ffiRemoveNotification();
            try {
                return FREObject.newObject(ffiRemoveNotification);
            }
            catch (Exception ex) {
                Log.e("[PHExtension]", ex.getMessage());
                return null;
            }
        }
    }
    
    private class PHReportPurchaseResolutionFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                PlayHavenExtensionContext.this.ffiReportPurchaseResolution(array[0].getAsString(), array[1].getAsString());
                return null;
            }
            catch (Exception ex) {
                Log.e("[PHExtension]", ex.getMessage());
                return null;
            }
        }
    }
    
    private class PHSendContentRequestFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                PlayHavenExtensionContext.this.ffiSendContentRequest(array[0].getAsString(), array[1].getAsBool());
                return null;
            }
            catch (Exception ex) {
                Log.e("[PHExtension]", ex.getMessage());
                return null;
            }
        }
    }
    
    private class PHSendGameOpenRequestFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                PlayHavenExtensionContext.this.ffiSendGameOpenRequest();
                return null;
            }
            catch (Exception ex) {
                Log.e("[PHExtension]", ex.getMessage());
                return null;
            }
        }
    }
    
    private class PHSendMetaDataRequestFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                PlayHavenExtensionContext.this.ffiSendMetaDataRequest(array[0].getAsString());
                return null;
            }
            catch (Exception ex) {
                Log.e("[PHExtension]", ex.getMessage());
                return null;
            }
        }
    }
    
    private class PHSetOptOutStatusFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                PlayHavenExtensionContext.this.ffiSetOptOutStatus(array[0].getAsBool());
                return null;
            }
            catch (Exception ex) {
                Log.e("[PHExtension]", ex.getMessage());
                return null;
            }
        }
    }
    
    private class PHShowNotificationFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                PlayHavenExtensionContext.this.ffiShowNotification(array[0].getAsString(), (float)array[1].getAsDouble(), (float)array[2].getAsDouble());
                return null;
            }
            catch (Exception ex) {
                Log.e("[PHExtension]", ex.getMessage());
                return null;
            }
        }
    }
}
