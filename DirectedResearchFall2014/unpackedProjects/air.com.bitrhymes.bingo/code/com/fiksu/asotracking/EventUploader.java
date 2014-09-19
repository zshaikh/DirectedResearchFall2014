package com.fiksu.asotracking;

import java.util.regex.*;
import android.util.*;
import android.os.*;
import android.content.pm.*;
import java.io.*;
import java.net.*;
import android.content.*;
import java.util.*;

public class EventUploader implements Runnable
{
    private static final String FIKSU_ENDPOINT_1 = "https://a.fiksu.com/";
    private static final String FIKSU_ENDPOINT_2 = "https://a.fiksu.com/";
    private static final String FIKSU_SAVED_URLS_PREFERENCE_NAME = "Fiksu.savedUrls";
    private static final String FIKSU_SEPARATOR = "<FIKSU>";
    private static final Pattern FIKSU_SEPARATOR_PATTERN;
    private static final int MAX_FAILED_URLS = 10;
    protected static final String TRACKING_REV = "50010";
    private final Context mContext;
    private final Map<String, String> mParameters;
    
    static {
        FIKSU_SEPARATOR_PATTERN = Pattern.compile("<FIKSU>");
    }
    
    public EventUploader(final Context mContext, final Map<String, String> mParameters) {
        super();
        this.mParameters = mParameters;
        this.mContext = mContext;
    }
    
    private final void appendParameterToUrl(final StringBuilder sb, final FiksuEventParameter fiksuEventParameter) throws UnsupportedEncodingException {
        final String s = this.mParameters.get(fiksuEventParameter.getName());
        if (s != null) {
            sb.append("&" + fiksuEventParameter.getName() + "=" + this.encodeParameter(s));
        }
    }
    
    private String buildURL() {
        if (this.mContext == null) {
            Log.e("FiksuTracking", "Could not find context to use.  Please set it in your main Activity class using EventTracking.setContext().");
            return null;
        }
        String obj = "https://a.fiksu.com/";
        String string = this.mParameters.get(FiksuEventParameter.EVENT.getName());
        if ((string.equals(FiksuEventType.LAUNCH.getName()) || string.equals(FiksuEventType.RESUME.getName())) && this.launchedFromNotification()) {
            obj = "https://a.fiksu.com/";
            string = "Notification" + string;
        }
        while (true) {
            Log.d("FiksuTracking", "Event: " + string);
            final String packageName = this.mContext.getPackageName();
            final StringBuilder sb = new StringBuilder(String.valueOf(obj) + "50010" + "/android/" + packageName + "/event?");
            while (true) {
                try {
                    sb.append("appid=" + this.mContext.getPackageName());
                    sb.append("&deviceid=" + FiksuDeviceSettingsManager.getInstance().getDeviceId(this.mContext));
                    sb.append("&udid=" + FiksuDeviceSettingsManager.getInstance().getAndroidId(this.mContext));
                    sb.append("&device=" + this.encodeParameter(Build.MODEL));
                    final String clientId = FiksuDeviceSettingsManager.getInstance().getClientId();
                    if (clientId.length() > 0) {
                        sb.append("&clientid=" + this.encodeParameter(clientId));
                    }
                    if (FiksuConfigurationManager.getInstance().getFiksuConfiguration().isFacebookAttributionEnabled()) {
                        final String attributionId = FacebookAttribution.getAttributionId(this.mContext);
                        if (attributionId != null) {
                            sb.append("&fb_id=" + attributionId);
                        }
                    }
                    try {
                        final PackageManager packageManager = this.mContext.getPackageManager();
                        sb.append("&app_version=" + this.encodeParameter(packageManager.getPackageInfo(packageName, 0).versionName));
                        final String string2 = packageManager.getApplicationInfo(packageName, 0).loadLabel(packageManager).toString();
                        if (string2 != null) {
                            sb.append("&app_name=" + this.encodeParameter(string2));
                        }
                        sb.append("&system_version=" + Build$VERSION.RELEASE);
                        sb.append("&system_name=" + this.encodeParameter(Build.PRODUCT));
                        final Locale locale = this.mContext.getResources().getConfiguration().locale;
                        sb.append("&country=" + this.encodeParameter(locale.getCountry()));
                        sb.append("&lang=" + this.encodeParameter(locale.getLanguage()));
                        sb.append("&timezone=" + this.encodeParameter(TimeZone.getDefault().getDisplayName()));
                        sb.append("&gmtoffset=" + TimeZone.getDefault().getRawOffset() / 1000);
                        if (string != null) {
                            sb.append("&event=" + string);
                        }
                        this.appendParameterToUrl(sb, FiksuEventParameter.USERNAME);
                        this.appendParameterToUrl(sb, FiksuEventParameter.TVALUE);
                        this.appendParameterToUrl(sb, FiksuEventParameter.FVALUE);
                        this.appendParameterToUrl(sb, FiksuEventParameter.IVALUE);
                        final StringBuilder sb2 = new StringBuilder("&app_tracking_enabled=");
                        if (FiksuDeviceSettingsManager.getInstance().isAppTrackingEnabled()) {
                            final String str = "1";
                            sb.append(sb2.append(str).toString());
                            return sb.toString();
                        }
                    }
                    catch (PackageManager$NameNotFoundException ex2) {
                        Log.e("FiksuTracking", "Could not access package: " + packageName);
                    }
                }
                catch (UnsupportedEncodingException ex) {
                    Log.e("FiksuTracking", "Problem creating URL", (Throwable)ex);
                    return null;
                }
                final String str = "0";
                continue;
            }
        }
    }
    
    private boolean doUpload(final String spec) throws MalformedURLException {
        HttpURLConnection httpURLConnection;
        try {
            httpURLConnection = (HttpURLConnection)new URL(spec).openConnection();
            if (httpURLConnection == null) {
                if (Build$VERSION.RELEASE.startsWith("3.")) {
                    return true;
                }
                throw new RuntimeException("HttpURLConnection is null for Android OS version " + Build$VERSION.RELEASE);
            }
        }
        catch (IOException ex) {
            Log.e("FiksuTracking", "Failed to upload tracking information: " + ex.getClass().getCanonicalName() + ":" + ex.getMessage());
            return false;
        }
        final int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == 200) {
            Log.d("FiksuTracking", "Successfully uploaded tracking information.");
            return true;
        }
        Log.e("FiksuTracking", "Failed to upload tracking information, bad response: " + responseCode);
        return responseCode < 500;
    }
    
    private String encodeParameter(final String s) throws UnsupportedEncodingException {
        if (s == null) {
            return "";
        }
        return URLEncoder.encode(s, "UTF-8");
    }
    
    private List<String> getSavedUrls() {
        final ArrayList<String> list = new ArrayList<String>();
        final SharedPreferences ourSharedPreferences = EventTracker.getOurSharedPreferences(this.mContext);
        if (ourSharedPreferences != null) {
            final String string = ourSharedPreferences.getString("Fiksu.savedUrls", "");
            if (string != null && !string.equals("")) {
                final String[] split = EventUploader.FIKSU_SEPARATOR_PATTERN.split(string);
                for (int length = split.length, i = 0; i < length; ++i) {
                    list.add(split[i]);
                }
            }
        }
        return list;
    }
    
    private boolean launchedFromNotification() {
        synchronized (FiksuConstants.SHARED_PREFERENCES_LOCK) {
            final SharedPreferences ourSharedPreferences = EventTracker.getOurSharedPreferences(this.mContext);
            return ourSharedPreferences != null && new Date().getTime() - ourSharedPreferences.getLong("Fiksu.cd2MessageTime", 0L) < 180000L;
        }
    }
    
    private void saveFailedUrls(List<String> list) {
        if (list.size() > 10) {
            list = new ArrayList<String>(list.subList(list.size() - 10, list.size()));
        }
        final StringBuilder sb = new StringBuilder();
        if (list.size() > 0) {
            sb.append(list.get(0));
            for (int i = 1; i < list.size(); ++i) {
                sb.append("<FIKSU>" + (String)list.get(i));
            }
        }
        final SharedPreferences$Editor edit = EventTracker.getOurSharedPreferences(this.mContext).edit();
        edit.putString("Fiksu.savedUrls", sb.toString());
        edit.commit();
    }
    
    private void uploadToTracking() {
        if (this.mContext == null) {
            Log.e("FiksuTracking", "Could not find context to use.  Please set it in your main Activity class using EventTracking.setContext().");
            return;
        }
        while (true) {
            final String buildURL = this.buildURL();
            while (true) {
                final ArrayList<String> list;
                final Iterator<String> iterator;
                synchronized (FiksuConstants.SHARED_PREFERENCES_LOCK) {
                    final List<String> savedUrls = this.getSavedUrls();
                    if (buildURL != null) {
                        savedUrls.add(buildURL);
                        if (this.mParameters.get(FiksuEventParameter.EVENT.getName()).equals(FiksuEventType.CONVERSION.getName())) {
                            this.saveFailedUrls(savedUrls);
                        }
                    }
                    list = new ArrayList<String>();
                    iterator = savedUrls.iterator();
                    if (!iterator.hasNext()) {
                        this.saveFailedUrls(list);
                        return;
                    }
                }
                final String str = iterator.next();
                try {
                    if (!this.doUpload(str)) {
                        Log.e("FiksuTracking", "Upload failed for url.  Saving it for retry later: " + str);
                        list.add(str);
                        continue;
                    }
                    continue;
                }
                catch (MalformedURLException ex) {
                    Log.e("FiksuTracking", str);
                    Log.e("FiksuTracking", ex.toString());
                    continue;
                }
                continue;
            }
        }
    }
    
    @Override
    public void run() {
        try {
            this.uploadToTracking();
            // monitorenter(this)
            final EventUploader eventUploader = this;
            eventUploader.notifyAll();
            return;
        }
        finally {
            synchronized (this) {
                this.notifyAll();
            }
            // monitorexit(this)
        }
        try {
            final EventUploader eventUploader = this;
            eventUploader.notifyAll();
        }
        finally {
        }
        // monitorexit(this)
    }
}
