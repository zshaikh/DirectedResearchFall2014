package v2.com.playhaven.interstitial.requestbridge.bridges;

import java.lang.ref.*;
import v2.com.playhaven.requests.content.*;
import v2.com.playhaven.interstitial.*;
import v2.com.playhaven.listeners.*;
import android.os.*;
import v2.com.playhaven.utils.*;
import v2.com.playhaven.model.*;
import v2.com.playhaven.interstitial.requestbridge.base.*;

public class ContentRequestToInterstitialBridge extends RequestBridge
{
    private WeakReference<PHContentRequest> contentRequest;
    private PHContentRequestListener content_listener;
    private WeakReference<PHInterstitialActivity> interstitialActivity;
    private PHPurchaseListener purchase_listener;
    private PHRewardListener reward_listener;
    
    public ContentRequestToInterstitialBridge(final String s) {
        super(s);
    }
    
    public void attachContentListener(final PHContentRequestListener content_listener) {
        this.content_listener = content_listener;
    }
    
    public void attachPurchaseListener(final PHPurchaseListener purchase_listener) {
        this.purchase_listener = purchase_listener;
    }
    
    public void attachRewardListener(final PHRewardListener reward_listener) {
        this.reward_listener = reward_listener;
    }
    
    @Override
    public void cleanup() {
        this.content_listener = null;
        this.reward_listener = null;
        this.purchase_listener = null;
    }
    
    @Override
    public String getDisplayerIntentFilter() {
        return "v2.com.playhaven.interstitial.ContentDisplayerEvent";
    }
    
    @Override
    public String getRequesterIntentFilter() {
        return "v2.com.playhaven.interstitial.ContentRequesterEvent";
    }
    
    @Override
    public void onDisplayerAttached(final ContentDisplayer contentDisplayer) {
        this.interstitialActivity = new WeakReference<PHInterstitialActivity>((PHInterstitialActivity)contentDisplayer);
    }
    
    @Override
    public void onDisplayerSentMessage(final String s, final Bundle bundle) {
        if (this.contentRequest != null && this.contentRequest.get() != null) {
            final InterstitialEvent value = InterstitialEvent.valueOf(s);
            PHStringUtil.log("ContentRequestToInterstitial bridge handling: " + value.name());
            PHStringUtil.log("ContentListener: " + this.content_listener);
            PHStringUtil.log("RewardListener: " + this.reward_listener);
            PHStringUtil.log("PurchaseListener: " + this.purchase_listener);
            switch (value) {
                default: {}
                case Loaded: {
                    final PHContent phContent = (PHContent)bundle.getParcelable(InterstitialEventArgument.Content.getKey());
                    if (this.content_listener != null && phContent != null) {
                        this.content_listener.onDisplayedContent(this.contentRequest.get(), phContent);
                        return;
                    }
                    break;
                }
                case Dismissed: {
                    final String string = bundle.getString(InterstitialEventArgument.CloseType.getKey());
                    if (this.content_listener != null && string != null) {
                        this.content_listener.onDismissedContent(this.contentRequest.get(), PHContentRequest.PHDismissType.valueOf(string));
                        return;
                    }
                    break;
                }
                case Failed: {
                    final String string2 = bundle.getString(InterstitialEventArgument.Error.getKey());
                    if (this.content_listener != null && string2 != null) {
                        this.content_listener.onFailedToDisplayContent(this.contentRequest.get(), new PHError(string2));
                        return;
                    }
                    break;
                }
                case UnlockedReward: {
                    final PHReward phReward = (PHReward)bundle.getParcelable(InterstitialEventArgument.Reward.getKey());
                    if (this.reward_listener != null && phReward != null) {
                        this.reward_listener.onUnlockedReward(this.contentRequest.get(), phReward);
                        return;
                    }
                    break;
                }
                case MadePurchase: {
                    final PHPurchase phPurchase = (PHPurchase)bundle.getParcelable(InterstitialEventArgument.Purchase.getKey());
                    if (this.purchase_listener != null && phPurchase != null) {
                        this.purchase_listener.onMadePurchase(this.contentRequest.get(), phPurchase);
                        return;
                    }
                    break;
                }
            }
        }
    }
    
    @Override
    public void onRequesterAttached(final ContentRequester contentRequester) {
        this.contentRequest = new WeakReference<PHContentRequest>((PHContentRequest)contentRequester);
    }
    
    @Override
    public void onRequesterSentMessage(final String s, final Bundle bundle) {
        if (s != null && this.interstitialActivity != null && this.interstitialActivity.get() != null && InterstitialEvent.valueOf(s) == InterstitialEvent.PurchaseResolved) {
            final PHPurchase phPurchase = (PHPurchase)bundle.getParcelable(InterstitialEventArgument.Purchase.getKey());
            PHStringUtil.log("Displayer received purchase resolution: " + phPurchase.resolution);
            this.interstitialActivity.get().onPurchaseResolved(phPurchase);
        }
    }
    
    public enum InterstitialEvent
    {
        Dismissed, 
        Failed, 
        LaunchedURL, 
        Loaded, 
        MadePurchase, 
        PurchaseResolved, 
        ReceivedWebviewDispatch, 
        SentSubrequest, 
        UnlockedReward;
    }
    
    public enum InterstitialEventArgument
    {
        CloseType("closetype_contentview"), 
        Content("content_contentview"), 
        Dispatch("dispatch_contentview"), 
        Error("error_contentview"), 
        LaunchURL("launchurl_contentview"), 
        Purchase("purchase_contentview"), 
        Reward("reward_contentview");
        
        private String key;
        
        private InterstitialEventArgument(final String key) {
            this.key = key;
        }
        
        public String getKey() {
            return this.key;
        }
    }
}
