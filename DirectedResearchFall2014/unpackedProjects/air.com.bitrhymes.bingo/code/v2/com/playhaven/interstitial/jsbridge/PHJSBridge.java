package v2.com.playhaven.interstitial.jsbridge;

import java.lang.ref.*;
import android.net.*;
import java.util.*;
import v2.com.playhaven.interstitial.jsbridge.handlers.*;
import android.webkit.*;
import v2.com.playhaven.utils.*;
import org.json.*;

public class PHJSBridge
{
    private static final String JAVASCRIPT_CALLBACK_TEMPLATE = "javascript:PlayHaven.nativeAPI.callback(\"%s\", %s, %s)";
    protected WeakReference<ManipulatableContentDisplayer> contentDisplayer;
    private Uri mCurUrl;
    private Hashtable<String, AbstractHandler> routers;
    private WebView webview;
    
    public PHJSBridge(final ManipulatableContentDisplayer referent) {
        super();
        this.routers = new Hashtable<String, AbstractHandler>();
        this.contentDisplayer = new WeakReference<ManipulatableContentDisplayer>(referent);
    }
    
    private String stripQuery(final String s) {
        int endIndex;
        if (s.indexOf("?") > 0) {
            endIndex = s.indexOf("?");
        }
        else {
            endIndex = s.length();
        }
        return s.substring(0, endIndex);
    }
    
    public void addRoute(final String key, final AbstractHandler value) {
        value.attachBridge(this);
        value.attachContentDisplayer(this.contentDisplayer.get());
        this.routers.put(key, value);
    }
    
    public void attachWebview(final WebView webview) {
        this.webview = webview;
    }
    
    public void clearCurrentURL() {
        this.mCurUrl = null;
    }
    
    public void clearRoutes() {
        this.routers.clear();
    }
    
    public String getCurrentQueryVar(final String s) {
        synchronized (PHJSBridge.class) {
            if (this.mCurUrl == null) {
                return null;
            }
            final String queryParameter = this.mCurUrl.getQueryParameter(s);
            if (queryParameter == null || queryParameter.equals("") || queryParameter.equals("null")) {
                return null;
            }
            return queryParameter;
        }
    }
    
    public String getCurrentURL() {
        while (true) {
            synchronized (PHJSBridge.class) {
                if (this.mCurUrl != null) {
                    return this.mCurUrl.toString();
                }
            }
            return null;
        }
    }
    
    public boolean hasRoute(final String str) {
        PHStringUtil.log("Asking about route: " + str);
        return this.routers.containsKey(this.stripQuery(str));
    }
    
    public boolean hasWebviewAttached() {
        return this.webview != null;
    }
    
    public void loadUrlInWebView(final String s) {
        if (this.webview != null) {
            this.webview.loadUrl(s);
        }
    }
    
    public void route(final String s) {
        synchronized (this) {
            this.mCurUrl = Uri.parse(s);
            if (this.mCurUrl == null) {
                return;
            }
            final AbstractHandler abstractHandler = this.routers.get(this.stripQuery(s));
            if (abstractHandler != null) {
                abstractHandler.handle();
            }
        }
    }
    
    public void runJavascript(final String str) {
        if (this.webview != null) {
            this.webview.loadUrl("javascript:" + str);
        }
    }
    
    public void sendMessageToWebview(final String s, final JSONObject jsonObject, final JSONObject jsonObject2) {
        if (!this.hasWebviewAttached()) {
            return;
        }
        final Object[] args = new Object[3];
        String s2;
        if (s != null) {
            s2 = s;
        }
        else {
            s2 = "null";
        }
        args[0] = s2;
        String string;
        if (jsonObject != null) {
            string = jsonObject.toString();
        }
        else {
            string = "null";
        }
        args[1] = string;
        String string2;
        if (jsonObject2 != null) {
            string2 = jsonObject2.toString();
        }
        else {
            string2 = "null";
        }
        args[2] = string2;
        final String format = String.format("javascript:PlayHaven.nativeAPI.callback(\"%s\", %s, %s)", args);
        PHStringUtil.log("sending javascript callback to WebView: '" + format);
        this.webview.loadUrl(format);
    }
}
