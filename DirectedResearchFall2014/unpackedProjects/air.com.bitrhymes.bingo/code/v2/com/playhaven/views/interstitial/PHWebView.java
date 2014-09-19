package v2.com.playhaven.views.interstitial;

import v2.com.playhaven.configuration.*;
import v2.com.playhaven.model.*;
import android.content.*;
import v2.com.playhaven.interstitial.webview.*;
import android.webkit.*;
import v2.com.playhaven.cache.*;
import v2.com.playhaven.utils.*;

public class PHWebView extends WebView
{
    private PHConfiguration config;
    private PHContent content;
    private boolean doCache;
    
    public PHWebView(final Context context, final boolean doCache, final PHWebViewClient webViewClient, final PHWebViewChrome webChromeClient, final PHContent content) {
        super(context);
        this.doCache = doCache;
        this.content = content;
        this.config = new PHConfiguration();
        final String absolutePath = this.getContext().getApplicationContext().getCacheDir().getAbsolutePath();
        if (doCache) {
            this.getSettings().setCacheMode(2);
        }
        else {
            this.getSettings().setCacheMode(-1);
            this.getSettings().setAppCacheMaxSize((long)this.config.getPrecacheSize());
            this.getSettings().setAppCachePath(absolutePath);
            this.getSettings().setAllowFileAccess(true);
            this.getSettings().setAppCacheEnabled(true);
            this.getSettings().setDomStorageEnabled(true);
            this.getSettings().setDatabaseEnabled(true);
        }
        this.getSettings().setUseWideViewPort(true);
        this.getSettings().setSupportZoom(true);
        this.getSettings().setLoadWithOverviewMode(true);
        this.getSettings().setJavaScriptEnabled(true);
        this.setInitialScale(0);
        this.setScrollBarStyle(0);
        this.setBackgroundColor(0);
        this.setWebViewClient((WebViewClient)webViewClient);
        this.setWebChromeClient((WebChromeClient)webChromeClient);
    }
    
    public void cleanup() {
        this.setWebChromeClient((WebChromeClient)null);
        this.setWebViewClient((WebViewClient)null);
        this.stopLoading();
    }
    
    public void loadContentTemplate() {
        this.stopLoading();
        if (!this.content.url.toString().startsWith("http://")) {
            return;
        }
        try {
            PHStringUtil.log("Should we access the cache: " + this.doCache + "....and has it been installed: " + PHCache.hasBeenInstalled());
            final boolean doCache = this.doCache;
            String cachedFile = null;
            if (doCache) {
                final boolean hasBeenInstalled = PHCache.hasBeenInstalled();
                cachedFile = null;
                if (hasBeenInstalled) {
                    cachedFile = PHCache.getSharedCache().getCachedFile(this.content.url.toString());
                }
            }
            PHStringUtil.log("the cached template url returned: " + cachedFile);
            PHStringUtil.log("the original template url: " + this.content.url.toString());
            if (cachedFile != null) {
                this.loadUrl(cachedFile);
                return;
            }
        }
        catch (Exception ex) {
            ex.printStackTrace();
            return;
        }
        this.loadUrl(this.content.url.toString());
    }
}
