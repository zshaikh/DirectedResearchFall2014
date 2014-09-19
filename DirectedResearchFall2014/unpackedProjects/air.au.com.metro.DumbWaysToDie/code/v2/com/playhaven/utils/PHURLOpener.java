package v2.com.playhaven.utils;

import android.app.*;
import v2.com.playhaven.listeners.*;
import v2.com.playhaven.configuration.*;
import v2.com.playhaven.requests.base.*;
import java.lang.ref.*;
import android.net.*;
import android.content.*;
import v2.com.playhaven.model.*;
import java.nio.*;
import org.json.*;

public class PHURLOpener extends ProgressDialog implements PHHttpRequestListener
{
    private static final String LOADING_MESSAGE = "Loading...";
    private final String MARKET_URL_TEMPLATE;
    private final int MAXIMUM_REDIRECTS;
    private PHConfiguration config;
    private PHAsyncRequest conn;
    private String contentTemplateCallback;
    private boolean isLoading;
    private WeakReference<Listener> listener;
    private boolean shouldOpenUrl;
    private String targetURL;
    
    public PHURLOpener(final Context context) {
        super(context);
        this.MARKET_URL_TEMPLATE = "http://play.google.com/marketplace/apps/details?id=%s";
        this.isLoading = false;
        this.MAXIMUM_REDIRECTS = 10;
        this.shouldOpenUrl = true;
        this.config = new PHConfiguration();
    }
    
    public PHURLOpener(final Context context, final Listener referent) {
        this(context);
        this.listener = new WeakReference<Listener>(referent);
    }
    
    private void fail() {
        if (this.listener != null && this.listener.get() != null) {
            this.listener.get().onURLOpenerFailed(this);
        }
        this.invalidate();
    }
    
    private void finish() {
        if (this.isLoading) {
            this.isLoading = false;
            this.targetURL = this.conn.getLastRedirectURL();
            PHStringUtil.log("PHURLOpener - final redirect location: " + this.targetURL);
            if (this.shouldOpenUrl && this.targetURL != null && !this.targetURL.equals("")) {
                if (this.targetURL.startsWith("market:")) {
                    this.openMarketURL(this.targetURL);
                }
                else {
                    this.launchActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.targetURL)));
                }
            }
            if (this.listener != null && this.listener.get() != null) {
                this.listener.get().onURLOpenerFinished(this);
            }
            this.invalidate();
        }
    }
    
    private void invalidate() {
        this.listener = null;
        if (this.conn == null) {
            return;
        }
        synchronized (this) {
            this.conn.cancel(true);
            // monitorexit(this)
            this.dismiss();
        }
    }
    
    private void launchActivity(final Intent intent) {
        if (this.config.getIsRunningUITests(this.getContext())) {
            return;
        }
        PHStringUtil.log("PHURLOpener just launched intent: " + intent.getData());
        this.getContext().startActivity(intent);
    }
    
    private void openMarketURL(final String str) {
        PHStringUtil.log("Got a market:// URL, verifying market app is installed");
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        if (this.getContext().getPackageManager().queryIntentActivities(intent, 65536).size() == 0) {
            PHStringUtil.log("Market app is not installed and market:// not supported!");
            intent = new Intent("android.intent.action.VIEW", Uri.parse(String.format("http://play.google.com/marketplace/apps/details?id=%s", Uri.parse(str).getQueryParameter("id"))));
        }
        PHStringUtil.log("PHURLOpener is trying to launch: " + str);
        this.launchActivity(intent);
    }
    
    public PHAsyncRequest getConnection() {
        return this.conn;
    }
    
    public String getContentTemplateCallback() {
        return this.contentTemplateCallback;
    }
    
    public String getTargetURL() {
        return this.targetURL;
    }
    
    public boolean isLoading() {
        return this.isLoading;
    }
    
    public void onHttpRequestFailed(final PHError obj) {
        PHStringUtil.log("PHURLOpener failed with error: " + obj);
        this.fail();
    }
    
    public void onHttpRequestSucceeded(final ByteBuffer byteBuffer, final int i) {
        if (i < 300) {
            PHStringUtil.log("PHURLOpener finishing from initial url: " + this.targetURL);
            this.finish();
            return;
        }
        PHStringUtil.log("PHURLOpener failing from initial url: " + this.targetURL + " with error code: " + i);
        this.fail();
    }
    
    public void open(final String targetURL) {
        this.targetURL = targetURL;
        if (!JSONObject.NULL.equals(this.targetURL) && this.targetURL.length() > 0) {
            PHStringUtil.log(String.format("Opening url in PHURLOpener: %s", this.targetURL));
            this.isLoading = true;
            (this.conn = new PHAsyncRequest(this)).setMaxRedirects(10);
            this.conn.request_type = PHAsyncRequest.RequestType.Get;
            this.conn.execute((Object[])new Uri[] { Uri.parse(this.targetURL) });
            this.setMessage((CharSequence)"Loading...");
            this.show();
        }
        else if (this.listener != null && this.listener.get() != null) {
            this.listener.get().onURLOpenerFinished(this);
        }
    }
    
    public void setConnection(final PHAsyncRequest conn) {
        this.conn = conn;
    }
    
    public void setContentTemplateCallback(final String contentTemplateCallback) {
        this.contentTemplateCallback = contentTemplateCallback;
    }
    
    public void setShouldOpenFinalURL(final boolean shouldOpenUrl) {
        this.shouldOpenUrl = shouldOpenUrl;
    }
    
    public void setTargetURL(final String targetURL) {
        this.targetURL = targetURL;
    }
    
    public interface Listener
    {
        void onURLOpenerFailed(PHURLOpener p0);
        
        void onURLOpenerFinished(PHURLOpener p0);
    }
}
