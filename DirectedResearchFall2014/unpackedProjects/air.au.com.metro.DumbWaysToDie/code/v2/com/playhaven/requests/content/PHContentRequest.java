package v2.com.playhaven.requests.content;

import v2.com.playhaven.requests.base.*;
import java.lang.ref.*;
import android.app.*;
import v2.com.playhaven.interstitial.requestbridge.bridges.*;
import android.graphics.*;
import v2.com.playhaven.configuration.*;
import v2.com.playhaven.listeners.*;
import com.playhaven.src.publishersdk.content.*;
import android.content.*;
import v2.com.playhaven.interstitial.*;
import android.os.*;
import java.io.*;
import v2.com.playhaven.utils.*;
import v2.com.playhaven.views.interstitial.*;
import v2.com.playhaven.interstitial.requestbridge.*;
import v2.com.playhaven.interstitial.requestbridge.base.*;
import java.util.*;
import v2.com.playhaven.requests.open.*;
import v2.com.playhaven.model.*;
import org.json.*;
import v2.com.playhaven.cache.*;
import v2.com.playhaven.requests.crashreport.*;

public class PHContentRequest extends PHAPIRequest implements ContentRequester
{
    private static int PREVIOUS_AD_RANGE;
    private static Long mLastDismissed;
    private WeakReference<Activity> activityContext;
    private WeakReference<Context> applicationContext;
    private ContentRequestToInterstitialBridge bridge;
    private Bitmap close_button_down;
    private Bitmap close_button_up;
    private PHConfiguration config;
    private PHContent content;
    public String contentTag;
    private PHContentRequestListener content_listener;
    private PHRequestState currentContentState;
    public String placement;
    private PHPurchaseListener purchase_listener;
    private PHRewardListener reward_listener;
    private boolean shouldPrecache;
    private PHRequestState targetState;
    
    static /* synthetic */ int[] $SWITCH_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHRequestState() {
        final int[] $switch_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHRequestState = PHContentRequest.$SWITCH_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHRequestState;
        if ($switch_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHRequestState != null) {
            return $switch_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHRequestState;
        }
        final int[] $switch_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHRequestState2 = new int[PHRequestState.values().length];
        while (true) {
            try {
                $switch_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHRequestState2[PHRequestState.DisplayingContent.ordinal()] = 4;
                try {
                    $switch_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHRequestState2[PHRequestState.Done.ordinal()] = 5;
                    try {
                        $switch_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHRequestState2[PHRequestState.Initialized.ordinal()] = 1;
                        try {
                            $switch_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHRequestState2[PHRequestState.Preloaded.ordinal()] = 3;
                            try {
                                $switch_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHRequestState2[PHRequestState.Preloading.ordinal()] = 2;
                                return PHContentRequest.$SWITCH_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHRequestState = $switch_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHRequestState2;
                            }
                            catch (NoSuchFieldError noSuchFieldError) {}
                        }
                        catch (NoSuchFieldError noSuchFieldError2) {}
                    }
                    catch (NoSuchFieldError noSuchFieldError3) {}
                }
                catch (NoSuchFieldError noSuchFieldError4) {}
            }
            catch (NoSuchFieldError noSuchFieldError5) {
                continue;
            }
            break;
        }
    }
    
    static {
        PHContentRequest.PREVIOUS_AD_RANGE = 2000;
    }
    
    public PHContentRequest(final String placement) {
        super();
        this.content_listener = null;
        this.reward_listener = null;
        this.purchase_listener = null;
        this.placement = placement;
        this.setCurrentContentState(PHRequestState.Initialized);
        this.config = new PHConfiguration();
        this.createBridge();
    }
    
    public PHContentRequest(final PHContentRequestListener content_listener, final String s) {
        this(s);
        this.content_listener = content_listener;
    }
    
    private void continueToNextContentState(final Activity activity) {
        switch ($SWITCH_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHRequestState()[this.currentContentState.ordinal()]) {
            default: {}
            case 1: {
                this.loadContent((Context)activity);
            }
            case 3: {
                this.showContentActivityIfReady(activity);
            }
        }
    }
    
    private void createBridge() {
        this.contentTag = this.generateContentActivityTag();
        (this.bridge = new ContentRequestToInterstitialBridge(this.contentTag)).attachContentListener(this.content_listener);
        this.bridge.attachRewardListener(this.reward_listener);
        this.bridge.attachPurchaseListener(this.purchase_listener);
    }
    
    public static boolean didDismissContentWithin(final Long n) {
        return PHContentRequest.mLastDismissed != null && PHContentRequest.mLastDismissed > System.currentTimeMillis() - n;
    }
    
    public static boolean didJustShowAd() {
        return PHContentRequest.mLastDismissed != null && PHContentRequest.mLastDismissed > System.currentTimeMillis() - PHContentRequest.PREVIOUS_AD_RANGE;
    }
    
    public static void displayInterstitialActivity(final PHContent phContent, final Activity activity, final HashMap<String, Bitmap> hashMap, final String s) {
        if (activity != null) {
            final Intent intent = new Intent((Context)activity, (Class)PHContentView.class);
            intent.putExtra(PHContentEnums.IntentArgument.Content.getKey(), (Parcelable)phContent);
            if (hashMap != null && hashMap.size() > 0) {
                intent.putExtra(PHContentEnums.IntentArgument.CustomCloseBtn.getKey(), (Serializable)hashMap);
            }
            intent.putExtra(PHContentEnums.IntentArgument.Tag.getKey(), s);
            PHStringUtil.log("Added all relevant arguments now starting activity through context: " + activity.getClass().getSimpleName());
            activity.startActivity(intent);
        }
    }
    
    private String generateContentActivityTag() {
        return "PHInterstitialActivity: " + this.hashCode() + " ~ " + new Random(System.currentTimeMillis() / 1000L).nextInt();
    }
    
    private void loadContent(final Context context) {
        this.setCurrentContentState(PHRequestState.Preloading);
        super.send(context);
        if (this.content_listener != null) {
            this.content_listener.onSentContentRequest(this);
        }
    }
    
    private void showContentActivityIfReady(final Activity activity) {
        if (this.targetState == PHRequestState.DisplayingContent || this.targetState == PHRequestState.Done) {
            PHStringUtil.log("Attempting to show content interstitial");
            if (this.content_listener != null) {
                this.content_listener.onWillDisplayContent(this, this.content);
            }
            this.setCurrentContentState(PHRequestState.DisplayingContent);
            final HashMap<String, Bitmap> hashMap = new HashMap<String, Bitmap>();
            if (this.close_button_down != null && this.close_button_up != null) {
                hashMap.put(PHCloseButton.CloseButtonState.Up.name(), this.close_button_up);
                hashMap.put(PHCloseButton.CloseButtonState.Down.name(), this.close_button_down);
            }
            BridgeManager.openBridge(this.contentTag, this.bridge);
            BridgeManager.attachRequester(this.contentTag, this);
            displayInterstitialActivity(this.content, activity, hashMap, this.contentTag);
        }
    }
    
    public static void updateLastDismissedAdTime() {
        PHContentRequest.mLastDismissed = System.currentTimeMillis();
    }
    
    @Override
    public String baseURL(final Context context) {
        return super.createAPIURL(context, "/v3/publisher/content/");
    }
    
    public void finish() {
        this.setCurrentContentState(PHRequestState.Done);
        super.finish();
    }
    
    @Override
    public Hashtable<String, String> getAdditionalParams(final Context context) {
        final Hashtable<String, String> hashtable = new Hashtable<String, String>();
        String placement;
        if (this.placement != null) {
            placement = this.placement;
        }
        else {
            placement = "";
        }
        hashtable.put("placement_id", placement);
        String value;
        if (this.targetState == PHRequestState.Preloaded) {
            value = "1";
        }
        else {
            value = "0";
        }
        hashtable.put("preload", value);
        hashtable.put("stime", String.valueOf(PHSession.getInstance(context).getSessionTime()));
        return hashtable;
    }
    
    @Override
    public PHContent getContent() {
        return this.content;
    }
    
    public PHContentRequestListener getContentListener() {
        return this.content_listener;
    }
    
    @Override
    public Context getContext() {
        return this.applicationContext.get();
    }
    
    public PHRequestState getCurrentState() {
        return this.currentContentState;
    }
    
    public PHPurchaseListener getPurchaseListener() {
        return this.purchase_listener;
    }
    
    public PHRewardListener getRewardListener() {
        return this.reward_listener;
    }
    
    @Override
    public String getTag() {
        return this.contentTag;
    }
    
    public PHRequestState getTargetState() {
        return this.targetState;
    }
    
    @Override
    public void handleRequestFailure(final PHError phError) {
        if (this.content_listener != null) {
            this.content_listener.onFailedToDisplayContent(this, new PHError("Could not get interstitial because: " + phError.getMessage()));
        }
    }
    
    @Override
    public void handleRequestSuccess(final JSONObject obj) {
        if (JSONObject.NULL.equals(obj) || obj.length() == 0 || obj.equals("undefined")) {
            if (this.content_listener != null) {
                this.content_listener.onNoContent(this);
            }
        }
        else {
            this.content = new PHContent(obj);
            if (this.content.url == null) {
                this.setCurrentContentState(PHRequestState.Done);
                return;
            }
            this.setCurrentContentState(PHRequestState.Preloaded);
            if (this.content_listener != null) {
                this.content_listener.onReceivedContent(this, this.content);
            }
            if (this.activityContext != null && this.activityContext.get() != null) {
                this.continueToNextContentState(this.activityContext.get());
            }
        }
    }
    
    @Override
    public void onTagChanged(final String contentTag) {
        this.contentTag = contentTag;
    }
    
    public void preload(final Activity referent) {
        if (referent == null) {
            return;
        }
        this.shouldPrecache = this.config.getShouldPrecache((Context)referent);
        this.applicationContext = new WeakReference<Context>(referent.getApplicationContext());
        this.activityContext = new WeakReference<Activity>(referent);
        Label_0063: {
            if (!this.shouldPrecache) {
                break Label_0063;
            }
            synchronized (PHCache.class) {
                PHCache.installCache((Context)referent);
                // monitorexit(PHCache.class)
                this.targetState = PHRequestState.Preloaded;
                this.continueToNextContentState(referent);
            }
        }
    }
    
    @Override
    public void send(final Context context) {
        final Activity referent = (Activity)context;
        this.shouldPrecache = this.config.getShouldPrecache((Context)referent);
        this.applicationContext = new WeakReference<Context>(referent.getApplicationContext());
        this.activityContext = new WeakReference<Activity>(referent);
        try {
            this.targetState = PHRequestState.DisplayingContent;
            this.continueToNextContentState(referent);
        }
        catch (Exception ex) {
            PHCrashReport.reportCrash(ex, "PHContentRequest - send", PHCrashReport.Urgency.critical);
        }
    }
    
    public void setCloseButton(final Bitmap bitmap, final PHCloseButton.CloseButtonState closeButtonState) {
        if (closeButtonState == PHCloseButton.CloseButtonState.Up) {
            this.close_button_up = bitmap;
        }
        else if (closeButtonState == PHCloseButton.CloseButtonState.Down) {
            this.close_button_down = bitmap;
        }
    }
    
    public void setCurrentContentState(final PHRequestState phRequestState) {
        if (phRequestState != null) {
            if (this.currentContentState == null) {
                this.currentContentState = phRequestState;
            }
            if (phRequestState.ordinal() > this.currentContentState.ordinal()) {
                this.currentContentState = phRequestState;
            }
        }
    }
    
    public void setCurrentState(final PHRequestState currentContentState) {
        this.currentContentState = currentContentState;
    }
    
    public void setOnContentListener(final PHContentRequestListener content_listener) {
        this.content_listener = content_listener;
        if (this.bridge != null) {
            this.bridge.attachContentListener(content_listener);
        }
    }
    
    public void setOnPurchaseListener(final PHPurchaseListener purchase_listener) {
        this.purchase_listener = purchase_listener;
        if (this.bridge != null) {
            this.bridge.attachPurchaseListener(purchase_listener);
        }
    }
    
    public void setOnRewardListener(final PHRewardListener reward_listener) {
        this.reward_listener = reward_listener;
        if (this.bridge != null) {
            this.bridge.attachRewardListener(reward_listener);
        }
    }
    
    public void setTargetState(final PHRequestState targetState) {
        this.targetState = targetState;
    }
    
    public enum PHDismissType
    {
        AdSelfDismiss("AdSelfDismiss", 0), 
        ApplicationBackgrounded("ApplicationBackgrounded", 2), 
        CloseButton("CloseButton", 1);
    }
    
    public enum PHRequestState
    {
        DisplayingContent("DisplayingContent", 3), 
        Done("Done", 4), 
        Initialized("Initialized", 0), 
        Preloaded("Preloaded", 2), 
        Preloading("Preloading", 1);
    }
}
