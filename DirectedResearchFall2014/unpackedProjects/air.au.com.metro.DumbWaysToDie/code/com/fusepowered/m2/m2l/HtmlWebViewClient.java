package com.fusepowered.m2.m2l;

import android.net.*;
import android.content.*;
import android.util.*;
import android.webkit.*;
import android.graphics.*;

class HtmlWebViewClient extends WebViewClient
{
    static final String MOPUB_FAIL_LOAD = "mopub://failLoad";
    static final String MOPUB_FINISH_LOAD = "mopub://finishLoad";
    private final String mClickthroughUrl;
    private final Context mContext;
    private BaseHtmlWebView mHtmlWebView;
    private HtmlWebViewListener mHtmlWebViewListener;
    private final String mRedirectUrl;
    
    HtmlWebViewClient(final HtmlWebViewListener mHtmlWebViewListener, final BaseHtmlWebView mHtmlWebView, final String mClickthroughUrl, final String mRedirectUrl) {
        super();
        this.mHtmlWebViewListener = mHtmlWebViewListener;
        this.mHtmlWebView = mHtmlWebView;
        this.mClickthroughUrl = mClickthroughUrl;
        this.mRedirectUrl = mRedirectUrl;
        this.mContext = mHtmlWebView.getContext();
    }
    
    private boolean canHandleApplicationUrl(final String str) {
        if (!Utils.deviceCanHandleIntent(this.mContext, new Intent("android.intent.action.VIEW", Uri.parse(str)))) {
            Log.w("MoPub", "Could not handle application specific action: " + str + ". " + "You may be running in the emulator or another device which does not " + "have the required application.");
            return false;
        }
        return true;
    }
    
    private boolean executeIntent(final Context context, final Intent intent, final String s) {
        try {
            context.startActivity(intent);
            return true;
        }
        catch (Exception ex) {
            String s2;
            if (s != null) {
                s2 = s;
            }
            else {
                s2 = "Unable to start intent.";
            }
            Log.d("MoPub", s2);
            return false;
        }
    }
    
    private void handleCustomIntentFromUri(final Uri obj) {
        try {
            final String queryParameter = obj.getQueryParameter("fnc");
            final String queryParameter2 = obj.getQueryParameter("data");
            final Intent intent = new Intent(queryParameter);
            intent.addFlags(268435456);
            intent.putExtra("com.mopub.intent.extra.AD_CLICK_DATA", queryParameter2);
            this.launchIntentForUserClick(this.mContext, intent, "Could not handle custom intent: " + queryParameter + ". Is your intent spelled correctly?");
        }
        catch (UnsupportedOperationException ex) {
            Log.w("MoPub", "Could not handle custom intent with uri: " + obj);
        }
    }
    
    private boolean handleNativeBrowserScheme(final String s) {
        if (!this.isNativeBrowserScheme(s)) {
            return false;
        }
        final Uri parse = Uri.parse(s);
        String queryParameter;
        try {
            queryParameter = parse.getQueryParameter("url");
            if (!"navigate".equals(parse.getHost()) || queryParameter == null) {
                return false;
            }
        }
        catch (UnsupportedOperationException ex) {
            Log.w("MoPub", "Could not handle url: " + s);
            return false;
        }
        final Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(queryParameter));
        intent.setFlags(268435456);
        this.launchIntentForUserClick(this.mContext, intent, "Could not handle intent with URI: " + s + ". Is this intent supported on your phone?");
        return true;
    }
    
    private boolean handlePhoneScheme(final String str) {
        if (!this.isPhoneScheme(str)) {
            return false;
        }
        final Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.addFlags(268435456);
        this.launchIntentForUserClick(this.mContext, intent, "Could not handle intent with URI: " + str + ". Is this intent supported on your phone?");
        return true;
    }
    
    private boolean handleSpecialMoPubScheme(final String s) {
        if (!this.isSpecialMoPubScheme(s)) {
            return false;
        }
        final Uri parse = Uri.parse(s);
        final String host = parse.getHost();
        if ("finishLoad".equals(host)) {
            this.mHtmlWebViewListener.onLoaded(this.mHtmlWebView);
        }
        else if ("close".equals(host)) {
            this.mHtmlWebViewListener.onCollapsed();
        }
        else if ("failLoad".equals(host)) {
            this.mHtmlWebViewListener.onFailed(MoPubErrorCode.UNSPECIFIED);
        }
        else if ("custom".equals(host)) {
            this.handleCustomIntentFromUri(parse);
        }
        return true;
    }
    
    private boolean isNativeBrowserScheme(final String s) {
        return s.startsWith("mopubnativebrowser://");
    }
    
    private boolean isPhoneScheme(final String s) {
        return s.startsWith("tel:") || s.startsWith("voicemail:") || s.startsWith("sms:") || s.startsWith("mailto:") || s.startsWith("geo:") || s.startsWith("google.streetview:");
    }
    
    private boolean isSpecialMoPubScheme(final String s) {
        return s.startsWith("mopub://");
    }
    
    private boolean isWebSiteUrl(final String s) {
        return s.startsWith("http://") || s.startsWith("https://");
    }
    
    private boolean launchApplicationUrl(final String s) {
        final Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
        intent.addFlags(268435456);
        return this.launchIntentForUserClick(this.mContext, intent, "Unable to open intent.");
    }
    
    private void showMraidBrowserForUrl(String str) {
        if (str == null || str.equals("")) {
            str = "about:blank";
        }
        Log.d("MoPub", "Final URI to show in browser: " + str);
        final Intent intent = new Intent(this.mContext, (Class)M2RBrowser.class);
        intent.putExtra("extra_url", str);
        intent.addFlags(268435456);
        if (!this.launchIntentForUserClick(this.mContext, intent, "Could not handle intent action. . Perhaps you forgot to declare com.mopub.mobileads.MraidBrowser in your Android manifest file.")) {
            final Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("about:blank"));
            intent2.setFlags(268435456);
            this.launchIntentForUserClick(this.mContext, intent2, null);
        }
    }
    
    private String urlWithClickTrackingRedirect(final String s) {
        if (this.mClickthroughUrl == null) {
            return s;
        }
        return String.valueOf(this.mClickthroughUrl) + "&r=" + Uri.encode(s);
    }
    
    boolean launchIntentForUserClick(final Context context, final Intent intent, final String s) {
        if (!this.mHtmlWebView.wasClicked()) {
            return false;
        }
        final boolean executeIntent = this.executeIntent(context, intent, s);
        if (executeIntent) {
            this.mHtmlWebViewListener.onClicked();
            this.mHtmlWebView.onResetUserClick();
        }
        return executeIntent;
    }
    
    public void onPageStarted(final WebView webView, final String s, final Bitmap bitmap) {
        if (this.mRedirectUrl != null && s.startsWith(this.mRedirectUrl)) {
            final String urlWithClickTrackingRedirect = this.urlWithClickTrackingRedirect(s);
            webView.stopLoading();
            this.showMraidBrowserForUrl(urlWithClickTrackingRedirect);
        }
    }
    
    public boolean shouldOverrideUrlLoading(final WebView webView, final String s) {
        if (this.handleSpecialMoPubScheme(s) || this.handlePhoneScheme(s) || this.handleNativeBrowserScheme(s)) {
            return true;
        }
        final String urlWithClickTrackingRedirect = this.urlWithClickTrackingRedirect(s);
        Log.d("MoPub", "Ad clicked. Click URL: " + urlWithClickTrackingRedirect);
        if (!this.isWebSiteUrl(urlWithClickTrackingRedirect) && this.canHandleApplicationUrl(urlWithClickTrackingRedirect) && this.launchApplicationUrl(urlWithClickTrackingRedirect)) {
            return true;
        }
        this.showMraidBrowserForUrl(urlWithClickTrackingRedirect);
        return true;
    }
}
