package com.fusepowered.activities;

import android.app.*;
import com.fusepowered.fuseapi.*;
import android.webkit.*;
import android.util.*;
import android.graphics.*;
import com.fusepowered.util.*;
import android.content.*;
import android.net.*;

public abstract class FuseApiBrowser extends Activity
{
    private static final String TAG = "FuseApiBrowser";
    
    public void handleOnExit() {
    }
    
    protected void onStop() {
        super.onStop();
        FuseAPI.setFuseChildActivityOnDisplay(false);
    }
    
    public class Callback extends WebViewClient
    {
        public boolean completed;
        
        public Callback() {
            super();
            this.completed = false;
        }
        
        public void onPageFinished(final WebView webView, final String s) {
            Log.d("WEBCLIENT", "Loading completed");
            this.completed = true;
            super.onPageFinished(webView, s);
        }
        
        public void onPageStarted(final WebView webView, final String s, final Bitmap bitmap) {
            new Thread(new Runnable() {
                @Override
                public void run() {
                    while (true) {
                        try {
                            Log.d("WEBCLIENT", "We're waiting for you!!");
                            Thread.sleep(5000L);
                            if (!Callback.this.completed) {
                                Log.d("WEBCLIENT", "Didn't finish!!");
                                FuseApiBrowser.this.finish();
                            }
                        }
                        catch (InterruptedException ex) {
                            ex.printStackTrace();
                            continue;
                        }
                        break;
                    }
                }
            }).start();
        }
        
        public void onReceivedError(final WebView webView, final int i, final String s, final String s2) {
            Log.i("WEB_VIEW_TEST", "error code:" + i);
            FuseAPI.sendFuseAdSkip(FuseAdSkip.FUSE_AD_SKIP_TIMEOUT.getErrorCode());
            super.onReceivedError(webView, i, s, s2);
        }
        
        public boolean shouldOverrideUrlLoading(final WebView webView, final String s) {
            if (s.toLowerCase().contains("http://") || s.contains("https://")) {
                final Intent intent = new Intent("android.intent.action.VIEW");
                intent.addFlags(268435456);
                intent.setData(Uri.parse(s));
                FuseApiBrowser.this.startActivity(intent);
                FuseAPI.adClick();
            }
            else if (s.toLowerCase().contains("market://")) {
                final Intent intent2 = new Intent("android.intent.action.VIEW");
                intent2.setData(Uri.parse(s));
                FuseApiBrowser.this.startActivity(intent2);
                FuseAPI.adClick();
            }
            else if (s.toLowerCase().contains("exit://")) {
                FuseApiBrowser.this.handleOnExit();
            }
            return true;
        }
    }
}
