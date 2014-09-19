package com.tapjoy;

import com.tapjoy.mraid.view.*;
import java.util.zip.*;
import android.graphics.*;
import java.util.jar.*;
import android.content.*;
import android.app.*;
import java.io.*;
import java.util.*;
import com.tapjoy.mraid.listener.*;
import android.graphics.drawable.*;
import android.widget.*;
import android.os.*;
import android.net.*;
import android.util.*;
import android.content.res.*;
import android.view.*;
import android.webkit.*;
import android.annotation.*;

@SuppressLint({ "SetJavaScriptEnabled" })
public class TJAdUnitView extends Activity
{
    private static final int CLOSE_BUTTON_OFFSET = 10;
    private static final String TAG = "TJAdUnitView";
    protected TJAdUnitJSBridge bridge;
    private String callbackID;
    private String connectivityErrorMessage;
    private TJEvent event;
    private TJEventData eventData;
    protected int historyIndex;
    private boolean isLegacyView;
    protected RelativeLayout layout;
    protected String offersURL;
    protected boolean pauseCalled;
    private ProgressBar progressBar;
    protected boolean redirectedActivity;
    protected boolean skipOfferWall;
    protected String url;
    private int viewType;
    protected MraidView webView;
    
    public TJAdUnitView() {
        super();
        this.layout = null;
        this.webView = null;
        this.offersURL = null;
        this.url = null;
        this.pauseCalled = false;
        this.skipOfferWall = false;
        this.viewType = 0;
        this.isLegacyView = false;
        this.historyIndex = 0;
        this.connectivityErrorMessage = "A connection error occurred loading this content.";
    }
    
    private void closeView(final CLOSE_TYPES close_TYPES) {
        switch (close_TYPES) {
            default: {}
            case HANDLE_BACK_BUTTON: {
                this.handleBackKey();
            }
            case HANDLE_CLOSE_BUTTON: {
                this.finishActivity();
            }
        }
    }
    
    private void finishActivity() {
        if (this.viewType == 4) {
            this.finishWithResult("offer_wall");
        }
        else if (this != null) {
            this.finish();
        }
    }
    
    private void finishWithResult(final String s) {
        final Intent intent = new Intent();
        intent.putExtra("result", s);
        this.setResult(-1, intent);
        this.finish();
    }
    
    private Bitmap getCloseBitmap() {
        try {
            String name = TJAdUnitView.class.getClassLoader().getResource("com/tapjoy/res/tj_close_button.png").getFile();
            if (name.startsWith("jar:")) {
                name = name.substring(4);
            }
            if (name.startsWith("file:")) {
                name = name.substring(5);
            }
            final int index = name.indexOf("!");
            if (index > 0) {
                name = name.substring(0, index);
            }
            final JarFile jarFile = new JarFile(name);
            final JarEntry jarEntry = jarFile.getJarEntry("com/tapjoy/res/tj_close_button.png");
            final InputStream inputStream = jarFile.getInputStream(jarEntry);
            final BitmapFactory$Options bitmapFactory$Options = new BitmapFactory$Options();
            bitmapFactory$Options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(inputStream, (Rect)null, bitmapFactory$Options);
            final InputStream inputStream2 = jarFile.getInputStream(jarEntry);
            final Bitmap decodeStream = BitmapFactory.decodeStream(inputStream2);
            final float deviceScreenDensityScale = TapjoyConnectCore.getDeviceScreenDensityScale();
            final Bitmap scaledBitmap = Bitmap.createScaledBitmap(decodeStream, (int)(deviceScreenDensityScale * bitmapFactory$Options.outWidth), (int)(deviceScreenDensityScale * bitmapFactory$Options.outHeight), true);
            inputStream2.close();
            return scaledBitmap;
        }
        catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }
    
    private void handleBackKey() {
        this.bridge.shouldClose = false;
        if (!this.isLegacyView || !this.webView.canGoBack()) {
            this.finishActivity();
            return;
        }
        if (this.webView.copyBackForwardList().getCurrentIndex() == this.historyIndex) {
            if (this != null) {
                this.finish();
            }
            return;
        }
        this.webView.goBack();
    }
    
    private void handleTJVideoURL(final String s) {
        final Map<String, String> convertURLParams = TapjoyUtil.convertURLParams(s.substring(s.indexOf("://") + "://".length()), true);
        final String s2 = convertURLParams.get("video_id");
        final String str = convertURLParams.get("amount");
        final String str2 = convertURLParams.get("currency_name");
        final String str3 = convertURLParams.get("click_url");
        final String str4 = convertURLParams.get("video_complete_url");
        final String str5 = convertURLParams.get("video_url");
        TapjoyLog.i("TJAdUnitView", "video_id: " + s2);
        TapjoyLog.i("TJAdUnitView", "amount: " + str);
        TapjoyLog.i("TJAdUnitView", "currency_name: " + str2);
        TapjoyLog.i("TJAdUnitView", "click_url: " + str3);
        TapjoyLog.i("TJAdUnitView", "video_complete_url: " + str4);
        TapjoyLog.i("TJAdUnitView", "video_url: " + str5);
        if (TapjoyVideo.getInstance().startVideo(s2, str2, str, str3, str4, str5)) {
            TapjoyLog.i("TJAdUnitView", "Video started successfully");
            return;
        }
        TapjoyLog.e("TJAdUnitView", "Unable to play video: " + s2);
        final AlertDialog create = new AlertDialog$Builder((Context)this).setTitle((CharSequence)"").setMessage((CharSequence)"Unable to play video.").setPositiveButton((CharSequence)"OK", (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
            public void onClick(final DialogInterface dialogInterface, final int n) {
                dialogInterface.dismiss();
            }
        }).create();
        try {
            create.show();
        }
        catch (Exception ex) {
            TapjoyLog.e("TJAdUnitView", "e: " + ex.toString());
        }
    }
    
    public void finish() {
        if (this.viewType != 1 && this.viewType != 4) {
            final Intent intent = new Intent();
            intent.putExtra("result", (Serializable)Boolean.TRUE);
            intent.putExtra("callback_id", this.callbackID);
            this.setResult(-1, intent);
        }
        super.finish();
    }
    
    public void handleClose(final CLOSE_TYPES close_TYPES) {
        if (this.webView.videoPlaying()) {
            this.webView.videoViewCleanup();
            return;
        }
        if (!this.bridge.customClose) {
            this.closeView(close_TYPES);
            return;
        }
        TapjoyLog.i("TJAdUnitView", "customClose");
        if (this.bridge.shouldClose) {
            this.closeView(close_TYPES);
            return;
        }
        TapjoyLog.i("TJAdUnitView", "closeRequested...");
        this.bridge.closeRequested();
        new Timer().schedule(new TimerTask() {
            @Override
            public void run() {
                if (TJAdUnitView.this.bridge.shouldClose) {
                    TapjoyLog.i("TJAdUnitView", "customClose timeout");
                    TJAdUnitView.this.closeView(close_TYPES);
                }
            }
        }, 1000L);
    }
    
    public void handleWebViewOnPageFinished(final WebView webView, final String s) {
        TapjoyLog.i("TJAdUnitView", "handleWebViewOnPageFinished");
    }
    
    public void handleWebViewOnReceivedError(final WebView webView, final int n, final String s, final String s2) {
        TapjoyLog.i("TJAdUnitView", "handleWebViewError");
        new AlertDialog$Builder((Context)this).setMessage((CharSequence)this.connectivityErrorMessage).setPositiveButton((CharSequence)"OK", (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
            public void onClick(final DialogInterface dialogInterface, final int n) {
                dialogInterface.cancel();
            }
        }).create().show();
    }
    
    protected void initUI() {
        TapjoyLog.i("TJAdUnitView", "initUI");
        boolean b = false;
        final Bundle extras = this.getIntent().getExtras();
        if (extras != null) {
            if (extras.getString("DISPLAY_AD_URL") != null) {
                this.skipOfferWall = true;
                this.offersURL = extras.getString("DISPLAY_AD_URL");
            }
            else if (extras.getSerializable("URL_PARAMS") != null) {
                this.skipOfferWall = false;
                final HashMap obj = (HashMap)extras.getSerializable("URL_PARAMS");
                TapjoyLog.i("TJAdUnitView", "urlParams: " + obj);
                this.offersURL = TapjoyConnectCore.getHostURL() + "get_offers/webpage?" + TapjoyUtil.convertURLParams(obj, false);
            }
            this.eventData = (TJEventData)extras.getSerializable("tjevent");
            if (this.eventData != null) {
                this.event = TJEventManager.get(this.eventData.guid);
            }
            this.viewType = extras.getInt("view_type");
            final String string = extras.getString("html");
            final String string2 = extras.getString("base_url");
            this.url = extras.getString("url");
            this.callbackID = extras.getString("callback_id");
            this.isLegacyView = extras.getBoolean("legacy_view");
            if (this.webView == null) {
                this.webView = new MraidView((Context)this);
                this.webView.getSettings().setJavaScriptEnabled(true);
                this.webView.setListener(new TJAdUnitViewListener());
                if (this.viewType == 1) {
                    if (this.event != null) {
                        this.webView.loadDataWithBaseURL(this.eventData.baseURL, this.eventData.httpResponse, "text/html", "utf-8", null);
                    }
                    this.webView.setVisibility(4);
                    this.event.getCallback().contentDidShow(this.event);
                }
                else {
                    if (string != null && string.length() > 0) {
                        TapjoyLog.i("TJAdUnitView", "HTML data");
                        if (this.isLegacyView) {
                            this.webView.loadDataWithBaseURL(string2, string, "text/html", "utf-8", null);
                        }
                        else {
                            this.webView.loadDataWithBaseURL(null, string, "text/html", "utf-8", null);
                        }
                    }
                    else if (this.url != null) {
                        TapjoyLog.i("TJAdUnitView", "Load URL: " + this.url);
                        this.webView.loadUrl(this.url);
                    }
                    else if (this.offersURL != null) {
                        TapjoyLog.i("TJAdUnitView", "Load Offer Wall URL");
                        this.webView.loadUrl(this.offersURL);
                    }
                    b = true;
                }
                this.bridge = new TJAdUnitJSBridge((Context)this, this.webView, this.eventData);
                if (Build$VERSION.SDK_INT >= 11) {
                    this.getWindow().setFlags(16777216, 16777216);
                }
                this.getWindow().setBackgroundDrawable((Drawable)new ColorDrawable(1610612736));
                final ViewGroup$LayoutParams viewGroup$LayoutParams = new ViewGroup$LayoutParams(-1, -1);
                (this.layout = new RelativeLayout((Context)this)).setLayoutParams(viewGroup$LayoutParams);
                if (this.viewType == 1) {
                    this.layout.setBackgroundColor(0);
                    this.layout.getBackground().setAlpha(0);
                }
                else {
                    this.layout.setBackgroundColor(-1);
                    this.layout.getBackground().setAlpha(255);
                }
                this.webView.setLayoutParams(viewGroup$LayoutParams);
                if (this.webView.getParent() != null) {
                    ((ViewGroup)this.webView.getParent()).removeView((View)this.webView);
                }
                this.layout.addView((View)this.webView, -1, -1);
                this.setContentView((View)this.layout);
                if (this.isLegacyView && b) {
                    (this.progressBar = new ProgressBar((Context)this, (AttributeSet)null, 16842874)).setVisibility(0);
                    final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(-2, -2);
                    layoutParams.addRule(13);
                    this.progressBar.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
                    this.layout.addView((View)this.progressBar);
                }
                if (!this.webView.isMraid()) {
                    final ImageButton imageButton = new ImageButton((Context)this);
                    imageButton.setImageBitmap(this.getCloseBitmap());
                    imageButton.setBackgroundColor(16777215);
                    imageButton.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
                        public void onClick(final View view) {
                            TJAdUnitView.this.handleClose(CLOSE_TYPES.HANDLE_CLOSE_BUTTON);
                        }
                    });
                    final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-2, -2);
                    relativeLayout$LayoutParams.addRule(10);
                    relativeLayout$LayoutParams.addRule(11);
                    final int n = (int)(-10.0f * TapjoyConnectCore.getDeviceScreenDensityScale());
                    relativeLayout$LayoutParams.setMargins(0, n, n, 0);
                    this.layout.addView((View)imageButton, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
                }
            }
        }
    }
    
    protected boolean isNetworkAvailable() {
        final ConnectivityManager connectivityManager = (ConnectivityManager)this.getSystemService("connectivity");
        return connectivityManager.getActiveNetworkInfo() != null && connectivityManager.getActiveNetworkInfo().isAvailable() && connectivityManager.getActiveNetworkInfo().isConnected();
    }
    
    protected void onActivityResult(final int i, final int j, final Intent intent) {
        super.onActivityResult(i, j, intent);
        Log.i("TJAdUnitView", "onActivityResult requestCode:" + i + ", resultCode: " + j);
        Bundle extras = null;
        if (intent != null) {
            extras = intent.getExtras();
        }
        if (extras != null && extras.getString("callback_id") != null) {
            TapjoyLog.i("TJAdUnitView", "onActivityResult extras: " + extras.keySet());
            this.bridge.invokeJSCallback(extras.getString("callback_id"), extras.getBoolean("result"), extras.getString("result_string1"), extras.getString("result_string2"));
        }
    }
    
    public void onConfigurationChanged(final Configuration configuration) {
        TapjoyLog.i("TJAdUnitView", "onConfigurationChanged");
        super.onConfigurationChanged(configuration);
        this.initUI();
    }
    
    protected void onCreate(final Bundle obj) {
        if (Build$VERSION.SDK_INT < 11) {
            this.setTheme(16973839);
        }
        else {
            this.requestWindowFeature(1);
            this.getWindow().setFlags(1024, 1024);
        }
        TapjoyLog.i("TJAdUnitView", "TJAdUnitView onCreate: " + obj);
        super.onCreate(obj);
        this.initUI();
    }
    
    protected void onDestroy() {
        super.onDestroy();
        TapjoyLog.i("TJAdUnitView", "onDestroy isFinishing: " + this.isFinishing());
        if (!this.isFinishing()) {
            return;
        }
        if (this.viewType == 1) {
            this.bridge.destroy();
            if (this.event != null) {
                this.event.getCallback().contentDidDisappear(this.event);
            }
            TJEventManager.remove(this.eventData.guid);
        }
        if (this.webView == null) {
            return;
        }
        while (true) {
            try {
                WebView.class.getMethod("onPause", (Class<?>[])new Class[0]).invoke(this.webView, new Object[0]);
                try {
                    this.webView = null;
                }
                catch (Exception ex) {}
            }
            catch (Exception ex2) {
                continue;
            }
            break;
        }
    }
    
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        if (n == 4) {
            this.handleClose(CLOSE_TYPES.HANDLE_BACK_BUTTON);
            return true;
        }
        return super.onKeyDown(n, keyEvent);
    }
    
    protected void onPause() {
        super.onPause();
        this.pauseCalled = true;
        try {
            WebView.class.getMethod("onPause", (Class<?>[])new Class[0]).invoke(this.webView, new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    protected void onRestoreInstanceState(final Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.webView.restoreState(bundle);
    }
    
    protected void onResume() {
        super.onResume();
        while (true) {
            try {
                WebView.class.getMethod("onResume", (Class<?>[])new Class[0]).invoke(this.webView, new Object[0]);
                if (this.viewType == 1 && this.bridge.didLaunchOtherActivity) {
                    TapjoyLog.i("TJAdUnitView", "onResume bridge.didLaunchOtherActivity callbackID: " + this.bridge.otherActivityCallbackID);
                    this.bridge.invokeJSCallback(this.bridge.otherActivityCallbackID, Boolean.TRUE);
                    this.bridge.didLaunchOtherActivity = false;
                }
            }
            catch (Exception ex) {
                continue;
            }
            break;
        }
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.webView.saveState(bundle);
    }
    
    private enum CLOSE_TYPES
    {
        HANDLE_BACK_BUTTON, 
        HANDLE_CLOSE_BUTTON;
    }
    
    private class TJAdUnitViewListener implements MraidViewListener
    {
        @Override
        public boolean onClose() {
            TJAdUnitView.this.finish();
            return false;
        }
        
        @TargetApi(8)
        @Override
        public boolean onConsoleMessage(final ConsoleMessage consoleMessage) {
            if (TJAdUnitView.this.bridge.shouldClose) {
                final String[] array = { "Uncaught", "uncaught", "Error", "error", "not defined" };
                TapjoyLog.i("TJAdUnitView", "shouldClose...");
                for (int length = array.length, i = 0; i < length; ++i) {
                    if (consoleMessage.message().contains(array[i])) {
                        TJAdUnitView.this.handleBackKey();
                    }
                }
            }
            return true;
        }
        
        @Override
        public boolean onEventFired() {
            return false;
        }
        
        @Override
        public boolean onExpand() {
            return false;
        }
        
        @Override
        public boolean onExpandClose() {
            return false;
        }
        
        @Override
        public void onPageFinished(final WebView webView, final String s) {
            TJAdUnitView.this.handleWebViewOnPageFinished(webView, s);
            if (TJAdUnitView.this.isLegacyView) {
                TJAdUnitView.this.progressBar.setVisibility(8);
            }
            TJAdUnitView.this.bridge.display();
            if (TJAdUnitView.this.webView != null && TJAdUnitView.this.webView.isMraid()) {
                TJAdUnitView.this.bridge.allowRedirect = false;
            }
        }
        
        @Override
        public void onPageStarted(final WebView webView, final String str, final Bitmap bitmap) {
            TapjoyLog.i("TJAdUnitView", "onPageStarted: " + str);
            if (TJAdUnitView.this.isLegacyView) {
                TJAdUnitView.this.progressBar.setVisibility(0);
                TJAdUnitView.this.progressBar.bringToFront();
            }
            if (TJAdUnitView.this.bridge != null) {
                TJAdUnitView.this.bridge.allowRedirect = true;
                TJAdUnitView.this.bridge.customClose = false;
                TJAdUnitView.this.bridge.shouldClose = false;
            }
        }
        
        @Override
        public boolean onReady() {
            return false;
        }
        
        @Override
        public void onReceivedError(final WebView webView, final int n, final String s, final String s2) {
            TJAdUnitView.this.handleWebViewOnReceivedError(webView, n, s, s2);
        }
        
        @Override
        public boolean onResize() {
            return false;
        }
        
        @Override
        public boolean onResizeClose() {
            return false;
        }
        
        @TargetApi(9)
        @Override
        public boolean shouldOverrideUrlLoading(final WebView webView, final String s) {
            if (!TJAdUnitView.this.isNetworkAvailable()) {
                TJAdUnitView.this.handleWebViewOnReceivedError(webView, 0, "Connection not properly established", s);
                return true;
            }
            TJAdUnitView.this.redirectedActivity = false;
            TapjoyLog.i("TJAdUnitView", "interceptURL: " + s);
            if (TJAdUnitView.this.webView != null && TJAdUnitView.this.webView.isMraid() && s.contains("mraid")) {
                return false;
            }
            if (TJAdUnitView.this.viewType == 4 && s.contains("offer_wall")) {
                TJAdUnitView.this.finishWithResult("offer_wall");
                return true;
            }
            if (TJAdUnitView.this.viewType == 4 && s.contains("tjvideo")) {
                TJAdUnitView.this.finishWithResult("tjvideo");
                return true;
            }
            if (s.startsWith("tjvideo://")) {
                TJAdUnitView.this.handleTJVideoURL(s);
                return true;
            }
            if (s.contains("showOffers")) {
                TapjoyLog.i("TJAdUnitView", "showOffers");
                new TJCOffers((Context)TJAdUnitView.this).showOffers(null);
                return true;
            }
            if (s.contains("dismiss")) {
                TapjoyLog.i("TJAdUnitView", "dismiss");
                TJAdUnitView.this.finish();
                return true;
            }
            if (s.startsWith("http://ok")) {
                TapjoyLog.i("TJAdUnitView", "http://ok");
                TJAdUnitView.this.finish();
                return true;
            }
            if (s.contains("ws.tapjoyads.com") || s.contains("tjyoutubevideo=true") || s.contains(TapjoyConnectCore.getRedirectDomain())) {
                TapjoyLog.i("TJAdUnitView", "Open redirecting URL:" + s);
                ((MraidView)webView).loadUrlStandard(s);
                return true;
            }
            if (TJAdUnitView.this.bridge.allowRedirect) {
                TJAdUnitView.this.redirectedActivity = true;
                return false;
            }
            webView.loadUrl(s);
            return true;
        }
    }
}
