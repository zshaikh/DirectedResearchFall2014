package v2.com.playhaven.requests.base;

import v2.com.playhaven.listeners.*;
import v2.com.playhaven.configuration.*;
import v2.com.playhaven.model.*;
import android.content.*;
import android.net.*;
import v2.com.playhaven.requests.crashreport.*;
import android.provider.*;
import android.os.*;
import v2.com.playhaven.utils.*;
import java.util.*;
import android.content.pm.*;
import android.util.*;
import java.io.*;
import java.security.*;
import java.nio.*;
import org.json.*;

public class PHAPIRequest implements PHHttpRequestListener
{
    public static final String API_CACHE_SUBDIR = "apicache";
    public static final Integer APP_CACHE_VERSION;
    public static final Integer PRECACHE_FILE_KEY_INDEX;
    private final String SESSION_PREFERENCES;
    private Hashtable<String, String> additionalParams;
    private PHConfiguration config;
    private PHAsyncRequest conn;
    protected String fullUrl;
    private PHError lastError;
    private JSONObject lastResponse;
    private int requestTag;
    public boolean shouldComplainAboutNonOverridden;
    private HashMap<String, String> signedParams;
    private String urlPath;
    
    static {
        PRECACHE_FILE_KEY_INDEX = 0;
        APP_CACHE_VERSION = 100;
    }
    
    public PHAPIRequest() {
        super();
        this.shouldComplainAboutNonOverridden = true;
        this.SESSION_PREFERENCES = "com_playhaven_sdk_session";
        this.config = new PHConfiguration();
    }
    
    private void checkTokenAndSecret(final String s, final String s2) {
        if (s == null || s2 == null || s.length() == 0 || s2.length() == 0) {
            throw new IllegalArgumentException("You must provide a token and secret from the Playhaven dashboard");
        }
    }
    
    private boolean hasValidTokenAndSecret(final Context context) {
        final String token = this.config.getToken(context);
        final String secret = this.config.getSecret(context);
        return token != null && token.length() > 0 && secret != null && secret.length() > 0;
    }
    
    private void send(final Context context, final PHAsyncRequest conn) {
        try {
            this.conn = conn;
            if (this.conn.request_type == PHAsyncRequest.RequestType.Post) {
                this.conn.addPostParams(this.getPostParams());
            }
            PHStringUtil.log("Sending PHAPIRequest of type: " + this.getRequestType().toString());
            PHStringUtil.log("PHAPIRequest URL: " + this.getURL(context));
            this.conn.execute((Object[])new Uri[] { Uri.parse(this.getURL(context)) });
        }
        catch (Exception ex) {
            PHCrashReport.reportCrash(ex, "PHAPIRequest - send()", PHCrashReport.Urgency.critical);
        }
    }
    
    public String baseURL(final Context context) {
        return this.urlPath;
    }
    
    public void cancel() {
        PHStringUtil.log(this.toString() + " canceled!");
        this.finish();
    }
    
    public String createAPIURL(final Context context, final String str) {
        return this.config.getAPIUrl(context) + str;
    }
    
    protected void finish() {
        this.conn.cancel(true);
    }
    
    public Hashtable<String, String> getAdditionalParams() {
        return this.additionalParams;
    }
    
    public Hashtable<String, String> getAdditionalParams(final Context context) {
        return this.additionalParams;
    }
    
    public PHAsyncRequest getConnection() {
        return this.conn;
    }
    
    public PHError getLastError() {
        return this.lastError;
    }
    
    public JSONObject getLastResponse() {
        return this.lastResponse;
    }
    
    public Hashtable<String, String> getPostParams() {
        return null;
    }
    
    public int getRequestTag() {
        return this.requestTag;
    }
    
    public PHAsyncRequest.RequestType getRequestType() {
        return PHAsyncRequest.RequestType.Get;
    }
    
    public HashMap<String, String> getSignedParams(final Context context) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        while (true) {
            while (true) {
                final String base64Digest;
                final Object[] args;
                String s = null;
                Label_0543: {
                    if (this.signedParams != null) {
                        break Label_0543;
                    }
                    String string = Settings$System.getString(context.getContentResolver(), "android_id");
                    if (string == null) {
                        string = "null";
                    }
                    final String value = String.valueOf(0xF & context.getResources().getConfiguration().screenLayout);
                    base64Digest = PHStringUtil.base64Digest(PHStringUtil.generateUUID());
                    args = new Object[4];
                    args[0] = this.config.getToken(context);
                    if (string != null) {
                        s = string;
                        break Label_0543;
                    }
                    Label_0548: {
                        break Label_0548;
                        String s2 = null;
                        String hexDigest;
                        PackageInfo packageInfo;
                        String packageName;
                        String versionName;
                        String model;
                        String format;
                        String cleanSDKVersion;
                        DisplayMetrics displayMetrics;
                        String value2;
                        String value3;
                        String value4;
                        PHConfiguration.ConnectionType connectionType = null;
                        String value5;
                        Hashtable<String, String> additionalParams;
                        HashMap<String, String> signedParams;
                        Label_0147_Outer:Label_0250_Outer:Label_0277_Outer:
                        while (true) {
                            args[2] = s2;
                            args[3] = this.config.getSecret(context);
                            hexDigest = PHStringUtil.hexDigest(String.format("%s:%s:%s:%s", args));
                            while (true) {
                            Label_0592:
                                while (true) {
                                Label_0579:
                                    while (true) {
                                        try {
                                            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                                            packageName = packageInfo.packageName;
                                            versionName = packageInfo.versionName;
                                            model = Build.MODEL;
                                            format = String.format("%s %s", Build$VERSION.RELEASE, Build$VERSION.SDK_INT);
                                            cleanSDKVersion = this.config.getCleanSDKVersion();
                                            displayMetrics = context.getResources().getDisplayMetrics();
                                            value2 = String.valueOf(displayMetrics.widthPixels);
                                            value3 = String.valueOf(displayMetrics.heightPixels);
                                            value4 = String.valueOf(displayMetrics.densityDpi);
                                            connectionType = PHConnectionUtils.getConnectionType(context);
                                            if (connectionType != PHConfiguration.ConnectionType.NO_PERMISSION) {
                                                break Label_0579;
                                            }
                                            value5 = null;
                                            additionalParams = this.getAdditionalParams(context);
                                            if (additionalParams != null) {
                                                signedParams = new HashMap<String, String>(additionalParams);
                                                (this.signedParams = new HashMap<String, String>()).put("device", string);
                                                this.signedParams.put("token", this.config.getToken(context));
                                                this.signedParams.put("signature", hexDigest);
                                                this.signedParams.put("nonce", base64Digest);
                                                this.signedParams.put("app", packageName);
                                                this.signedParams.put("app_version", versionName);
                                                this.signedParams.put("hardware", model);
                                                this.signedParams.put("os", format);
                                                this.signedParams.put("idiom", value);
                                                this.signedParams.put("width", value2);
                                                this.signedParams.put("height", value3);
                                                this.signedParams.put("sdk_version", cleanSDKVersion);
                                                this.signedParams.put("sdk_platform", "android");
                                                this.signedParams.put("orientation", "0");
                                                this.signedParams.put("dpi", value4);
                                                this.signedParams.put("languages", Locale.getDefault().getLanguage());
                                                if (value5 != null) {
                                                    this.signedParams.put("connection", value5);
                                                }
                                                signedParams.putAll(this.signedParams);
                                                this.signedParams = signedParams;
                                                return this.signedParams;
                                            }
                                            break Label_0592;
                                            s2 = "";
                                            continue Label_0147_Outer;
                                            s = "";
                                            break;
                                        }
                                        catch (PackageManager$NameNotFoundException ex) {
                                            packageName = "";
                                            versionName = "";
                                            continue Label_0250_Outer;
                                        }
                                        break;
                                    }
                                    value5 = String.valueOf(connectionType.ordinal());
                                    continue Label_0277_Outer;
                                }
                                signedParams = new HashMap<String, String>();
                                continue;
                            }
                        }
                    }
                }
                args[1] = s;
                if (base64Digest != null) {
                    final String s2 = base64Digest;
                    continue;
                }
                break;
            }
            continue;
        }
    }
    
    public String getURL(final Context context) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        if (this.fullUrl == null) {
            this.fullUrl = String.format("%s?%s", this.baseURL(context), this.signedParamsStr(context));
        }
        return this.fullUrl;
    }
    
    public void handleRequestFailure(final PHError phError) {
        if (this.shouldComplainAboutNonOverridden) {
            throw new RuntimeException("Request failed and subclass has not override handleRequestFailure");
        }
    }
    
    public void handleRequestSuccess(final JSONObject jsonObject) {
        if (this.shouldComplainAboutNonOverridden) {
            throw new RuntimeException("Request succeeded and subclass has not override handleRequestSuccess");
        }
    }
    
    @Override
    public void onHttpRequestFailed(final PHError lastError) {
        this.handleRequestFailure(this.lastError = lastError);
    }
    
    @Override
    public void onHttpRequestSucceeded(final ByteBuffer byteBuffer, final int n) {
        PHStringUtil.log("Received response code: " + n);
        if (n != 200) {
            this.handleRequestFailure(new PHError("Request failed with code: " + n));
            return;
        }
        if (byteBuffer == null || byteBuffer.array() == null) {
            this.processRequestResponse(new JSONObject());
        }
        try {
            final String str = new String(byteBuffer.array(), "UTF8");
            PHStringUtil.log("Unparsed JSON: " + str);
            this.processRequestResponse(new JSONObject(str));
        }
        catch (UnsupportedEncodingException ex3) {
            this.handleRequestFailure(new PHError("Unsupported encoding when parsing JSON"));
        }
        catch (JSONException ex) {
            this.handleRequestFailure(new PHError("Could not parse JSON because: " + ex.getMessage()));
        }
        catch (Exception ex2) {
            ex2.printStackTrace();
            this.handleRequestFailure(new PHError("Unknown error during API request: " + ex2.getMessage()));
        }
    }
    
    public void processRequestResponse(final JSONObject jsonObject) {
        final String optString = jsonObject.optString("error");
        final JSONObject optJSONObject = jsonObject.optJSONObject("errobj");
        if ((!JSONObject.NULL.equals(optJSONObject) && optJSONObject.length() > 0) || (!jsonObject.isNull("error") && optString.length() > 0)) {
            this.handleRequestFailure(this.lastError = new PHError("Server sent error message: " + optString));
            return;
        }
        this.handleRequestSuccess(this.lastResponse = jsonObject.optJSONObject("response"));
    }
    
    public void resetLastError() {
        this.lastError = null;
    }
    
    public void resetLastResponse() {
        this.lastResponse = null;
    }
    
    public void send(final Context context) {
        if (!this.hasValidTokenAndSecret(context)) {
            PHStringUtil.log("Either the token or secret has not been properly set");
            return;
        }
        this.conn = new PHAsyncRequest(this);
        if (this.config.getStagingUsername(context) != null && this.config.getStagingPassword(context) != null) {
            this.conn.setUsername(this.config.getStagingUsername(context));
            this.conn.setPassword(this.config.getStagingPassword(context));
        }
        this.conn.request_type = this.getRequestType();
        this.checkTokenAndSecret(this.config.getToken(context), this.config.getSecret(context));
        this.send(context, this.conn);
    }
    
    public void setAdditionalParameters(final Hashtable<String, String> additionalParams) {
        this.additionalParams = additionalParams;
    }
    
    public void setBaseURL(final String urlPath) {
        this.urlPath = urlPath;
    }
    
    public void setRequestTag(final int requestTag) {
        this.requestTag = requestTag;
    }
    
    public String signedParamsStr(final Context context) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        return PHStringUtil.createQuery(this.getSignedParams(context));
    }
}
