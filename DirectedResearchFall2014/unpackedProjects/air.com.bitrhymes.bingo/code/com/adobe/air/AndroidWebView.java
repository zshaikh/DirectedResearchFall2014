package com.adobe.air;

import android.net.*;
import android.content.*;
import android.net.http.*;
import android.webkit.*;
import android.graphics.*;
import java.io.*;
import java.lang.reflect.*;
import android.content.res.*;
import android.util.*;
import android.view.*;
import android.widget.*;

public class AndroidWebView implements StateChangeCallback
{
    private static final int ERROR_OTHER = 0;
    private static final int ERROR_PROTOCOL_UNSUPPORTED = 3229;
    private static final int FOCUS_DOWN = 3;
    private static final int FOCUS_NONE = 1;
    private static final int FOCUS_UP = 2;
    private static final String LOG_TAG = "AndroidWebView";
    private AIRWindowSurfaceView mAIRSurface;
    private Rect mBounds;
    private Context mContext;
    private WebViewCustomView mCustomViewHolder;
    private Rect mGlobalBounds;
    private long mInternalReference;
    private RelativeLayout mLayout;
    private String mUrl;
    private AndroidWebViewImpl mView;
    
    public AndroidWebView() {
        super();
        this.mBounds = null;
        this.mGlobalBounds = null;
        this.mUrl = null;
        this.mInternalReference = 0L;
        this.mContext = (Context)AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity();
        this.mView = new AndroidWebViewImpl(this.mContext);
        final WebSettings settings = this.mView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setBuiltInZoomControls(true);
        settings.setNeedInitialFocus(true);
        settings.setPluginsEnabled(true);
        this.mView.setScrollbarFadingEnabled(true);
        this.mView.setScrollBarStyle(33554432);
        this.mView.setWebChromeClient((WebChromeClient)new WebChromeClient() {
            private ValueCallback<Uri> mUploadMessage;
            
            public void onHideCustomView() {
                if (AndroidWebView.this.mCustomViewHolder != null) {
                    AndroidWebView.this.mCustomViewHolder.onHideCustomView();
                }
            }
            
            public void onShowCustomView(final View view, final WebChromeClient$CustomViewCallback webChromeClient$CustomViewCallback) {
                if (AndroidWebView.this.mCustomViewHolder == null) {
                    AndroidWebView.this.mCustomViewHolder = new WebViewCustomView();
                }
                AndroidWebView.this.mCustomViewHolder.onShowCustomView(view, webChromeClient$CustomViewCallback);
            }
            
            public void openFileChooser(final ValueCallback<Uri> mUploadMessage) {
                if (this.mUploadMessage != null) {
                    return;
                }
                this.mUploadMessage = mUploadMessage;
                final AndroidActivityWrapper getAndroidActivityWrapper = AndroidActivityWrapper.GetAndroidActivityWrapper();
                getAndroidActivityWrapper.addActivityResultListener((AndroidActivityWrapper.ActivityResultCallback)new ActivityResultCallback() {
                    @Override
                    public void onActivityResult(final int n, final int n2, final Intent intent) {
                        if (n != 5) {
                            return;
                        }
                        if (WebChromeClient.this.mUploadMessage != null) {
                            Object data;
                            if (intent == null || n2 != -1) {
                                data = null;
                            }
                            else {
                                data = intent.getData();
                            }
                            WebChromeClient.this.mUploadMessage.onReceiveValue(data);
                            WebChromeClient.this.mUploadMessage = null;
                        }
                        getAndroidActivityWrapper.removeActivityResultListener((AndroidActivityWrapper.ActivityResultCallback)this);
                    }
                });
                final Intent intent = new Intent("android.intent.action.GET_CONTENT");
                intent.addCategory("android.intent.category.OPENABLE");
                intent.setType("*/*");
                getAndroidActivityWrapper.getActivity().startActivityForResult(Intent.createChooser(intent, (CharSequence)""), 5);
            }
        });
        this.mView.setWebViewClient((WebViewClient)new WebViewClient() {
            private String mLastPageStartedUrl = null;
            private String mNoCompleteForUrl = null;
            private String mUrl = null;
            
            public void doUpdateVisitedHistory(final WebView webView, final String anObject, final boolean b) {
                if (this.mLastPageStartedUrl != null && this.mLastPageStartedUrl.equals(anObject)) {
                    AndroidWebView.this.onLocationChange(anObject);
                }
            }
            
            public void onPageFinished(final WebView webView, final String mUrl) {
                if (mUrl != null && this.mNoCompleteForUrl != null && mUrl.equals(this.mNoCompleteForUrl)) {
                    this.mNoCompleteForUrl = null;
                    return;
                }
                this.mUrl = mUrl;
                AndroidWebView.this.onLoadComplete(mUrl);
            }
            
            public void onPageStarted(final WebView webView, final String s, final Bitmap bitmap) {
                super.onPageStarted(webView, s, bitmap);
                this.mUrl = s;
                this.mLastPageStartedUrl = s;
            }
            
            public void onReceivedError(final WebView webView, final int n, final String s, final String str) {
                this.mNoCompleteForUrl = str;
                if (n == -10) {
                    AndroidWebView.this.onLoadError(str, "[" + n + "] " + s + ": " + str, 3229);
                    return;
                }
                AndroidWebView.this.onLoadError(str, "[" + n + "] " + s + ": " + str, 0);
            }
            
            public void onReceivedSslError(final WebView webView, final SslErrorHandler sslErrorHandler, final SslError sslError) {
                if (this.mUrl == null || sslError.getCertificate() == null) {
                    return;
                }
                new Thread() {
                    final /* synthetic */ String val$url = AndroidWebView$2.this.mUrl;
                    
                    @Override
                    public void run() {
                        final SslCertificate certificate = sslError.getCertificate();
                        boolean b = false;
                        if (certificate != null) {
                            final SSLSecurityDialog sslSecurityDialog = new SSLSecurityDialog();
                            sslSecurityDialog.show(this.val$url, sslError.getCertificate());
                            final boolean equals = sslSecurityDialog.getUserAction().equals("session");
                            b = false;
                            if (equals) {
                                b = true;
                            }
                        }
                        if (b) {
                            sslErrorHandler.proceed();
                            return;
                        }
                        sslErrorHandler.cancel();
                    }
                }.start();
            }
            
            public boolean shouldOverrideUrlLoading(final WebView webView, final String mNoCompleteForUrl) {
                final boolean onLocationChanging = AndroidWebView.this.onLocationChanging(mNoCompleteForUrl);
                if (onLocationChanging) {
                    this.mNoCompleteForUrl = mNoCompleteForUrl;
                }
                return onLocationChanging;
            }
        });
    }
    
    private String decodeURL(final String s) {
        try {
            return new String(URLUtil.decode(s.getBytes()));
        }
        catch (IllegalArgumentException ex) {
            return s;
        }
    }
    
    private native void dispatchFocusIn(final long p0, final int p1);
    
    private native void dispatchFocusOut(final long p0, final int p1);
    
    private native void dispatchLoadComplete(final long p0);
    
    private native void dispatchLoadError(final long p0, final String p1, final int p2);
    
    private native boolean dispatchLocationChange(final long p0);
    
    private native boolean dispatchLocationChanging(final long p0, final String p1);
    
    private void refreshGlobalBounds() {
        if (this.mView == null) {
            return;
        }
        this.mView.post((Runnable)new Runnable() {
            @Override
            public void run() {
                if (AndroidWebView.this.mView == null) {
                    return;
                }
                final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(AndroidWebView.this.mGlobalBounds.width(), AndroidWebView.this.mGlobalBounds.height());
                layoutParams.leftMargin = AndroidWebView.this.mGlobalBounds.left;
                layoutParams.topMargin = AndroidWebView.this.mGlobalBounds.top;
                AndroidWebView.this.mView.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
                AndroidWebView.this.mView.requestLayout();
            }
        });
    }
    
    public void addedToStage(final AIRWindowSurfaceView mairSurface) {
        if (this.mLayout != null) {
            this.removedFromStage();
        }
        this.mAIRSurface = mairSurface;
        final AndroidActivityWrapper activityWrapper = mairSurface.getActivityWrapper();
        activityWrapper.addActivityStateChangeListner((AndroidActivityWrapper.StateChangeCallback)this);
        (this.mLayout = activityWrapper.getOverlaysLayout(true)).addView((View)this.mView, (ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(0, 0));
    }
    
    public void adjustViewBounds(final double n, final double n2, final double n3, final double n4) {
        this.mBounds = new Rect((int)n, (int)n2, (int)(n + n3), (int)(n2 + n4));
        this.mGlobalBounds = this.mBounds;
        this.refreshGlobalBounds();
    }
    
    public void assignFocus(final int n) {
        switch (n) {
            default: {}
            case 1: {
                this.mView.requestFocus();
            }
            case 2: {
                this.mView.pageUp(true);
                this.mView.requestFocus(33);
            }
            case 3: {
                this.mView.pageDown(true);
                this.mView.requestFocus(130);
            }
        }
    }
    
    public boolean canGoBack() {
        return this.mView.canGoBack();
    }
    
    public boolean canGoForward() {
        return this.mView.canGoForward();
    }
    
    public Bitmap captureSnapshot(final int n, final int n2) {
        if (n < 0 || n2 < 0 || (n == 0 && n2 == 0)) {
            return null;
        }
        final Bitmap bitmap = Bitmap.createBitmap(n, n2, Bitmap$Config.ARGB_8888);
        final Canvas canvas = new Canvas(bitmap);
        canvas.translate((float)(-this.mView.getScrollX()), (float)(-this.mView.getScrollY()));
        final boolean horizontalScrollBarEnabled = this.mView.isHorizontalScrollBarEnabled();
        final boolean verticalScrollBarEnabled = this.mView.isVerticalScrollBarEnabled();
        this.mView.setHorizontalScrollBarEnabled(false);
        this.mView.setVerticalScrollBarEnabled(false);
        while (true) {
            try {
                this.mView.draw(canvas);
                this.mView.setHorizontalScrollBarEnabled(horizontalScrollBarEnabled);
                this.mView.setVerticalScrollBarEnabled(verticalScrollBarEnabled);
                return bitmap;
            }
            catch (Exception ex) {
                final Picture capturePicture = this.mView.capturePicture();
                final float scale = this.mView.getScale();
                canvas.scale(scale, scale);
                capturePicture.draw(canvas);
                continue;
            }
            break;
        }
    }
    
    public void clearFocus() {
        this.mView.clearFocus();
        this.mAIRSurface.requestFocus();
    }
    
    public void destroyInternals() {
        this.removedFromStage();
        this.mInternalReference = 0L;
        this.mView.destroy();
        this.mView = null;
    }
    
    public String getCurrentLocation() {
        final String mUrl = this.mUrl;
        if (mUrl == null) {
            return "about:blank";
        }
        return this.decodeURL(mUrl);
    }
    
    public String getPageTitle() {
        String title = this.mView.getTitle();
        if (title == null) {
            title = "";
        }
        return title;
    }
    
    public void goBack() {
        this.mView.goBack();
    }
    
    public void goForward() {
        this.mView.goForward();
    }
    
    public boolean isInTextEditingMode() {
        return this.mView.isInTextEditingMode();
    }
    
    public void loadString(final String s, final String s2) {
        try {
            byte[] bytes = s.getBytes("utf-8");
            int n;
            if (bytes.length >= 3 && bytes[0] == 239 && bytes[1] == 187 && bytes[2] == 191) {
                n = 1;
            }
            else {
                n = 0;
            }
            if (n == 0) {
                final byte[] array = new byte[3 + bytes.length];
                System.arraycopy(bytes, 0, array, 3, bytes.length);
                array[0] = -17;
                array[1] = -69;
                array[2] = -65;
                bytes = array;
            }
            this.mView.loadData(Base64.encodeToString(bytes, 0, bytes.length, 2), "text/html", "base64");
        }
        catch (UnsupportedEncodingException ex) {}
    }
    
    public void loadURL(final String s) {
        if (s == null) {
            return;
        }
        this.mView.loadUrl(s);
    }
    
    @Override
    public void onActivityStateChanged(final ActivityState activityState) {
        while (true) {
            try {
                final Method method = WebView.class.getMethod("isPaused", (Class<?>[])new Class[0]);
                final Method method2 = WebView.class.getMethod("onResume", (Class<?>[])new Class[0]);
                final Method method3 = WebView.class.getMethod("onPause", (Class<?>[])new Class[0]);
                final boolean booleanValue = (boolean)method.invoke(this.mView, new Object[0]);
                switch (activityState) {
                    case RESUMED: {
                        if (booleanValue) {
                            method2.invoke(this.mView, new Object[0]);
                            this.mView.resumeTimers();
                            break;
                        }
                        break;
                    }
                    case PAUSED: {
                        if (!booleanValue) {
                            this.mView.pauseTimers();
                            method3.invoke(this.mView, new Object[0]);
                            break;
                        }
                        break;
                    }
                }
                switch (activityState) {
                    case STARTED: {
                        if (this.mCustomViewHolder == null) {
                            this.mCustomViewHolder = new WebViewCustomView();
                            return;
                        }
                        break;
                    }
                    case DESTROYED: {
                        if (this.mCustomViewHolder != null) {
                            this.mCustomViewHolder.onHideCustomView();
                            this.mCustomViewHolder = null;
                            return;
                        }
                        break;
                    }
                }
            }
            catch (Exception ex) {
                continue;
            }
            break;
        }
    }
    
    @Override
    public void onConfigurationChanged(final Configuration configuration) {
    }
    
    public void onLoadComplete(final String mUrl) {
        if (this.mInternalReference == 0L) {
            return;
        }
        this.mUrl = mUrl;
        this.dispatchLoadComplete(this.mInternalReference);
    }
    
    public void onLoadError(final String mUrl, final String s, final int n) {
        if (this.mInternalReference == 0L) {
            return;
        }
        this.mUrl = mUrl;
        this.dispatchLoadError(this.mInternalReference, s, n);
    }
    
    public boolean onLocationChange(final String mUrl) {
        if (this.mInternalReference == 0L) {
            return true;
        }
        this.mUrl = mUrl;
        return this.dispatchLocationChange(this.mInternalReference);
    }
    
    public boolean onLocationChanging(final String s) {
        return this.mInternalReference == 0L || this.dispatchLocationChanging(this.mInternalReference, this.decodeURL(s));
    }
    
    public void reload() {
        this.mView.reload();
    }
    
    public void removedFromStage() {
        if (this.mLayout != null) {
            this.mLayout.removeView((View)this.mView);
            this.mLayout = null;
            final AndroidActivityWrapper activityWrapper = this.mAIRSurface.getActivityWrapper();
            activityWrapper.didRemoveOverlay();
            activityWrapper.removeActivityStateChangeListner((AndroidActivityWrapper.StateChangeCallback)this);
            this.mAIRSurface.updateFocusedStageWebView(this, false);
        }
        this.mAIRSurface = null;
    }
    
    public void resetGlobalBounds() {
        this.mGlobalBounds = this.mBounds;
        this.refreshGlobalBounds();
    }
    
    public void setInternalReference(final long mInternalReference) {
        this.mInternalReference = mInternalReference;
    }
    
    public void setStageFocus(final int n) {
        this.mView.clearFocus();
        this.mAIRSurface.requestFocus(n);
    }
    
    public void setVisibility(final boolean b) {
        int visibility;
        if (b) {
            visibility = 0;
        }
        else {
            visibility = 4;
        }
        if (this.mView.getVisibility() != visibility) {
            this.mView.setVisibility(visibility);
        }
    }
    
    public void stop() {
        this.mView.stopLoading();
    }
    
    public long updateViewBoundsWithKeyboard(final int n) {
        this.mGlobalBounds = this.mBounds;
        while (true) {
            Label_0168: {
                if (this.mAIRSurface == null || !this.isInTextEditingMode()) {
                    break Label_0168;
                }
                final Rect rect = new Rect(0, 0, this.mAIRSurface.getVisibleBoundWidth(), this.mAIRSurface.getVisibleBoundHeight());
                if (rect.contains(this.mBounds)) {
                    break Label_0168;
                }
                final int min = Math.min(Math.max(0, this.mBounds.top), n);
                final int min2 = Math.min(Math.max(0, this.mBounds.bottom), n);
                if (min == min2) {
                    return 0L;
                }
                final int n2 = min2 - rect.bottom;
                if (n2 <= 0) {
                    return 0L;
                }
                int n3;
                if (n2 <= min) {
                    n3 = n2;
                }
                else {
                    this.mGlobalBounds = new Rect(this.mBounds);
                    this.mGlobalBounds.bottom = min + rect.bottom;
                    n3 = min;
                }
                this.refreshGlobalBounds();
                return n3;
            }
            int n3 = 0;
            continue;
        }
    }
    
    public class AndroidWebViewImpl extends WebView
    {
        private int mLastFocusDirection;
        private View m_focusedChildView;
        private boolean m_hasFocus;
        private boolean m_inRequestChildFocus;
        
        public AndroidWebViewImpl(final Context context) {
            super(context);
            this.m_inRequestChildFocus = false;
            this.m_focusedChildView = null;
            this.m_hasFocus = false;
            this.mLastFocusDirection = 0;
        }
        
        public AndroidWebViewImpl(final Context context, final AttributeSet set) {
            super(context, set);
            this.m_inRequestChildFocus = false;
            this.m_focusedChildView = null;
            this.m_hasFocus = false;
            this.mLastFocusDirection = 0;
        }
        
        public AndroidWebViewImpl(final Context context, final AttributeSet set, final int n) {
            super(context, set, n);
            this.m_inRequestChildFocus = false;
            this.m_focusedChildView = null;
            this.m_hasFocus = false;
            this.mLastFocusDirection = 0;
        }
        
        private void dispatchFocusEvent(final boolean hasFocus, final int n) {
            if (this.m_hasFocus != hasFocus) {
                this.m_hasFocus = hasFocus;
                final AndroidWebView this$0 = AndroidWebView.this;
                if (this$0.mInternalReference != 0L) {
                    if (AndroidWebView.this.mAIRSurface != null) {
                        AndroidWebView.this.mAIRSurface.updateFocusedStageWebView(this$0, this.m_hasFocus);
                    }
                    int n2;
                    if ((n & 0x2) == 0x2) {
                        n2 = 3;
                    }
                    else if ((n & 0x1) == 0x1) {
                        n2 = 2;
                    }
                    else {
                        n2 = 1;
                    }
                    if (hasFocus) {
                        this$0.dispatchFocusIn(AndroidWebView.this.mInternalReference, n2);
                        return;
                    }
                    this$0.dispatchFocusOut(AndroidWebView.this.mInternalReference, n2);
                }
            }
        }
        
        private void setRealFocus(final boolean b) {
            super.onFocusChanged(b, 0, new Rect());
            this.invalidate();
            this.dispatchFocusEvent(b, 0);
        }
        
        public void clearChildFocus(final View view) {
            this.m_inRequestChildFocus = true;
            try {
                super.clearChildFocus(view);
            }
            finally {
                this.m_inRequestChildFocus = false;
            }
        }
        
        public void clearFocus() {
            if (this.m_focusedChildView != null) {
                this.m_focusedChildView.clearFocus();
                if (AutoCompleteTextView.class.isInstance(this.m_focusedChildView)) {
                    AndroidWebView.this.mView.removeView(this.m_focusedChildView);
                }
                this.m_focusedChildView = null;
                this.setRealFocus(false);
                return;
            }
            super.clearFocus();
        }
        
        public boolean dispatchKeyEvent(final KeyEvent keyEvent) {
            boolean dispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
            Label_0080: {
                if (dispatchKeyEvent || keyEvent.getAction() != 0) {
                    break Label_0080;
                }
                int mLastFocusDirection;
                if (keyEvent.getKeyCode() == 19) {
                    mLastFocusDirection = 33;
                }
                else {
                    final int keyCode = keyEvent.getKeyCode();
                    mLastFocusDirection = 0;
                    if (keyCode == 20) {
                        mLastFocusDirection = 130;
                    }
                }
                if (mLastFocusDirection == 0) {
                    break Label_0080;
                }
                AndroidWebView.this.setStageFocus(this.mLastFocusDirection = mLastFocusDirection);
                dispatchKeyEvent = true;
                return dispatchKeyEvent;
            }
            if (!dispatchKeyEvent) {
                return AndroidWebView.this.mAIRSurface.dispatchKeyEvent(keyEvent);
            }
            return dispatchKeyEvent;
        }
        
        public boolean dispatchTouchEvent(final MotionEvent motionEvent) {
            if (!this.m_hasFocus) {
                this.requestFocus();
            }
            return super.dispatchTouchEvent(motionEvent);
        }
        
        public boolean isInTextEditingMode() {
            return this.m_hasFocus && (this.m_focusedChildView != null || this.getChildCount() != 0);
        }
        
        protected void onFocusChanged(final boolean b, final int n, final Rect rect) {
            super.onFocusChanged(b, n, rect);
            if (this.m_inRequestChildFocus && this.m_focusedChildView != null && this.m_hasFocus) {
                return;
            }
            int mLastFocusDirection;
            if (n == 0) {
                mLastFocusDirection = this.mLastFocusDirection;
            }
            else {
                mLastFocusDirection = n;
            }
            this.mLastFocusDirection = 0;
            this.dispatchFocusEvent(b, mLastFocusDirection);
        }
        
        public void requestChildFocus(final View focusedChildView, final View view) {
            this.m_inRequestChildFocus = true;
            if (!this.m_hasFocus) {
                this.setRealFocus(true);
            }
            try {
                super.requestChildFocus(this.m_focusedChildView = focusedChildView, view);
            }
            finally {
                this.m_inRequestChildFocus = false;
            }
        }
    }
    
    public class WebViewCustomView
    {
        private WebChromeClient$CustomViewCallback mCallback;
        private FrameLayout mCustomViewHolder;
        
        public void onHideCustomView() {
            if (this.mCallback == null) {
                return;
            }
            AndroidActivityWrapper.GetAndroidActivityWrapper().getView().setVisibility(0);
            final RelativeLayout overlaysLayout = AndroidActivityWrapper.GetAndroidActivityWrapper().getOverlaysLayout(false);
            if (overlaysLayout != null) {
                ((View)overlaysLayout).setVisibility(0);
            }
            ((ViewGroup)this.mCustomViewHolder.getParent()).removeView((View)this.mCustomViewHolder);
            this.mCustomViewHolder = null;
            this.mCallback.onCustomViewHidden();
            this.mCallback = null;
        }
        
        public void onShowCustomView(final View view, final WebChromeClient$CustomViewCallback mCallback) {
            if (this.mCallback != null) {
                mCallback.onCustomViewHidden();
                return;
            }
            this.mCallback = mCallback;
            final View view2 = AndroidActivityWrapper.GetAndroidActivityWrapper().getView();
            view2.setVisibility(8);
            final RelativeLayout overlaysLayout = AndroidActivityWrapper.GetAndroidActivityWrapper().getOverlaysLayout(false);
            if (overlaysLayout != null) {
                ((View)overlaysLayout).setVisibility(8);
            }
            (this.mCustomViewHolder = new FrameLayout(AndroidWebView.this.mContext) {
                public boolean dispatchKeyEvent(final KeyEvent keyEvent) {
                    if (super.dispatchKeyEvent(keyEvent)) {
                        return true;
                    }
                    if (keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 4) {
                        WebViewCustomView.this.onHideCustomView();
                        return true;
                    }
                    return false;
                }
            }).setBackgroundColor(-16777216);
            ((ViewGroup)view2.getParent()).addView((View)this.mCustomViewHolder, (ViewGroup$LayoutParams)new FrameLayout$LayoutParams(-1, -1));
            this.mCustomViewHolder.addView(view, (ViewGroup$LayoutParams)new FrameLayout$LayoutParams(-1, -1, 17));
            this.mCustomViewHolder.bringToFront();
            this.mCustomViewHolder.requestFocus();
        }
    }
}
