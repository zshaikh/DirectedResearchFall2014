package v2.com.playhaven.interstitial;

import android.app.*;
import v2.com.playhaven.interstitial.requestbridge.base.*;
import v2.com.playhaven.configuration.*;
import v2.com.playhaven.interstitial.jsbridge.*;
import android.graphics.*;
import android.content.*;
import v2.com.playhaven.cache.*;
import android.os.*;
import v2.com.playhaven.interstitial.requestbridge.bridges.*;
import v2.com.playhaven.interstitial.requestbridge.*;
import v2.com.playhaven.interstitial.jsbridge.handlers.*;
import android.provider.*;
import java.util.*;
import v2.com.playhaven.requests.content.*;
import v2.com.playhaven.requests.crashreport.*;
import v2.com.playhaven.utils.*;
import v2.com.playhaven.model.*;
import org.json.*;
import v2.com.playhaven.views.interstitial.*;
import android.graphics.drawable.*;
import android.widget.*;
import android.view.*;

public class PHInterstitialActivity extends Activity implements ContentDisplayer, ManipulatableContentDisplayer, Listener
{
    public static final String BROADCAST_INTENT = "PHInterstitialActivityBroadcast";
    private static final String SUB_INTERSTITIAL_SUFFIX = "SubInterstitial";
    private static PHConfiguration config;
    public PHContent content;
    private PHContentView contentView;
    private HashMap<String, Bitmap> customCloseStates;
    private boolean isBackBtnCancelable;
    private boolean isTouchCancelable;
    private PHJSBridge jsBridge;
    private String tag;
    
    public PHInterstitialActivity() {
        super();
        this.customCloseStates = new HashMap<String, Bitmap>();
    }
    
    private boolean contentHasFrame() {
        if (this.content == null) {
            return false;
        }
        final RectF frame = this.content.getFrame(this.getResources().getConfiguration().orientation);
        return frame.width() != 0.0 && frame.height() != 0.0;
    }
    
    private void fitInterstitialWindowToContent() {
        final RectF frame = this.content.getFrame(this.getResources().getConfiguration().orientation);
        if (frame.right == 2.14748365E9f && frame.bottom == 2.14748365E9f) {
            frame.right = -1.0f;
            frame.bottom = -1.0f;
            frame.top = 0.0f;
            frame.left = 0.0f;
            this.getWindow().setFlags(1024, 1024);
            this.getWindow().clearFlags(2048);
        }
        else {
            this.getWindow().clearFlags(1024);
            this.getWindow().addFlags(2048);
        }
        this.getWindow().setLayout((int)frame.width(), (int)frame.height());
    }
    
    private void initCache() {
        if (!PHInterstitialActivity.config.getShouldPrecache((Context)this)) {
            return;
        }
        synchronized (PHCache.class) {
            PHCache.installCache((Context)this);
        }
    }
    
    private void notifyContentRequestOfClose(final PHContentRequest.PHDismissType phDismissType) {
        final Bundle bundle = new Bundle();
        bundle.putString(ContentRequestToInterstitialBridge.InterstitialEventArgument.CloseType.getKey(), phDismissType.toString());
        BridgeManager.sendMessageFromDisplayer(this.tag, ContentRequestToInterstitialBridge.InterstitialEvent.Dismissed.toString(), bundle, (Context)this);
    }
    
    private void notifyContentRequestOfFailure(final PHContentEnums.Error error) {
        final Bundle bundle = new Bundle();
        bundle.putString(ContentRequestToInterstitialBridge.InterstitialEventArgument.Error.getKey(), error.toString());
        BridgeManager.sendMessageFromDisplayer(this.tag, ContentRequestToInterstitialBridge.InterstitialEvent.Failed.toString(), bundle, (Context)this);
    }
    
    private void setupWebviewJSBridge() {
        (this.jsBridge = new PHJSBridge(this)).addRoute("ph://dismiss", new DismissHandler());
        this.jsBridge.addRoute("ph://launch", new LaunchHandler());
        this.jsBridge.addRoute("ph://loadContext", new LoadContextHandler());
        this.jsBridge.addRoute("ph://reward", new RewardHandler());
        this.jsBridge.addRoute("ph://purchase", new PurchaseHandler());
        this.jsBridge.addRoute("ph://subcontent", new SubrequestHandler());
        this.jsBridge.addRoute("ph://closeButton", new CloseButtonHandler());
    }
    
    public void disableClosable() {
        this.contentView.hideCloseButton();
    }
    
    public void dismiss() {
        PHContentRequest.updateLastDismissedAdTime();
        this.contentView.close();
        super.finish();
    }
    
    public void enableClosable() {
        this.contentView.showCloseButton();
    }
    
    public PHContent getContent() {
        return this.content;
    }
    
    public Context getContext() {
        return this.getApplicationContext();
    }
    
    public String getDeviceID() {
        return Settings$System.getString(this.getContentResolver(), "android_id");
    }
    
    public boolean getIsBackBtnCancelable() {
        return this.isBackBtnCancelable;
    }
    
    public boolean getIsTouchCancelable() {
        return this.isTouchCancelable;
    }
    
    public PHContentView getRootView() {
        return this.contentView;
    }
    
    public String getSecret() {
        return PHInterstitialActivity.config.getSecret((Context)this);
    }
    
    public String getTag() {
        return this.tag;
    }
    
    public boolean isClosable() {
        return this.contentView.closeButtonIsShowing();
    }
    
    public void launchNestedContentDisplayer(final PHContent phContent) {
        final String string = String.valueOf(this.tag) + "SubInterstitial" + new Random(System.currentTimeMillis()).nextInt();
        BridgeManager.transferBridge(this.tag, string);
        PHContentRequest.displayInterstitialActivity(phContent, this, null, string);
    }
    
    public void launchSubRequest(final PHSubContentRequest phSubContentRequest) {
        phSubContentRequest.send((Context)this);
    }
    
    public void launchURL(final String s, final PHURLOpener.Listener listener) {
        final PHURLOpener phurlOpener = new PHURLOpener((Context)this, listener);
        phurlOpener.setShouldOpenFinalURL(true);
        phurlOpener.open(s);
    }
    
    public void onAttachedToWindow() {
        try {
            super.onAttachedToWindow();
            if (!this.contentHasFrame()) {
                this.notifyContentRequestOfFailure(PHContentEnums.Error.NoBoundingBox);
                return;
            }
            this.getWindow().setBackgroundDrawable((Drawable)new ColorDrawable(0));
        }
        catch (Exception ex) {
            PHCrashReport.reportCrash(ex, "PHInterstitialActivity - onAttachedToWindow()", PHCrashReport.Urgency.critical);
        }
    }
    
    public void onBackPressed() {
        if (this.getIsBackBtnCancelable()) {
            PHStringUtil.log("The interstitial unit was dismissed by the user using back button");
            this.notifyContentRequestOfClose(PHContentRequest.PHDismissType.CloseButton);
            super.onBackPressed();
        }
    }
    
    public void onClose(final PHContentView phContentView) {
        this.dismiss();
        this.notifyContentRequestOfClose(PHContentRequest.PHDismissType.CloseButton);
    }
    
    public void onCreate(final Bundle bundle) {
        try {
            super.onCreate(bundle);
            PHInterstitialActivity.config = new PHConfiguration();
            this.content = (PHContent)this.getIntent().getParcelableExtra(PHContentEnums.IntentArgument.Content.getKey());
            if (this.content.isEmpty()) {
                this.dismiss();
            }
            BridgeManager.attachDisplayer(this.tag = this.getIntent().getStringExtra(PHContentEnums.IntentArgument.Tag.getKey()), this);
            if (this.getIntent().hasExtra(PHContentEnums.IntentArgument.CustomCloseBtn.getKey())) {
                this.customCloseStates = (HashMap<String, Bitmap>)this.getIntent().getSerializableExtra(PHContentEnums.IntentArgument.CustomCloseBtn.getKey());
            }
            this.setCancelable(false, true);
            this.getWindow().requestFeature(1);
            this.setupWebviewJSBridge();
        }
        catch (Exception ex) {
            PHCrashReport.reportCrash(ex, PHCrashReport.Urgency.critical);
        }
    }
    
    public void onDestroy() {
        super.onDestroy();
        BridgeManager.closeBridge(this.tag);
        this.contentView.cleanup();
    }
    
    public void onPause() {
        super.onPause();
        if (this.isFinishing()) {
            return;
        }
        PHStringUtil.log("The interstitial activity was backgrounded and dismissed itself");
        this.notifyContentRequestOfClose(PHContentRequest.PHDismissType.ApplicationBackgrounded);
        this.dismiss();
    }
    
    public void onPurchaseResolved(final PHPurchase phPurchase) {
        try {
            final JSONObject jsonObject = new JSONObject();
            jsonObject.put("resolution", (Object)phPurchase.resolution.getType());
            this.jsBridge.sendMessageToWebview(phPurchase.callback, jsonObject, null);
        }
        catch (JSONException ex) {
            PHCrashReport.reportCrash((Exception)ex, "PHInterstitialActivity - BroadcastReceiver - onReceive", PHCrashReport.Urgency.critical);
        }
    }
    
    public void onStart() {
        super.onStart();
        this.initCache();
        try {
            final String name = CloseButtonState.Up.name();
            final String name2 = CloseButtonState.Up.name();
            final Bitmap value = this.customCloseStates.get(name);
            BitmapDrawable bitmapDrawable = null;
            if (value != null) {
                bitmapDrawable = new BitmapDrawable(this.getResources(), (Bitmap)this.customCloseStates.get(name));
            }
            final Bitmap value2 = this.customCloseStates.get(name2);
            BitmapDrawable bitmapDrawable2 = null;
            if (value2 != null) {
                bitmapDrawable2 = new BitmapDrawable(this.getResources(), (Bitmap)this.customCloseStates.get(name2));
            }
            this.setContentView((View)(this.contentView = new PHContentView(this, (Context)this, this.content, (PHContentView.Listener)this, this.jsBridge, bitmapDrawable, bitmapDrawable2)), (ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
            this.fitInterstitialWindowToContent();
        }
        catch (Exception ex) {
            PHCrashReport.reportCrash(ex, "PHInterstitialActivity - onStart()", PHCrashReport.Urgency.critical);
        }
    }
    
    public void onStop() {
        super.onStop();
    }
    
    public void onTagChanged(final String tag) {
        if (tag.contains("SubInterstitial")) {
            return;
        }
        this.tag = tag;
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        try {
            if (motionEvent.getAction() == 4) {
                if (this.getIsTouchCancelable()) {
                    this.notifyContentRequestOfClose(PHContentRequest.PHDismissType.CloseButton);
                    this.dismiss();
                }
                return true;
            }
        }
        catch (Exception ex) {
            PHCrashReport.reportCrash(ex, "PHInterstitialActivity - onTouchEvent()", PHCrashReport.Urgency.critical);
        }
        return false;
    }
    
    public void openURL(final String s, final PHURLOpener.Listener listener) {
        final PHURLOpener phurlOpener = new PHURLOpener((Context)this, listener);
        phurlOpener.setShouldOpenFinalURL(false);
        phurlOpener.open(s);
    }
    
    public void sendEventToRequester(final String s, final Bundle bundle) {
        BridgeManager.sendMessageFromDisplayer(this.tag, s, bundle, (Context)this);
    }
    
    public void setCancelable(final boolean isTouchCancelable, final boolean isBackBtnCancelable) {
        this.isTouchCancelable = isTouchCancelable;
        this.isBackBtnCancelable = isBackBtnCancelable;
    }
    
    public void setContent(final PHContent content) {
        if (content != null) {
            this.content = content;
        }
    }
    
    public boolean setIsBackBtnCancelable(final boolean isBackBtnCancelable) {
        return this.isBackBtnCancelable = isBackBtnCancelable;
    }
}
