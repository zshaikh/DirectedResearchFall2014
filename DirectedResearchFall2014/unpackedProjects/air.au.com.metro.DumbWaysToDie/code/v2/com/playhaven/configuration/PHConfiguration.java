package v2.com.playhaven.configuration;

import android.content.*;
import v2.com.playhaven.utils.*;

public class PHConfiguration
{
    private static final int SHARED_PREF_MODE;
    private static final String SHARED_PREF_NAME;
    
    static {
        SHARED_PREF_NAME = PHConfiguration.class.getName();
    }
    
    private String getString(final Context context, final String s) {
        return context.getApplicationContext().getSharedPreferences(PHConfiguration.SHARED_PREF_NAME, 0).getString(s, (String)null);
    }
    
    private void setString(final Context context, final String s, final String s2) {
        final SharedPreferences$Editor edit = context.getApplicationContext().getSharedPreferences(PHConfiguration.SHARED_PREF_NAME, 0).edit();
        edit.putString(s, s2);
        edit.commit();
    }
    
    private boolean validateCredential(final String s) throws RuntimeException {
        return s != null && s.length() != 0;
    }
    
    public String getAPIUrl(final Context context) {
        String string = this.getString(context, Config.APIUrl.toString());
        if (string == null) {
            string = "http://api2.playhaven.com";
        }
        return string;
    }
    
    public String getCleanSDKVersion() {
        return this.getSDKVersion().replace("-SNAPSHOT", "");
    }
    
    public boolean getIsRunningUITests(final Context context) {
        return Boolean.valueOf(this.getString(context, Config.RunningUiTests.toString()));
    }
    
    public int getJSBridgeProtocolVersion() {
        return 4;
    }
    
    public String getPlayhavenBuildInfo() {
        return Version.BANNER;
    }
    
    public int getPrecacheSize() {
        return 8388608;
    }
    
    public String getSDKVersion() {
        return Version.PROJECT_VERSION;
    }
    
    public String getSecret(final Context context) {
        return this.getString(context, Config.Secret.toString());
    }
    
    public boolean getShouldPrecache(final Context context) {
        return Boolean.valueOf(this.getString(context, Config.ShouldPrecache.toString()));
    }
    
    public String getStagingPassword(final Context context) {
        return this.getString(context, Config.Password.toString());
    }
    
    public String getStagingUsername(final Context context) {
        return this.getString(context, Config.Username.toString());
    }
    
    public String getToken(final Context context) {
        return this.getString(context, Config.Token.toString());
    }
    
    public void setAPIUrl(final Context context, final String s) {
        this.setString(context, Config.APIUrl.toString(), s);
    }
    
    public void setCredentials(final Context context, final String s, final String s2) {
        if (this.validateCredential(s)) {
            this.setString(context, Config.Token.toString(), s);
        }
        if (this.validateCredential(s2)) {
            this.setString(context, Config.Secret.toString(), s2);
        }
        this.setIsRunningUITests(context, false);
        this.setShouldPrecache(context, true);
        PHStringUtil.log("PlayHaven initialized: " + this.getPlayhavenBuildInfo());
    }
    
    public void setIsRunningUITests(final Context context, final boolean b) {
        this.setString(context, Config.RunningUiTests.toString(), Boolean.toString(b));
    }
    
    public void setShouldPrecache(final Context context, final boolean b) {
        this.setString(context, Config.ShouldPrecache.toString(), Boolean.toString(b));
    }
    
    public void setStagingPassword(final Context context, final String s) {
        this.setString(context, Config.Password.toString(), s);
    }
    
    public void setStagingUsername(final Context context, final String s) {
        this.setString(context, Config.Username.toString(), s);
    }
    
    private enum Config
    {
        APIUrl("APIUrl", 6), 
        Password("Password", 4), 
        RunningUiTests("RunningUiTests", 7), 
        SdkVersion("SdkVersion", 0), 
        Secret("Secret", 2), 
        ShouldPrecache("ShouldPrecache", 5), 
        Token("Token", 1), 
        Username("Username", 3);
    }
    
    public enum ConnectionType
    {
        MOBILE("MOBILE", 1), 
        NO_NETWORK("NO_NETWORK", 0), 
        NO_PERMISSION("NO_PERMISSION", 3), 
        WIFI("WIFI", 2);
    }
}
