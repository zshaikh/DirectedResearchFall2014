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
    
    static /* synthetic */ int[] $SWITCH_TABLE$v2$com$playhaven$interstitial$requestbridge$bridges$ContentRequestToInterstitialBridge$InterstitialEvent() {
        final int[] $switch_TABLE$v2$com$playhaven$interstitial$requestbridge$bridges$ContentRequestToInterstitialBridge$InterstitialEvent = ContentRequestToInterstitialBridge.$SWITCH_TABLE$v2$com$playhaven$interstitial$requestbridge$bridges$ContentRequestToInterstitialBridge$InterstitialEvent;
        if ($switch_TABLE$v2$com$playhaven$interstitial$requestbridge$bridges$ContentRequestToInterstitialBridge$InterstitialEvent != null) {
            return $switch_TABLE$v2$com$playhaven$interstitial$requestbridge$bridges$ContentRequestToInterstitialBridge$InterstitialEvent;
        }
        final int[] $switch_TABLE$v2$com$playhaven$interstitial$requestbridge$bridges$ContentRequestToInterstitialBridge$InterstitialEvent2 = new int[InterstitialEvent.values().length];
        while (true) {
            try {
                $switch_TABLE$v2$com$playhaven$interstitial$requestbridge$bridges$ContentRequestToInterstitialBridge$InterstitialEvent2[InterstitialEvent.Dismissed.ordinal()] = 2;
                try {
                    $switch_TABLE$v2$com$playhaven$interstitial$requestbridge$bridges$ContentRequestToInterstitialBridge$InterstitialEvent2[InterstitialEvent.Failed.ordinal()] = 3;
                    try {
                        $switch_TABLE$v2$com$playhaven$interstitial$requestbridge$bridges$ContentRequestToInterstitialBridge$InterstitialEvent2[InterstitialEvent.LaunchedURL.ordinal()] = 9;
                        try {
                            $switch_TABLE$v2$com$playhaven$interstitial$requestbridge$bridges$ContentRequestToInterstitialBridge$InterstitialEvent2[InterstitialEvent.Loaded.ordinal()] = 1;
                            try {
                                $switch_TABLE$v2$com$playhaven$interstitial$requestbridge$bridges$ContentRequestToInterstitialBridge$InterstitialEvent2[InterstitialEvent.MadePurchase.ordinal()] = 5;
                                try {
                                    $switch_TABLE$v2$com$playhaven$interstitial$requestbridge$bridges$ContentRequestToInterstitialBridge$InterstitialEvent2[InterstitialEvent.PurchaseResolved.ordinal()] = 6;
                                    try {
                                        $switch_TABLE$v2$com$playhaven$interstitial$requestbridge$bridges$ContentRequestToInterstitialBridge$InterstitialEvent2[InterstitialEvent.ReceivedWebviewDispatch.ordinal()] = 8;
                                        try {
                                            $switch_TABLE$v2$com$playhaven$interstitial$requestbridge$bridges$ContentRequestToInterstitialBridge$InterstitialEvent2[InterstitialEvent.SentSubrequest.ordinal()] = 7;
                                            try {
                                                $switch_TABLE$v2$com$playhaven$interstitial$requestbridge$bridges$ContentRequestToInterstitialBridge$InterstitialEvent2[InterstitialEvent.UnlockedReward.ordinal()] = 4;
                                                return ContentRequestToInterstitialBridge.$SWITCH_TABLE$v2$com$playhaven$interstitial$requestbridge$bridges$ContentRequestToInterstitialBridge$InterstitialEvent = $switch_TABLE$v2$com$playhaven$interstitial$requestbridge$bridges$ContentRequestToInterstitialBridge$InterstitialEvent2;
                                            }
                                            catch (NoSuchFieldError noSuchFieldError) {}
                                        }
                                        catch (NoSuchFieldError noSuchFieldError2) {}
                                    }
                                    catch (NoSuchFieldError noSuchFieldError3) {}
                                }
                                catch (NoSuchFieldError noSuchFieldError4) {}
                            }
                            catch (NoSuchFieldError noSuchFieldError5) {}
                        }
                        catch (NoSuchFieldError noSuchFieldError6) {}
                    }
                    catch (NoSuchFieldError noSuchFieldError7) {}
                }
                catch (NoSuchFieldError noSuchFieldError8) {}
            }
            catch (NoSuchFieldError noSuchFieldError9) {
                continue;
            }
            break;
        }
    }
    
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
            switch ($SWITCH_TABLE$v2$com$playhaven$interstitial$requestbridge$bridges$ContentRequestToInterstitialBridge$InterstitialEvent()[value.ordinal()]) {
                default: {}
                case 1: {
                    final PHContent phContent = (PHContent)bundle.getParcelable(InterstitialEventArgument.Content.getKey());
                    if (this.content_listener != null && phContent != null) {
                        this.content_listener.onDisplayedContent(this.contentRequest.get(), phContent);
                        return;
                    }
                    break;
                }
                case 2: {
                    final String string = bundle.getString(InterstitialEventArgument.CloseType.getKey());
                    if (this.content_listener != null && string != null) {
                        this.content_listener.onDismissedContent(this.contentRequest.get(), PHContentRequest.PHDismissType.valueOf(string));
                        return;
                    }
                    break;
                }
                case 3: {
                    final String string2 = bundle.getString(InterstitialEventArgument.Error.getKey());
                    if (this.content_listener != null && string2 != null) {
                        this.content_listener.onFailedToDisplayContent(this.contentRequest.get(), new PHError(string2));
                        return;
                    }
                    break;
                }
                case 4: {
                    final PHReward phReward = (PHReward)bundle.getParcelable(InterstitialEventArgument.Reward.getKey());
                    if (this.reward_listener != null && phReward != null) {
                        this.reward_listener.onUnlockedReward(this.contentRequest.get(), phReward);
                        return;
                    }
                    break;
                }
                case 5: {
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
        Dismissed("Dismissed", 1), 
        Failed("Failed", 2), 
        LaunchedURL("LaunchedURL", 8), 
        Loaded("Loaded", 0), 
        MadePurchase("MadePurchase", 4), 
        PurchaseResolved("PurchaseResolved", 5), 
        ReceivedWebviewDispatch("ReceivedWebviewDispatch", 7), 
        SentSubrequest("SentSubrequest", 6), 
        UnlockedReward("UnlockedReward", 3);
    }
    
    public enum InterstitialEventArgument
    {
        CloseType("CloseType", 0, "closetype_contentview"), 
        Content("Content", 1, "content_contentview"), 
        Dispatch("Dispatch", 5, "dispatch_contentview"), 
        Error("Error", 2, "error_contentview"), 
        LaunchURL("LaunchURL", 6, "launchurl_contentview"), 
        Purchase("Purchase", 4, "purchase_contentview"), 
        Reward("Reward", 3, "reward_contentview");
        
        private String key;
        
        private InterstitialEventArgument(final String name, final int ordinal, final String key) {
            this.key = key;
        }
        
        public String getKey() {
            return this.key;
        }
    }
}
