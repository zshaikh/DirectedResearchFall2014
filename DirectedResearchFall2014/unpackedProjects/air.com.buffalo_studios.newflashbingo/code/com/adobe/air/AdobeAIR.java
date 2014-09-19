package com.adobe.air;

import android.app.*;
import com.google.android.gms.gcm.*;
import com.google.android.gms.common.*;
import android.content.pm.*;
import android.view.*;
import android.net.*;
import org.json.*;
import android.location.*;
import com.amazonaws.services.sns.*;
import com.amazonaws.auth.*;
import com.amazonaws.regions.*;
import android.util.*;
import com.amazonaws.*;
import com.amazonaws.services.sns.model.*;
import java.util.*;
import android.content.*;
import android.webkit.*;
import android.os.*;

public class AdobeAIR extends Activity
{
    private static String ACCESS_KEY;
    private static final String ADOBE_GAME_SHOWCASE = "gaming.adobe.com";
    public static final String ADOBE_HOST = "www.adobe.com";
    private static String APPLICATION_ARN;
    public static final String CLOUDFRONT_HOST = "dh8vjmvwgc27o.cloudfront.net";
    private static final String CUSTOM_USER_DATA = "CustomUserData";
    public static final String DYNAMIC_URL_CLOUDFRONT = "http://www.adobe.com/airgames2/";
    private static final String ENABLED = "Enabled";
    public static final String GAMESPACE_HOST = "gamespace.adobe.com";
    private static final String GOOGLE_PLAY_HOST = "play.google.com";
    private static final int MAX_RETRIES = 10;
    private static final int PLAY_SERVICES_RESOLUTION_REQUEST = 9000;
    private static final String PROPERTY_APP_VERSION = "appVersion";
    private static final String PROPERTY_ENDPOINT_ARN = "endpointArn";
    private static final String PROPERTY_INITIAL_LAUNCH = "initialLaunch";
    public static long RATE_LIMIT = 0L;
    private static final int RETRY_TIME = 300000;
    private static String SECRET_KEY;
    private static String SENDER_ID;
    private static final String STATIC_URL = "file:///android_res/raw/startga.html";
    private static final String TAG = "Adobe AIR";
    private static final String TEST_ACCESS_KEY = "AKIAI5AWXTYSXJGU55QA";
    private static final String TEST_APPLICATION_ARN = "arn:aws:sns:us-west-2:413177889857:app/GCM/airruntimetestapp";
    private static final String TEST_SECRET_KEY = "8DSumtc3WxSjf3LUsjzoZ9fU8qyYyKlLp2sKWE2X";
    private static final String TEST_SENDER_ID = "1078258869814";
    private static final String TOKEN = "Token";
    public String DYNAMIC_URL;
    private WebView mAuxWebView;
    private AmazonSNS mClient;
    private Context mCtx;
    private String mEndpointArn;
    private boolean mFirstLoad;
    private GoogleCloudMessaging mGcm;
    private boolean mOffline;
    private String mRegId;
    private int mRetryCount;
    private boolean mTestEnv;
    private WebView mWebView;
    
    static {
        AdobeAIR.RATE_LIMIT = 86400000L;
        AdobeAIR.SENDER_ID = "532338767332";
        AdobeAIR.APPLICATION_ARN = "arn:aws:sns:us-west-2:502492504188:app/GCM/TestGCM";
        AdobeAIR.ACCESS_KEY = "AKIAI2RE4NKJI7CKZF7Q";
        AdobeAIR.SECRET_KEY = "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";
    }
    
    public AdobeAIR() {
        super();
        this.mWebView = null;
        this.mAuxWebView = null;
        this.mOffline = false;
        this.mFirstLoad = true;
        this.DYNAMIC_URL = "http://www.adobe.com/airgames/";
        this.mTestEnv = false;
        this.mRetryCount = 0;
        this.mRegId = null;
        this.mEndpointArn = null;
        this.mClient = null;
        this.mCtx = null;
        this.mGcm = null;
    }
    
    private boolean checkPlayServices() {
        final int googlePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.mCtx);
        if (googlePlayServicesAvailable != 0) {
            if (GooglePlayServicesUtil.isUserRecoverableError(googlePlayServicesAvailable)) {
                GooglePlayServicesUtil.getErrorDialog(googlePlayServicesAvailable, (Activity)this, 9000).show();
            }
            return false;
        }
        return true;
    }
    
    private void configureTestEnv() {
        try {
            final Bundle metaData = this.mCtx.getPackageManager().getActivityInfo(((Activity)this.mCtx).getComponentName(), 128).metaData;
            if (metaData == null) {
                return;
            }
            this.mTestEnv = metaData.getBoolean("testEnv");
            if (this.mTestEnv) {
                AdobeAIR.SENDER_ID = "1078258869814";
                AdobeAIR.APPLICATION_ARN = "arn:aws:sns:us-west-2:413177889857:app/GCM/airruntimetestapp";
                AdobeAIR.ACCESS_KEY = "AKIAI5AWXTYSXJGU55QA";
                AdobeAIR.SECRET_KEY = "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";
                final int int1 = metaData.getInt("rateLimit", Integer.MIN_VALUE);
                if (int1 != Integer.MIN_VALUE) {
                    AdobeAIR.RATE_LIMIT = int1;
                }
            }
        }
        catch (PackageManager$NameNotFoundException ex) {}
    }
    
    private void createWebView() {
        final WebViewClient webViewClient = new WebViewClient() {
            public void onPageFinished(final WebView webView, final String s) {
                if (AdobeAIR.this.mFirstLoad && !s.equals(AdobeAIR.this.DYNAMIC_URL)) {
                    AdobeAIR.this.mFirstLoad = false;
                    AdobeAIR.this.setRequestedOrientation(2);
                    AdobeAIR.this.setContentView((View)AdobeAIR.this.mWebView);
                }
            }
            
            public void onReceivedError(final WebView webView, final int n, final String s, final String s2) {
                AdobeAIR.this.mOffline = true;
                AdobeAIR.this.mWebView.loadUrl("file:///android_res/raw/startga.html");
            }
            
            public boolean shouldOverrideUrlLoading(final WebView webView, final String s) {
                if (s != null) {
                    final Uri parse = Uri.parse(s);
                    if (parse != null && parse.getScheme() != null) {
                    Label_0131_Outer:
                        while (true) {
                            while (true) {
                                Label_0195: {
                                    Label_0187: {
                                        Label_0179: {
                                            try {
                                                if (parse.getHost() == null || (!parse.getScheme().equalsIgnoreCase("http") && !parse.getScheme().equalsIgnoreCase("https"))) {
                                                    break Label_0195;
                                                }
                                                if (s.equals(AdobeAIR.this.DYNAMIC_URL) || parse.getHost().equalsIgnoreCase("gamespace.adobe.com") || parse.getHost().equalsIgnoreCase("dh8vjmvwgc27o.cloudfront.net")) {
                                                    return false;
                                                }
                                                if (!parse.getHost().equalsIgnoreCase("www.adobe.com") && !parse.getHost().equalsIgnoreCase("play.google.com") && !parse.getHost().equalsIgnoreCase("gaming.adobe.com")) {
                                                    break Label_0179;
                                                }
                                                break Label_0187;
                                                // iftrue(Label_0160:, n == 0)
                                                while (true) {
                                                    AdobeAIR.this.startActivity(new Intent("android.intent.action.VIEW", parse));
                                                    break;
                                                    continue Label_0131_Outer;
                                                }
                                                Label_0160: {
                                                    AdobeAIR.this.mAuxWebView.loadUrl(s);
                                                }
                                            }
                                            catch (Exception ex) {}
                                            break;
                                        }
                                        final int n = 0;
                                        continue;
                                    }
                                    final int n = 1;
                                    continue;
                                }
                                final int n = 1;
                                continue;
                            }
                        }
                    }
                }
                return true;
            }
        };
        (this.mWebView = new WebView((Context)this)).setScrollBarStyle(0);
        this.mWebView.setWebViewClient((WebViewClient)webViewClient);
        this.mWebView.getSettings().setJavaScriptEnabled(true);
        this.mWebView.getSettings().setBuiltInZoomControls(true);
        this.mWebView.getSettings().setDomStorageEnabled(true);
        this.mWebView.getSettings().setDatabaseEnabled(true);
        this.mWebView.getSettings().setDatabasePath(this.getApplicationContext().getFilesDir().getPath() + "/databases/");
        this.mAuxWebView = new WebView((Context)this);
        this.mAuxWebView.getSettings().setJavaScriptEnabled(true);
        this.mAuxWebView.getSettings().setDomStorageEnabled(true);
        this.mAuxWebView.getSettings().setDatabaseEnabled(true);
        this.mAuxWebView.getSettings().setDatabasePath(this.getApplicationContext().getFilesDir().getPath() + "/databases/");
    }
    
    private int getAppVersion() {
        try {
            return this.mCtx.getPackageManager().getPackageInfo(this.mCtx.getPackageName(), 0).versionCode;
        }
        catch (PackageManager$NameNotFoundException ex) {
            return 0;
        }
    }
    
    private String getCustomData() {
        while (true) {
            while (true) {
                String displayCountry = null;
                Label_0318: {
                    try {
                        final JSONObject jsonObject = new JSONObject();
                        jsonObject.put("osVersion", (Object)Build$VERSION.RELEASE);
                        jsonObject.put("airVersion", (Object)this.mCtx.getPackageManager().getPackageInfo(this.mCtx.getPackageName(), 0).versionName);
                        jsonObject.put("deviceInfo", (Object)(Build.MODEL + "&" + Build.MANUFACTURER + "&" + Integer.toString(SystemCapabilities.GetScreenHRes(this.mCtx)) + "&" + Integer.toString(SystemCapabilities.GetScreenVRes(this.mCtx)) + "&" + Integer.toString(SystemCapabilities.GetScreenDPI(this.mCtx))));
                        final Locale default1 = Locale.getDefault();
                        jsonObject.put("locale", (Object)default1.toString());
                        displayCountry = default1.getDisplayCountry(Locale.ENGLISH);
                        try {
                            final LocationManager locationManager = (LocationManager)this.mCtx.getSystemService("location");
                            if (!locationManager.isProviderEnabled("network")) {
                                break Label_0318;
                            }
                            final Location lastKnownLocation = locationManager.getLastKnownLocation("network");
                            final Geocoder geocoder = new Geocoder(this.mCtx, Locale.ENGLISH);
                            if (lastKnownLocation != null && geocoder != null && Geocoder.isPresent()) {
                                final String countryName = geocoder.getFromLocation(lastKnownLocation.getLatitude(), lastKnownLocation.getLongitude(), 1).get(0).getCountryName();
                                jsonObject.put("geo", (Object)countryName);
                                jsonObject.put("timestamp", (Object)String.valueOf(System.currentTimeMillis()));
                                return jsonObject.toString();
                            }
                        }
                        catch (Exception ex) {
                            final String countryName = displayCountry;
                        }
                    }
                    catch (Exception ex2) {
                        return "";
                    }
                }
                final String countryName = displayCountry;
                continue;
            }
        }
    }
    
    private boolean isAppRegistered() {
        final int int1 = this.getSharedPreferences(AdobeAIR.class.getSimpleName(), 0).getInt("appVersion", Integer.MIN_VALUE);
        final int appVersion = this.getAppVersion();
        return int1 != Integer.MIN_VALUE && int1 == appVersion;
    }
    
    private boolean isInitialLaunch() {
        return this.getSharedPreferences(AdobeAIR.class.getSimpleName(), 0).getBoolean("initialLaunch", true);
    }
    
    private void registerForNotifications() {
        if (!this.isAppRegistered() && this.checkPlayServices()) {
            this.configureTestEnv();
            this.registerInBackground(0);
        }
    }
    
    private void registerInBackground(final int i) {
        if (this.mRetryCount < 10) {
            if (i != 0) {
                ++this.mRetryCount;
            }
            new AsyncTaskRunner().execute((Object[])new Integer[] { i });
        }
    }
    
    private void sendRegistrationIdToAws() {
        try {
            (this.mClient = (AmazonSNS)new AmazonSNSClient((AWSCredentials)new BasicAWSCredentials(AdobeAIR.ACCESS_KEY, AdobeAIR.SECRET_KEY))).setRegion(Region.getRegion(Regions.US_WEST_2));
            try {
                final CreatePlatformEndpointRequest createPlatformEndpointRequest = new CreatePlatformEndpointRequest();
                createPlatformEndpointRequest.setPlatformApplicationArn(AdobeAIR.APPLICATION_ARN);
                createPlatformEndpointRequest.setToken(this.mRegId);
                createPlatformEndpointRequest.setCustomUserData(this.getCustomData());
                final CreatePlatformEndpointResult platformEndpoint = this.mClient.createPlatformEndpoint(createPlatformEndpointRequest);
                if (platformEndpoint != null && platformEndpoint.getEndpointArn() != null) {
                    this.mEndpointArn = platformEndpoint.getEndpointArn();
                    if (this.mTestEnv) {
                        Log.i("Adobe AIR", "EndpointArn = " + this.mEndpointArn);
                    }
                    this.updateSharedPref();
                }
            }
            catch (InternalErrorException ex) {
                this.registerInBackground(300000);
            }
            catch (InvalidParameterException ex2) {
                this.updateEndpointAttributes();
            }
            catch (AmazonClientException ex3) {}
            catch (AmazonServiceException ex4) {}
        }
        catch (Exception ex5) {}
    }
    
    private void updateEndpointAttributes() {
        try {
            final SetEndpointAttributesRequest endpointAttributes = new SetEndpointAttributesRequest();
            if (this.mEndpointArn == null) {
                this.mEndpointArn = this.mCtx.getSharedPreferences(AdobeAIR.class.getSimpleName(), 0).getString("endpointArn", "");
            }
            endpointAttributes.setEndpointArn(this.mEndpointArn);
            final HashMap<String, String> attributes = new HashMap<String, String>();
            attributes.put("CustomUserData", this.getCustomData());
            attributes.put("Enabled", "true");
            attributes.put("Token", this.mRegId);
            endpointAttributes.setAttributes((Map)attributes);
            this.mClient.setEndpointAttributes(endpointAttributes);
            this.updateSharedPref();
        }
        catch (AmazonClientException ex) {}
        catch (AmazonServiceException ex2) {}
    }
    
    private void updateSharedPref() {
        final SharedPreferences sharedPreferences = this.getSharedPreferences(AdobeAIR.class.getSimpleName(), 0);
        final int appVersion = this.getAppVersion();
        final SharedPreferences$Editor edit = sharedPreferences.edit();
        edit.putInt("appVersion", appVersion);
        edit.putString("endpointArn", this.mEndpointArn);
        edit.commit();
    }
    
    private void updateSharedPrefForInitialLaunch() {
        final SharedPreferences$Editor edit = this.getSharedPreferences(AdobeAIR.class.getSimpleName(), 0).edit();
        edit.putBoolean("initialLaunch", false);
        edit.commit();
    }
    
    public void onBackPressed() {
        if (Build$VERSION.SDK_INT >= 12 && this.mWebView.canGoBack()) {
            final WebBackForwardList copyBackForwardList = this.mWebView.copyBackForwardList();
            final int currentIndex = copyBackForwardList.getCurrentIndex();
            int n;
            if (currentIndex > 0 && this.DYNAMIC_URL.equals(copyBackForwardList.getItemAtIndex(currentIndex - 1).getUrl())) {
                n = 0;
            }
            else {
                n = 1;
            }
            if (n != 0) {
                this.mWebView.goBack();
                return;
            }
        }
        super.onBackPressed();
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.mCtx = (Context)this;
        if (this.isInitialLaunch()) {
            this.DYNAMIC_URL = "http://www.adobe.com/airgames2/";
            this.updateSharedPrefForInitialLaunch();
        }
        this.createWebView();
        this.mWebView.loadUrl(this.DYNAMIC_URL);
        this.onNewIntent(this.getIntent());
        this.registerForNotifications();
    }
    
    public void onNewIntent(final Intent intent) {
        super.onNewIntent(intent);
        final Bundle extras = intent.getExtras();
        if (extras != null && extras.containsKey("gameUrl")) {
            final String string = extras.getString("gameUrl");
            if (this.mWebView == null) {
                this.createWebView();
            }
            this.mWebView.loadUrl(string);
        }
    }
    
    public void onResume() {
        super.onResume();
        if (this.mOffline) {
            this.mOffline = false;
            this.mWebView.loadUrl(this.DYNAMIC_URL);
        }
    }
    
    private class AsyncTaskRunner extends AsyncTask<Integer, Void, Void>
    {
        protected Void doInBackground(final Integer... array) {
            try {
                Thread.sleep(array[0]);
                if (AdobeAIR.this.mGcm == null) {
                    AdobeAIR.this.mGcm = GoogleCloudMessaging.getInstance(AdobeAIR.this.mCtx);
                }
                AdobeAIR.this.mRegId = AdobeAIR.this.mGcm.register(new String[] { AdobeAIR.SENDER_ID });
                if (AdobeAIR.this.mRegId == null) {
                    AdobeAIR.this.registerInBackground(300000);
                }
                else {
                    AdobeAIR.this.sendRegistrationIdToAws();
                }
            }
            catch (Exception ex) {
                AdobeAIR.this.registerInBackground(300000);
            }
            return null;
        }
    }
}
