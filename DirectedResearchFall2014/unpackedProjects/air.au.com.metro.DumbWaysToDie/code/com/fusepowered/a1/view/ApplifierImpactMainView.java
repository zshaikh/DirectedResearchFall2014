package com.fusepowered.a1.view;

import com.fusepowered.a1.video.*;
import android.content.*;
import android.util.*;
import com.fusepowered.a1.properties.*;
import android.widget.*;
import com.fusepowered.a1.*;
import org.json.*;
import android.media.*;
import com.fusepowered.a1.campaign.*;
import android.view.*;
import android.os.*;
import com.fusepowered.a1.webapp.*;
import java.util.*;

public class ApplifierImpactMainView extends RelativeLayout implements IApplifierImpactWebViewListener, IApplifierImpactVideoPlayerListener
{
    private static final int FILL_PARENT = -1;
    private ApplifierImpactMainViewState _currentState;
    private IApplifierImpactMainViewListener _listener;
    public ApplifierImpactVideoPlayView videoplayerview;
    public ApplifierImpactWebView webview;
    
    static /* synthetic */ int[] $SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewState() {
        final int[] $switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewState = ApplifierImpactMainView.$SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewState;
        if ($switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewState != null) {
            return $switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewState;
        }
        final int[] $switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewState2 = new int[ApplifierImpactMainViewState.values().length];
        while (true) {
            try {
                $switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewState2[ApplifierImpactMainViewState.VideoPlayer.ordinal()] = 2;
                try {
                    $switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewState2[ApplifierImpactMainViewState.WebView.ordinal()] = 1;
                    return ApplifierImpactMainView.$SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewState = $switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewState2;
                }
                catch (NoSuchFieldError noSuchFieldError) {}
            }
            catch (NoSuchFieldError noSuchFieldError2) {
                continue;
            }
            break;
        }
    }
    
    public ApplifierImpactMainView(final Context context) {
        super(context);
        this.videoplayerview = null;
        this.webview = null;
        this._listener = null;
        this._currentState = ApplifierImpactMainViewState.WebView;
        this.init();
    }
    
    public ApplifierImpactMainView(final Context context, final AttributeSet set) {
        super(context, set);
        this.videoplayerview = null;
        this.webview = null;
        this._listener = null;
        this._currentState = ApplifierImpactMainViewState.WebView;
        this.init();
    }
    
    public ApplifierImpactMainView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.videoplayerview = null;
        this.webview = null;
        this._listener = null;
        this._currentState = ApplifierImpactMainViewState.WebView;
        this.init();
    }
    
    public ApplifierImpactMainView(final Context context, final IApplifierImpactMainViewListener listener) {
        super(context);
        this.videoplayerview = null;
        this.webview = null;
        this._listener = null;
        this._currentState = ApplifierImpactMainViewState.WebView;
        this._listener = listener;
        this.init();
    }
    
    private void createVideoPlayerView() {
        (this.videoplayerview = new ApplifierImpactVideoPlayView(ApplifierImpactProperties.CURRENT_ACTIVITY.getBaseContext(), this)).setLayoutParams((ViewGroup$LayoutParams)new FrameLayout$LayoutParams(-1, -1));
        this.videoplayerview.setId(1002);
        this.addView((View)this.videoplayerview);
    }
    
    private void createWebView() {
        (this.webview = new ApplifierImpactWebView(ApplifierImpactProperties.CURRENT_ACTIVITY, this, new ApplifierImpactWebBridge(ApplifierImpact.instance))).setId(1003);
        this.addView((View)this.webview, (ViewGroup$LayoutParams)new FrameLayout$LayoutParams(-1, -1));
    }
    
    private void destroyVideoPlayerView() {
        ApplifierImpactUtils.Log("Destroying player", this);
        if (this.videoplayerview != null) {
            this.videoplayerview.clearVideoPlayer();
        }
        this.removeFromMainView((View)this.videoplayerview);
        this.videoplayerview = null;
    }
    
    private void focusToView(final View view) {
        if (view != null) {
            view.setFocusable(true);
            view.setFocusableInTouchMode(true);
            view.requestFocus();
        }
    }
    
    private void init() {
        ApplifierImpactUtils.Log("Init", this);
        this.setId(1001);
        this.createWebView();
    }
    
    private void removeFromMainView(final View view) {
        if (view != null) {
            view.setFocusable(false);
            view.setFocusableInTouchMode(false);
            final ViewGroup viewGroup = (ViewGroup)view.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(view);
            }
        }
    }
    
    private void sendActionToListener(final ApplifierImpactMainViewAction applifierImpactMainViewAction) {
        if (this._listener != null) {
            this._listener.onMainViewAction(applifierImpactMainViewAction);
        }
    }
    
    public void afterVideoPlaybackOperations() {
        if (this.videoplayerview != null) {
            this.videoplayerview.setKeepScreenOn(false);
        }
        this.destroyVideoPlayerView();
        this.setViewState(ApplifierImpactMainViewState.WebView);
        ApplifierImpactProperties.CURRENT_ACTIVITY.setRequestedOrientation(-1);
    }
    
    public void closeImpact(final JSONObject jsonObject) {
        if (this.getParent() != null) {
            final ViewGroup viewGroup = (ViewGroup)this.getParent();
            if (viewGroup != null) {
                viewGroup.removeView((View)this);
            }
        }
        this.destroyVideoPlayerView();
        ApplifierImpactProperties.SELECTED_CAMPAIGN = null;
    }
    
    public ApplifierImpactMainViewState getViewState() {
        return this._currentState;
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.focusToView((View)this);
    }
    
    public void onBackButtonClicked(final View view) {
        ApplifierImpactUtils.Log("Current state: " + this._currentState.toString(), this);
        if (this.videoplayerview != null) {
            ApplifierImpactUtils.Log("Seconds: " + this.videoplayerview.getSecondsUntilBackButtonAllowed(), this);
        }
        if ((ApplifierImpactProperties.SELECTED_CAMPAIGN != null && ApplifierImpactProperties.SELECTED_CAMPAIGN.isViewed()) || this._currentState != ApplifierImpactMainViewState.VideoPlayer || (this._currentState == ApplifierImpactMainViewState.VideoPlayer && this.videoplayerview != null && this.videoplayerview.getSecondsUntilBackButtonAllowed() == 0)) {
            this.sendActionToListener(ApplifierImpactMainViewAction.BackButtonPressed);
            return;
        }
        ApplifierImpactUtils.Log("Prevented back-button", this);
    }
    
    public void onCompletion(final MediaPlayer mediaPlayer) {
        ApplifierImpactUtils.Log("onCompletion", this);
        this.afterVideoPlaybackOperations();
        this.onEventPositionReached(ApplifierImpactWebData.ApplifierVideoPosition.End);
        final JSONObject jsonObject = new JSONObject();
        while (true) {
            try {
                jsonObject.put("campaignId", (Object)ApplifierImpactProperties.SELECTED_CAMPAIGN.getCampaignId());
                this.webview.sendNativeEventToWebApp("videoCompleted", jsonObject);
                this.sendActionToListener(ApplifierImpactMainViewAction.VideoEnd);
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("Could not create JSON", this);
                continue;
            }
            break;
        }
    }
    
    public void onEventPositionReached(final ApplifierImpactWebData.ApplifierVideoPosition applifierVideoPosition) {
        if (ApplifierImpactProperties.SELECTED_CAMPAIGN != null && !ApplifierImpactProperties.SELECTED_CAMPAIGN.getCampaignStatus().equals(ApplifierImpactCampaign.ApplifierImpactCampaignStatus.VIEWED)) {
            ApplifierImpact.webdata.sendCampaignViewProgress(ApplifierImpactProperties.SELECTED_CAMPAIGN, applifierVideoPosition);
        }
    }
    
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        switch (n) {
            default: {
                return false;
            }
            case 4: {
                this.onBackButtonClicked((View)this);
                return true;
            }
        }
    }
    
    public void onVideoPlaybackError() {
        this.afterVideoPlaybackOperations();
        ApplifierImpactUtils.Log("onVideoPlaybackError", this);
        ApplifierImpact.webdata.sendAnalyticsRequest("videoError", ApplifierImpactProperties.SELECTED_CAMPAIGN);
        final JSONObject jsonObject = new JSONObject();
        final JSONObject jsonObject2 = new JSONObject();
        final JSONObject jsonObject3 = new JSONObject();
        while (true) {
            try {
                jsonObject.put("textKey", (Object)"videoPlaybackError");
                jsonObject2.put("textKey", (Object)"buffering");
                jsonObject3.put("campaignId", (Object)ApplifierImpactProperties.SELECTED_CAMPAIGN.getCampaignId());
                this.webview.setWebViewCurrentView("completed", jsonObject3);
                this.webview.sendNativeEventToWebApp("showError", jsonObject);
                this.webview.sendNativeEventToWebApp("videoCompleted", jsonObject3);
                this.webview.sendNativeEventToWebApp("hideSpinner", jsonObject2);
                ApplifierImpactProperties.SELECTED_CAMPAIGN.setCampaignStatus(ApplifierImpactCampaign.ApplifierImpactCampaignStatus.VIEWED);
                ApplifierImpactProperties.SELECTED_CAMPAIGN = null;
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("Could not create JSON", this);
                continue;
            }
            break;
        }
    }
    
    public void onVideoPlaybackStarted() {
        ApplifierImpactUtils.Log("onVideoPlaybackStarted", this);
        final JSONObject jsonObject = new JSONObject();
        final JSONObject jsonObject2 = new JSONObject();
        while (true) {
            try {
                jsonObject.put("campaignId", (Object)ApplifierImpactProperties.SELECTED_CAMPAIGN.getCampaignId());
                jsonObject2.put("textKey", (Object)"buffering");
                this.sendActionToListener(ApplifierImpactMainViewAction.VideoStart);
                this.bringChildToFront((View)this.videoplayerview);
                int requestedOrientation = 6;
                if (Build$VERSION.SDK_INT < 9) {
                    requestedOrientation = 0;
                }
                if (ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS != null && ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.containsKey("useDeviceOrientationForVideo") && ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.get("useDeviceOrientationForVideo").equals(true)) {
                    ApplifierImpactProperties.CURRENT_ACTIVITY.setRequestedOrientation(0);
                    requestedOrientation = -1;
                }
                ApplifierImpactProperties.CURRENT_ACTIVITY.setRequestedOrientation(requestedOrientation);
                this.focusToView((View)this.videoplayerview);
                this.webview.sendNativeEventToWebApp("hideSpinner", jsonObject2);
                this.webview.setWebViewCurrentView("completed", jsonObject);
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("Could not create JSON", this);
                continue;
            }
            break;
        }
    }
    
    public void onVideoSkip() {
        final HashMap<String, Long> hashMap = new HashMap<String, Long>();
        hashMap.put("bufferingDuration", this.videoplayerview.getBufferingDuration());
        hashMap.put("eventValue", (Long)"skip");
        ApplifierImpactInstrumentation.gaInstrumentationVideoAbort(ApplifierImpactProperties.SELECTED_CAMPAIGN, (Map<String, Object>)hashMap);
        this.afterVideoPlaybackOperations();
        final JSONObject jsonObject = new JSONObject();
        while (true) {
            try {
                jsonObject.put("campaignId", (Object)ApplifierImpactProperties.SELECTED_CAMPAIGN.getCampaignId());
                this.webview.sendNativeEventToWebApp("videoCompleted", jsonObject);
                this.sendActionToListener(ApplifierImpactMainViewAction.VideoSkipped);
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("Could not create JSON", this);
                continue;
            }
            break;
        }
    }
    
    public void onWebAppLoaded() {
        this.webview.initWebApp(ApplifierImpact.webdata.getData());
    }
    
    public void openImpact(final String s, final JSONObject jsonObject) {
        if (ApplifierImpactProperties.CURRENT_ACTIVITY != null && ApplifierImpactProperties.CURRENT_ACTIVITY.getClass().getName().equals("com.fusepowered.a1.A1InterstitialActivity")) {
            this.webview.setWebViewCurrentView(s, jsonObject);
            if (this.getParent() != null && this.getParent() != null) {
                ((ViewGroup)this.getParent()).removeView((View)this);
            }
            if (this.getParent() == null) {
                ApplifierImpactProperties.CURRENT_ACTIVITY.addContentView((View)this, (ViewGroup$LayoutParams)new FrameLayout$LayoutParams(-1, -1));
            }
            this.setViewState(ApplifierImpactMainViewState.WebView);
            return;
        }
        ApplifierImpactUtils.Log("Cannot open, wrong activity", this);
    }
    
    public void setViewState(final ApplifierImpactMainViewState applifierImpactMainViewState) {
        if (!this._currentState.equals(applifierImpactMainViewState)) {
            this._currentState = applifierImpactMainViewState;
            switch ($SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewState()[applifierImpactMainViewState.ordinal()]) {
                case 1: {
                    this.removeFromMainView((View)this.webview);
                    this.addView((View)this.webview, (ViewGroup$LayoutParams)new FrameLayout$LayoutParams(-1, -1));
                    this.focusToView((View)this.webview);
                }
                case 2: {
                    if (this.videoplayerview == null) {
                        this.createVideoPlayerView();
                        this.bringChildToFront((View)this.webview);
                        this.focusToView((View)this.webview);
                        return;
                    }
                    break;
                }
            }
        }
    }
    
    public enum ApplifierImpactMainViewAction
    {
        BackButtonPressed("BackButtonPressed", 3), 
        RequestRetryVideoPlay("RequestRetryVideoPlay", 4), 
        VideoEnd("VideoEnd", 1), 
        VideoSkipped("VideoSkipped", 2), 
        VideoStart("VideoStart", 0);
    }
    
    public enum ApplifierImpactMainViewState
    {
        VideoPlayer("VideoPlayer", 1), 
        WebView("WebView", 0);
    }
}
