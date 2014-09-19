package com.fusepowered.m1.android;

import java.lang.ref.*;
import android.content.*;
import android.app.*;
import android.widget.*;
import android.view.animation.*;
import android.graphics.drawable.*;
import android.graphics.*;
import android.text.*;
import org.apache.http.*;
import android.os.*;
import android.view.*;

class AdViewOverlayView extends MMLayout
{
    private Button mraidCloseButton;
    CloseTopDrawable mraidCloseDrawable;
    WeakReference<AdViewOverlayActivity> overlayActivityRef;
    private ProgressBar progressBar;
    private boolean progressDone;
    OverlaySettings settings;
    
    AdViewOverlayView(final AdViewOverlayActivity referent, final OverlaySettings settings) {
        super((Context)referent.activity);
        this.overlayActivityRef = new WeakReference<AdViewOverlayActivity>(referent);
        this.adImpl = new AdViewOverlayViewMMAdImpl((Context)referent.activity);
        this.setId(15062);
        this.adImpl.adType = "i";
        this.settings = settings;
        final boolean b = referent.activity instanceof Activity;
        NonConfigurationInstance nonConfigurationInstance = null;
        if (b) {
            nonConfigurationInstance = (NonConfigurationInstance)referent.activity.getLastNonConfigurationInstance();
            if (nonConfigurationInstance != null) {
                this.progressDone = nonConfigurationInstance.progressDone;
                this.adImpl.controller = nonConfigurationInstance.controller;
                this.settings = nonConfigurationInstance.settings;
                if (this.adImpl != null && this.adImpl.controller != null && this.adImpl.controller.webView != null) {
                    this.addView((View)this.adImpl.controller.webView);
                }
                MMSDK.Log.d("Restoring configurationinstance w/ controller= " + nonConfigurationInstance.controller);
            }
            else {
                MMSDK.Log.d("Null configurationinstance ");
            }
        }
        final float density = referent.activity.getResources().getDisplayMetrics().density;
        RelativeLayout$LayoutParams layoutParams;
        if (this.settings.height != 0 && this.settings.width != 0) {
            layoutParams = new RelativeLayout$LayoutParams((int)(density * this.settings.width), (int)(density * this.settings.height));
        }
        else {
            layoutParams = new RelativeLayout$LayoutParams(-1, -1);
        }
        layoutParams.addRule(13);
        this.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        final Integer value = (int)(0.0625f * density * this.settings.shouldResizeOverlay);
        this.setPadding((int)value, (int)value, (int)value, (int)value);
        this.mraidCloseButton = this.initMRaidCloseButton((Context)referent.activity, density);
        if (this.settings.isExpanded() && !this.settings.hasExpandUrl()) {
            this.adImpl.linkForExpansionId = this.settings.creatorAdImplId;
        }
        MMAdImplController.assignAdViewController(this.adImpl);
        if (this.mraidCloseButton != null) {
            this.addView((View)this.mraidCloseButton);
        }
        if (!this.progressDone && !this.settings.isExpanded() && !this.settings.isFromInterstitial()) {
            this.initProgressBar();
        }
        if (this.settings.getIsTransparent()) {
            if (this.adImpl != null && this.adImpl.controller != null && this.adImpl.controller.webView != null) {
                this.adImpl.controller.webView.setBackgroundColor(0);
            }
            this.setBackgroundColor(0);
        }
        else {
            if (this.adImpl != null && this.adImpl.controller != null && this.adImpl.controller.webView != null) {
                this.adImpl.controller.webView.setBackgroundColor(-1);
            }
            this.setBackgroundColor(-1);
        }
        if (this.settings.enableHardwareAccel() && this.adImpl != null && this.adImpl.controller != null && this.adImpl.controller.webView != null) {
            this.adImpl.controller.webView.enableHardwareAcceleration();
        }
        if (nonConfigurationInstance == null) {
            this.animateView();
        }
        this.setUseCustomClose(this.settings.getUseCustomClose());
    }
    
    private void animateView() {
        Object o;
        if (this.settings.getTransition().equals("slideup")) {
            o = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 1.0f, 1, 0.0f);
            MMSDK.Log.v("Translate up");
        }
        else if (this.settings.getTransition().equals("slidedown")) {
            o = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, -1.0f, 1, 0.0f);
            MMSDK.Log.v("Translate down");
        }
        else {
            if (!this.settings.getTransition().equals("explode")) {
                return;
            }
            o = new ScaleAnimation(1.1f, 0.9f, 0.1f, 0.9f, 1, 0.5f, 1, 0.5f);
            MMSDK.Log.v("Explode");
        }
        ((Animation)o).setDuration(this.settings.getTransitionDurationInMillis());
        this.startAnimation((Animation)o);
    }
    
    private RelativeLayout$LayoutParams getCloseAreaParams(final float n) {
        final int n2 = (int)(0.5f + 50.0f * n);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(n2, n2);
        relativeLayout$LayoutParams.addRule(11);
        relativeLayout$LayoutParams.addRule(10);
        return relativeLayout$LayoutParams;
    }
    
    private Button initMRaidCloseButton(final Context context, final float n) {
        final Button button = new Button(context);
        button.setId(301);
        this.mraidCloseDrawable = new CloseTopDrawable(true, n);
        button.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                MMSDK.Log.v("Close button clicked.");
                AdViewOverlayView.this.finishOverlayWithAnimation();
            }
        });
        final RelativeLayout$LayoutParams closeAreaParams = this.getCloseAreaParams(n);
        button.setLayoutParams((ViewGroup$LayoutParams)closeAreaParams);
        button.post((Runnable)new SetCloseButtonTouchDelegateRunnable(button, closeAreaParams.topMargin, closeAreaParams.leftMargin, closeAreaParams.bottomMargin, closeAreaParams.rightMargin));
        return button;
    }
    
    private void initProgressBar() {
        final AdViewOverlayActivity adViewOverlayActivity = this.overlayActivityRef.get();
        if (adViewOverlayActivity != null) {
            (this.progressBar = new ProgressBar((Context)adViewOverlayActivity.activity)).setIndeterminate(true);
            this.progressBar.setVisibility(0);
            final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-2, -2);
            relativeLayout$LayoutParams.addRule(13);
            this.addView((View)this.progressBar, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
        }
    }
    
    private void removeProgressBar() {
        if (!this.progressDone && this.progressBar != null) {
            this.progressDone = true;
            this.progressBar.setVisibility(8);
            this.removeView((View)this.progressBar);
            this.progressBar = null;
        }
    }
    
    @Override
    void addInlineVideo() {
        super.addInlineVideo();
        this.bringMraidCloseToFront();
    }
    
    boolean attachWebViewToLink() {
        return this.adImpl != null && this.adImpl.linkForExpansionId != 0L && MMAdImplController.attachWebViewFromOverlay(this.adImpl);
    }
    
    void bringMraidCloseToFront() {
        if (this.mraidCloseButton != null) {
            this.mraidCloseButton.bringToFront();
        }
    }
    
    @Override
    void closeAreaTouched() {
        this.post((Runnable)new Runnable() {
            @Override
            public void run() {
                AdViewOverlayView.this.finishOverlayWithAnimation();
            }
        });
    }
    
    void finishOverlayWithAnimation() {
        MMSDK.Log.d("Ad overlay closed");
        if (this.getContext() == null) {
            return;
        }
        final AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setAnimationListener((Animation$AnimationListener)new AnimationListener(this));
        alphaAnimation.setFillEnabled(true);
        alphaAnimation.setFillBefore(true);
        alphaAnimation.setFillAfter(true);
        alphaAnimation.setDuration(400L);
        this.startAnimation((Animation)alphaAnimation);
    }
    
    @Override
    void fullScreenVideoLayout() {
        this.removeView((View)this.inlineVideoLayout);
        this.addView((View)this.inlineVideoLayout, (ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
        this.bringMraidCloseToFront();
    }
    
    Object getNonConfigurationInstance() {
        if (this.adImpl != null) {
            MMSDK.Log.d("Saving getNonConfigurationInstance for " + this.adImpl);
            if (this.adImpl.controller != null && this.adImpl.controller.webView != null) {
                this.adImpl.controller.webView.removeFromParent();
            }
        }
        final NonConfigurationInstance nonConfigurationInstance = new NonConfigurationInstance();
        nonConfigurationInstance.progressDone = this.progressDone;
        nonConfigurationInstance.controller = this.adImpl.controller;
        nonConfigurationInstance.settings = this.settings;
        return nonConfigurationInstance;
    }
    
    void getWebContent(final String s) {
        new FetchWebViewContentTask(this, s).execute((Object[])new Void[0]);
    }
    
    void injectJS(final String s) {
        if (this.adImpl.controller != null) {
            this.adImpl.controller.loadUrl(s);
        }
    }
    
    void inlineConfigChange() {
        if (this.inlineVideoView != null && this.inlineVideoLayout != null) {
            this.inlineVideoLayout.setLayoutParams((ViewGroup$LayoutParams)this.inlineVideoView.getCustomLayoutParams());
            this.bringMraidCloseToFront();
        }
    }
    
    void killWebView() {
        BridgeMMSpeechkit.releaseSpeechKit();
        if (this.adImpl != null && this.adImpl.controller != null && this.adImpl.controller.webView != null) {
            this.adImpl.controller.webView.clearFocus();
            this.adImpl.controller.webView.setMraidViewableHidden();
            this.adImpl.controller.webView.onPauseWebView();
        }
    }
    
    void removeSelfAndAll() {
        this.removeAllViews();
        final ViewParent parent = this.getParent();
        if (parent != null && parent instanceof ViewGroup) {
            ((ViewGroup)parent).removeView((View)this);
        }
    }
    
    @Override
    void repositionVideoLayout() {
        this.removeView((View)this.inlineVideoLayout);
        this.addView((View)this.inlineVideoLayout, (ViewGroup$LayoutParams)this.inlineVideoView.getCustomLayoutParams());
        this.bringMraidCloseToFront();
    }
    
    void setUseCustomClose(final boolean useCustomClose) {
        this.settings.setUseCustomClose(useCustomClose);
        final Button mraidCloseButton = this.mraidCloseButton;
        Drawable mraidCloseDrawable;
        if (useCustomClose) {
            mraidCloseDrawable = null;
        }
        else {
            mraidCloseDrawable = this.mraidCloseDrawable;
        }
        mraidCloseButton.setBackgroundDrawable(mraidCloseDrawable);
    }
    
    class AdViewOverlayViewMMAdImpl extends MMLayoutMMAdImpl
    {
        public AdViewOverlayViewMMAdImpl(final Context context) {
            super(context);
            this.mmWebViewClientListener = new OverlayWebViewClientListener(this);
        }
        
        @Override
        MMWebViewClient getMMWebViewClient() {
            MMSDK.Log.d("Returning a client for user: OverlayWebViewClient, adimpl=" + AdViewOverlayView.this.adImpl);
            if (AdViewOverlayView.this.adImpl.linkForExpansionId != 0L || AdViewOverlayView.this.settings.hasExpandUrl()) {
                return this.mmWebViewClient = new BannerExpandedWebViewClient(this.mmWebViewClientListener, new OverlayRedirectionListenerImpl(this));
            }
            return this.mmWebViewClient = new InterstitialWebViewClient(this.mmWebViewClientListener, new OverlayRedirectionListenerImpl(this));
        }
        
        @Override
        boolean isExpandingToUrl() {
            return AdViewOverlayView.this.settings.hasExpandUrl() && !AdViewOverlayView.this.settings.hasLoadedExpandUrl();
        }
        
        @Override
        void removeProgressBar() {
            AdViewOverlayView.this.removeProgressBar();
        }
    }
    
    private static class AnimationListener implements Animation$AnimationListener
    {
        private WeakReference<AdViewOverlayView> overlayRef;
        
        public AnimationListener(final AdViewOverlayView referent) {
            super();
            this.overlayRef = new WeakReference<AdViewOverlayView>(referent);
        }
        
        public void onAnimationEnd(final Animation animation) {
            final AdViewOverlayView adViewOverlayView = this.overlayRef.get();
            if (adViewOverlayView != null) {
                final Activity activity = (Activity)adViewOverlayView.getContext();
                MMSDK.Log.d("Finishing overlay this is in w/ anim finishOverLayWithAnim()");
                activity.finish();
            }
        }
        
        public void onAnimationRepeat(final Animation animation) {
        }
        
        public void onAnimationStart(final Animation animation) {
            final AdViewOverlayView adViewOverlayView = this.overlayRef.get();
            if (adViewOverlayView != null && adViewOverlayView.mraidCloseButton != null) {
                adViewOverlayView.mraidCloseButton.setVisibility(8);
            }
        }
    }
    
    private static class CloseDrawable extends Drawable
    {
        protected boolean enabled;
        protected final Paint paint;
        
        CloseDrawable(final boolean enabled) {
            super();
            this.enabled = true;
            this.enabled = enabled;
            (this.paint = new Paint()).setAntiAlias(true);
            this.paint.setStyle(Paint$Style.STROKE);
        }
        
        public void draw(final Canvas canvas) {
            final Rect copyBounds = this.copyBounds();
            final int n = copyBounds.right - copyBounds.left;
            final int n2 = copyBounds.bottom - copyBounds.top;
            final float strokeWidth = n / 6.0f;
            this.paint.setStrokeWidth(strokeWidth);
            int n3;
            if (this.enabled) {
                n3 = 255;
            }
            else {
                n3 = 80;
            }
            this.paint.setARGB(255, n3, n3, n3);
            canvas.drawLine(strokeWidth / 2.0f, strokeWidth / 2.0f, n - strokeWidth / 2.0f, n2 - strokeWidth / 2.0f, this.paint);
            canvas.drawLine(n - strokeWidth / 2.0f, strokeWidth / 2.0f, strokeWidth / 2.0f, n2 - strokeWidth / 2.0f, this.paint);
        }
        
        public int getOpacity() {
            return -3;
        }
        
        public void setAlpha(final int n) {
        }
        
        public void setColorFilter(final ColorFilter colorFilter) {
        }
    }
    
    private static class CloseTopDrawable extends CloseDrawable
    {
        final float dist;
        final float scale;
        
        CloseTopDrawable(final boolean b, final float scale) {
            super(b);
            this.scale = scale;
            this.dist = 4.0f * scale;
            this.paint.setColor(-16777216);
        }
        
        @Override
        public void draw(final Canvas canvas) {
            final Rect copyBounds = this.copyBounds();
            final float strokeWidth = (copyBounds.right - copyBounds.left) / 10.0f;
            final float n = copyBounds.right - 20.0f * this.scale;
            final float n2 = copyBounds.top + 20.0f * this.scale;
            this.paint.setStrokeWidth(strokeWidth);
            this.paint.setColor(-16777216);
            this.paint.setStyle(Paint$Style.STROKE);
            canvas.drawCircle(n, n2, 12.0f * this.scale, this.paint);
            this.paint.setColor(-1);
            this.paint.setStyle(Paint$Style.FILL_AND_STROKE);
            canvas.drawCircle(n, n2, 10.0f * this.scale, this.paint);
            this.paint.setColor(-16777216);
            canvas.drawCircle(n, n2, 7.0f * this.scale, this.paint);
            this.paint.setColor(-1);
            this.paint.setStrokeWidth(strokeWidth / 2.0f);
            this.paint.setStyle(Paint$Style.STROKE);
            canvas.drawLine(n - this.dist, n2 - this.dist, n + this.dist, n2 + this.dist, this.paint);
            canvas.drawLine(n + this.dist, n2 - this.dist, n - this.dist, n2 + this.dist, this.paint);
        }
    }
    
    private static class FetchWebViewContentTask extends AsyncTask<Void, Void, String>
    {
        private WeakReference<AdViewOverlayView> _overlayViewRef;
        private String baseUrl;
        private boolean cancelVideo;
        
        public FetchWebViewContentTask(final AdViewOverlayView referent, final String baseUrl) {
            super();
            this.baseUrl = baseUrl;
            this._overlayViewRef = new WeakReference<AdViewOverlayView>(referent);
        }
        
        protected String doInBackground(final Void... array) {
            this.cancelVideo = true;
            if (!TextUtils.isEmpty((CharSequence)this.baseUrl)) {
                try {
                    final HttpResponse value = new HttpGetRequest().get(this.baseUrl);
                    if (value != null) {
                        final StatusLine statusLine = value.getStatusLine();
                        if (value != null && statusLine != null && statusLine.getStatusCode() != 404) {
                            final HttpEntity entity = value.getEntity();
                            if (entity != null) {
                                final String convertStreamToString = HttpGetRequest.convertStreamToString(entity.getContent());
                                this.cancelVideo = false;
                                return convertStreamToString;
                            }
                        }
                    }
                }
                catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
            return null;
        }
        
        protected void onPostExecute(final String s) {
            final AdViewOverlayView adViewOverlayView = this._overlayViewRef.get();
            if (adViewOverlayView != null) {
                if (this.cancelVideo) {
                    final AdViewOverlayActivity adViewOverlayActivity = adViewOverlayView.overlayActivityRef.get();
                    if (adViewOverlayActivity != null) {
                        adViewOverlayActivity.finish();
                    }
                    else {
                        adViewOverlayView.removeProgressBar();
                    }
                }
                if (s != null && adViewOverlayView.adImpl != null && adViewOverlayView.adImpl.controller != null) {
                    adViewOverlayView.adImpl.controller.setWebViewContent(s, this.baseUrl);
                }
            }
        }
        
        protected void onPreExecute() {
            final AdViewOverlayView adViewOverlayView = this._overlayViewRef.get();
            if (adViewOverlayView != null && adViewOverlayView.progressBar == null) {
                adViewOverlayView.initProgressBar();
            }
            super.onPreExecute();
        }
    }
    
    private static final class NonConfigurationInstance
    {
        MMAdImplController controller;
        boolean progressDone;
        OverlaySettings settings;
    }
    
    static class OverlayRedirectionListenerImpl extends MMAdImplRedirectionListenerImpl
    {
        public OverlayRedirectionListenerImpl(final MMAdImpl mmAdImpl) {
            super(mmAdImpl);
        }
        
        @Override
        public boolean isExpandingToUrl() {
            final MMAdImpl mmAdImpl = this.adImplRef.get();
            return mmAdImpl != null && mmAdImpl instanceof AdViewOverlayViewMMAdImpl && mmAdImpl.isExpandingToUrl();
        }
    }
    
    private static class OverlayWebViewClientListener extends BasicWebViewClientListener
    {
        OverlayWebViewClientListener(final MMAdImpl mmAdImpl) {
            super(mmAdImpl);
        }
        
        @Override
        public void onPageFinished(final String s) {
            super.onPageFinished(s);
            final MMAdImpl mmAdImpl = this.adImplRef.get();
            if (mmAdImpl != null) {
                mmAdImpl.removeProgressBar();
            }
        }
    }
    
    static class SavedState extends View$BaseSavedState
    {
        public static final Parcelable$Creator<SavedState> CREATOR;
        public Object customInlineLayoutParams;
        String gson;
        
        static {
            CREATOR = (Parcelable$Creator)new Parcelable$Creator<SavedState>() {
                public SavedState createFromParcel(final Parcel parcel) {
                    return new SavedState(parcel);
                }
                
                public SavedState[] newArray(final int n) {
                    return new SavedState[n];
                }
            };
        }
        
        private SavedState(final Parcel parcel) {
            super(parcel);
            this.gson = parcel.readString();
        }
        
        SavedState(final Parcelable parcelable) {
            super(parcelable);
        }
        
        public void writeToParcel(final Parcel parcel, final int n) {
            super.writeToParcel(parcel, n);
            parcel.writeString(this.gson);
        }
    }
    
    private static class SetCloseButtonTouchDelegateRunnable implements Runnable
    {
        int bottom;
        private final Button closeButton;
        int left;
        int right;
        int top;
        
        SetCloseButtonTouchDelegateRunnable(final Button closeButton, final int top, final int left, final int bottom, final int right) {
            super();
            this.closeButton = closeButton;
            this.top = top;
            this.left = left;
            this.bottom = bottom;
            this.right = right;
        }
        
        @Override
        public void run() {
            final Rect rect = new Rect();
            this.closeButton.getHitRect(rect);
            rect.top += this.top;
            rect.right += this.right;
            rect.bottom += this.bottom;
            rect.left += this.left;
            final TouchDelegate touchDelegate = new TouchDelegate(rect, (View)this.closeButton);
            if (View.class.isInstance(this.closeButton.getParent())) {
                ((View)this.closeButton.getParent()).setTouchDelegate(touchDelegate);
            }
        }
    }
}
