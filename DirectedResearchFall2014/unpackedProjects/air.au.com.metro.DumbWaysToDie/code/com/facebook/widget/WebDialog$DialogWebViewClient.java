package com.facebook.widget;

import android.graphics.*;
import com.facebook.internal.*;
import android.webkit.*;
import android.net.http.*;
import com.facebook.android.*;
import android.net.*;
import android.os.*;
import android.app.*;
import com.milkmangames.extensions.android.goviral.*;
import com.facebook.*;
import android.widget.*;
import android.view.*;
import android.annotation.*;
import android.content.*;

class WebDialog$DialogWebViewClient extends WebViewClient
{
    final /* synthetic */ WebDialog this$0;
    
    private WebDialog$DialogWebViewClient(final WebDialog this$0) {
        this.this$0 = this$0;
        super();
    }
    
    public void onPageFinished(final WebView webView, final String s) {
        super.onPageFinished(webView, s);
        if (!this.this$0.isDetached) {
            this.this$0.spinner.dismiss();
        }
        this.this$0.contentFrameLayout.setBackgroundColor(0);
        this.this$0.webView.setVisibility(0);
        this.this$0.crossImageView.setVisibility(0);
    }
    
    public void onPageStarted(final WebView webView, final String str, final Bitmap bitmap) {
        Utility.logd("FacebookSDK.WebDialog", "Webview loading URL: " + str);
        super.onPageStarted(webView, str, bitmap);
        if (!this.this$0.isDetached) {
            this.this$0.spinner.show();
        }
    }
    
    public void onReceivedError(final WebView webView, final int n, final String s, final String s2) {
        super.onReceivedError(webView, n, s, s2);
        this.this$0.sendErrorToListener(new FacebookDialogException(s, n, s2));
        this.this$0.dismiss();
    }
    
    public void onReceivedSslError(final WebView webView, final SslErrorHandler sslErrorHandler, final SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        this.this$0.sendErrorToListener(new FacebookDialogException(null, -11, null));
        sslErrorHandler.cancel();
        this.this$0.dismiss();
    }
    
    public boolean shouldOverrideUrlLoading(final WebView webView, final String str) {
        Utility.logd("FacebookSDK.WebDialog", "Redirect URL: " + str);
        if (str.startsWith("fbconnect://success")) {
            final Bundle url = Util.parseUrl(str);
            String s = url.getString("error");
            if (s == null) {
                s = url.getString("error_type");
            }
            String s2 = url.getString("error_msg");
            if (s2 == null) {
                s2 = url.getString("error_description");
            }
            final String string = url.getString("error_code");
        Label_0104:
            while (true) {
                if (Utility.isNullOrEmpty(string)) {
                    final int int1 = -1;
                    break Label_0104;
                }
                while (true) {
                    while (true) {
                        int int1;
                        try {
                            int1 = Integer.parseInt(string);
                            if (Utility.isNullOrEmpty(s) && Utility.isNullOrEmpty(s2) && int1 == -1) {
                                this.this$0.sendSuccessToListener(url);
                                this.this$0.dismiss();
                                return true;
                            }
                        }
                        catch (NumberFormatException ex) {
                            int1 = -1;
                            continue Label_0104;
                        }
                        if (s != null && (s.equals("access_denied") || s.equals("OAuthAccessDeniedException"))) {
                            this.this$0.sendCancelToListener();
                            continue;
                        }
                        this.this$0.sendErrorToListener(new FacebookServiceException(new FacebookRequestError(int1, s, s2), s2));
                        continue;
                    }
                }
                break;
            }
        }
        else {
            if (str.startsWith("fbconnect://cancel")) {
                this.this$0.sendCancelToListener();
                this.this$0.dismiss();
                return true;
            }
            if (str.contains("touch")) {
                return false;
            }
            this.this$0.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            return true;
        }
    }
}
