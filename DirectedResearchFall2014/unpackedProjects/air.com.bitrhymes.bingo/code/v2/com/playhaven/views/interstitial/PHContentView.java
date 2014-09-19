package v2.com.playhaven.views.interstitial;

import android.os.*;
import v2.com.playhaven.model.*;
import android.content.*;
import v2.com.playhaven.interstitial.jsbridge.*;
import android.graphics.drawable.*;
import v2.com.playhaven.utils.*;
import android.widget.*;
import android.view.*;
import v2.com.playhaven.interstitial.webview.*;
import android.webkit.*;

public class PHContentView extends RelativeLayout implements PHCloseButton.Listener
{
    private static final int TIME_BEFORE_SHOW_CLOSE_BUTTON = 4000;
    private final float CLOSE_BUTTON_MARGIN;
    private PHCloseButton closeButton;
    private Handler closeButtonTimerHandler;
    private PHContent content;
    private Listener listener;
    private Runnable showCloseButtonRunnable;
    private PHWebView webview;
    
    public PHContentView(final ManipulatableContentDisplayer manipulatableContentDisplayer, final Context context, final PHContent content, final Listener listener, final PHJSBridge phjsBridge, final BitmapDrawable bitmapDrawable, final BitmapDrawable bitmapDrawable2) {
        super(context);
        this.CLOSE_BUTTON_MARGIN = 2.0f;
        this.listener = listener;
        this.content = content;
        this.setupCloseButton(bitmapDrawable, bitmapDrawable2);
        this.setupWebview(context, phjsBridge, manipulatableContentDisplayer);
    }
    
    private void setupCloseButton(final BitmapDrawable bitmapDrawable, final BitmapDrawable bitmapDrawable2) {
        final float dipToPixels = PHConversionUtils.dipToPixels(this.getContext(), 2.0f);
        if (bitmapDrawable == null || bitmapDrawable2 == null) {
            this.closeButton = new PHCloseButton(this.getContext(), (PHCloseButton.Listener)this);
        }
        else {
            this.closeButton = new PHCloseButton(this.getContext(), (PHCloseButton.Listener)this, bitmapDrawable, bitmapDrawable2);
        }
        final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(-2, -2);
        layoutParams.addRule(11);
        layoutParams.setMargins(0, (int)dipToPixels, (int)dipToPixels, 0);
        this.closeButton.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        this.addView((View)this.closeButton);
        this.closeButton.setVisibility(4);
        this.startShowCloseButtonTimer();
    }
    
    private void setupWebview(final Context context, final PHJSBridge phjsBridge, final ManipulatableContentDisplayer manipulatableContentDisplayer) {
        (this.webview = new PHWebView(this.getContext(), true, new PHWebViewClient(manipulatableContentDisplayer, phjsBridge, this.content), new PHWebViewChrome(), this.content)).setLayoutParams((ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
        phjsBridge.attachWebview(this.webview);
        this.addView((View)this.webview);
        this.webview.loadContentTemplate();
    }
    
    private void startShowCloseButtonTimer() {
        this.closeButtonTimerHandler = new Handler();
        this.showCloseButtonRunnable = new Runnable() {
            @Override
            public void run() {
                PHContentView.this.showCloseButton();
            }
        };
        this.closeButtonTimerHandler.postDelayed(this.showCloseButtonRunnable, 4000L);
    }
    
    public void cleanup() {
        if (this.closeButtonTimerHandler != null) {
            this.closeButtonTimerHandler.removeCallbacks(this.showCloseButtonRunnable);
        }
        this.webview.setWebChromeClient((WebChromeClient)null);
        this.webview.setWebViewClient((WebViewClient)null);
    }
    
    public void close() {
        this.webview.cleanup();
    }
    
    public boolean closeButtonIsShowing() {
        return this.closeButton.getVisibility() == 0;
    }
    
    public void hideCloseButton() {
        if (this.closeButtonTimerHandler != null) {
            this.closeButtonTimerHandler.removeCallbacks(this.showCloseButtonRunnable);
        }
        this.closeButton.setVisibility(8);
    }
    
    public void onClose(final PHCloseButton phCloseButton) {
        if (this.listener != null) {
            this.listener.onClose(this);
        }
    }
    
    public void showCloseButton() {
        this.closeButton.bringToFront();
        this.closeButton.setVisibility(0);
    }
    
    public interface Listener
    {
        void onClose(PHContentView p0);
    }
}
