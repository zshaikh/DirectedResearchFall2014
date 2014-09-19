package com.inmobi.androidsdk.impl.net;

import java.util.concurrent.atomic.*;
import com.inmobi.commons.internal.*;
import android.util.*;
import java.util.*;
import java.io.*;
import com.inmobi.androidsdk.impl.*;
import com.inmobi.androidsdk.*;
import java.net.*;
import android.view.*;

public final class IMRequestResponseManager
{
    private String a;
    private AtomicBoolean b;
    private HttpURLConnection c;
    
    public IMRequestResponseManager() {
        super();
        this.a = null;
        this.b = new AtomicBoolean();
    }
    
    private IMAdUnit a(final IMUserInfo imUserInfo) throws IMAdException, IOException {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "Http Status Code: " + this.c.getResponseCode());
        Label_0295: {
            if (this.c.getResponseCode() != 200) {
                break Label_0295;
            }
            while (true) {
                while (true) {
                    Label_0322: {
                        while (true) {
                            try {
                                final BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.c.getInputStream(), "UTF-8"));
                                try {
                                    final StringBuilder sb = new StringBuilder();
                                    while (true) {
                                        final String line = bufferedReader.readLine();
                                        if (line == null) {
                                            break;
                                        }
                                        sb.append(line).append("\n");
                                    }
                                    final String string = sb.toString();
                                    Log.d("InMobiAndroidSDK_3.6.2", "Ad Response: " + string);
                                    final Map<String, List<String>> headerFields = this.c.getHeaderFields();
                                    if (headerFields == null || !headerFields.containsKey("x-mkhoj-ph")) {
                                        break Label_0322;
                                    }
                                    final List<String> list = headerFields.get("x-mkhoj-ph");
                                    if (list != null && list.size() == 1) {
                                        final String trim = list.get(0).trim();
                                        final IMAdUnit buildAdUnitFromResponseData = IMXMLParser.buildAdUnitFromResponseData(new BufferedReader(new InputStreamReader(new ByteArrayInputStream(string.getBytes()), "UTF-8")));
                                        IMLog.debug("InMobiAndroidSDK_3.6.2", "Retrieved AdUnit: " + buildAdUnitFromResponseData);
                                        this.a(buildAdUnitFromResponseData, imUserInfo, trim);
                                        this.c.disconnect();
                                        this.a(bufferedReader);
                                        return buildAdUnitFromResponseData;
                                    }
                                    break Label_0322;
                                }
                                finally {}
                                this.c.disconnect();
                                this.a(bufferedReader);
                                throw;
                                IMLog.debug("InMobiAndroidSDK_3.6.2", "Invalid Request. This may be because of invalid appId or appId might not be in 'active' state.");
                                throw new IMAdException("Server did not return 200.", 300);
                            }
                            finally {
                                final BufferedReader bufferedReader = null;
                                continue;
                            }
                            break;
                        }
                    }
                    final String trim = null;
                    continue;
                }
            }
        }
    }
    
    private String a(final IMUserInfo imUserInfo, final String s, final String s2) {
        if (imUserInfo.isTestMode()) {
            return s2;
        }
        return s;
    }
    
    private String a(final HttpURLConnection httpURLConnection, final String s) {
    Label_0078_Outer:
        while (true) {
            while (true) {
                String string;
                while (true) {
                    try {
                        IMLog.debug("InMobiAndroidSDK_3.6.2", "HTTP Response Code: " + httpURLConnection.getResponseCode());
                        if (0 != 0) {
                            final boolean equalsIgnoreCase = s.equalsIgnoreCase(null);
                            string = null;
                            if (!equalsIgnoreCase) {
                                break Label_0056;
                            }
                        }
                        string = httpURLConnection.getURL().toString();
                        if (string == null || s.equalsIgnoreCase(string)) {
                            final String headerField = httpURLConnection.getHeaderField("location");
                            final Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                            if (headerFields != null && headerFields.containsKey("action-name")) {
                                final List<String> list = headerFields.get("action-name");
                                if (list != null && list.size() == 1) {
                                    this.setNewAdActionType(list.get(0).trim());
                                }
                            }
                            IMLog.debug("InMobiAndroidSDK_3.6.2", "Redirection URL: " + headerField);
                            return headerField;
                        }
                    }
                    catch (IOException ex) {
                        IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception getting response code for redirection URL", ex);
                        string = null;
                        continue Label_0078_Outer;
                    }
                    break;
                }
                final String headerField = string;
                continue;
            }
        }
    }
    
    private HttpURLConnection a(final String spec, final IMUserInfo imUserInfo, final ActionType actionType) throws IOException {
        a(this.c = (HttpURLConnection)new URL(spec).openConnection(), imUserInfo, actionType);
        return this.c;
    }
    
    private void a(final int n, final Object o, final IMHttpRequestCallback imHttpRequestCallback) {
        if (!this.b.get() && imHttpRequestCallback != null) {
            imHttpRequestCallback.notifyResult(n, o);
        }
    }
    
    private void a(final IMAdUnit imAdUnit, final IMUserInfo imUserInfo, final String deviceInfoUploadUrl) {
        if (imAdUnit == null) {
            return;
        }
        imAdUnit.setSendDeviceInfo(true);
        imAdUnit.setDeviceInfoUploadUrl(deviceInfoUploadUrl);
    }
    
    static /* synthetic */ void a(final IMRequestResponseManager imRequestResponseManager, final HttpURLConnection c) {
        imRequestResponseManager.c = c;
    }
    
    private void a(final Closeable obj) {
        if (obj == null) {
            return;
        }
        try {
            obj.close();
        }
        catch (IOException ex) {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception closing resource: " + obj, ex);
        }
    }
    
    private void a(final String s) throws IOException {
        this.c.setRequestProperty("Content-Length", Integer.toString(s.length()));
        BufferedWriter bufferedWriter;
        try {
            final BufferedWriter bufferedWriter2;
            bufferedWriter = (bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(this.c.getOutputStream())));
            final String s2 = s;
            bufferedWriter2.write(s2);
            final IMRequestResponseManager imRequestResponseManager = this;
            final BufferedWriter bufferedWriter3 = bufferedWriter;
            imRequestResponseManager.a(bufferedWriter3);
            return;
        }
        finally {
            final Object o2;
            final Object o = o2;
            bufferedWriter = null;
            final Object o3 = o;
        }
        while (true) {
            try {
                final BufferedWriter bufferedWriter2 = bufferedWriter;
                final String s2 = s;
                bufferedWriter2.write(s2);
                final IMRequestResponseManager imRequestResponseManager = this;
                final BufferedWriter bufferedWriter3 = bufferedWriter;
                imRequestResponseManager.a(bufferedWriter3);
                return;
                this.a(bufferedWriter);
                throw;
            }
            finally {
                continue;
            }
            break;
        }
    }
    
    private static void a(final HttpURLConnection httpURLConnection, final IMUserInfo imUserInfo, final ActionType actionType) throws ProtocolException {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setReadTimeout(30000);
        httpURLConnection.setRequestProperty("user-agent", imUserInfo.getPhoneDefaultUserAgent());
        String value;
        if (imUserInfo.isTestMode()) {
            value = "YES";
        }
        else {
            value = "NO";
        }
        httpURLConnection.setRequestProperty("x-mkhoj-testmode", value);
        httpURLConnection.setUseCaches(false);
        if (actionType == ActionType.AdClick) {
            httpURLConnection.setRequestMethod("GET");
        }
        else {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("content-type", "application/x-www-form-urlencoded");
        }
        if (imUserInfo.isTestMode()) {
            String testModeAdActionType;
            if (imUserInfo.getTestModeAdActionType() != null) {
                testModeAdActionType = imUserInfo.getTestModeAdActionType();
            }
            else {
                testModeAdActionType = "web";
            }
            httpURLConnection.setRequestProperty("x-mkhoj-adactiontype", testModeAdActionType);
        }
    }
    
    public void asyncRequestAd(final IMUserInfo imUserInfo, final IMNiceInfo imNiceInfo, final ActionType actionType, final String s, final String s2, final IMHttpRequestCallback imHttpRequestCallback) {
        new Thread() {
            @Override
            public void run() {
                try {
                    final String a = IMRequestResponseManager.this.a(imUserInfo, s, s2);
                    IMLog.debug("InMobiAndroidSDK_3.6.2", "Ad Serving URL: " + a);
                    final String a2 = IMHttpRequestBuilder.a(imUserInfo, actionType);
                    Log.d("InMobiAndroidSDK_3.6.2", a2);
                    IMRequestResponseManager.a(IMRequestResponseManager.this, IMRequestResponseManager.this.a(a, imUserInfo, actionType));
                    IMRequestResponseManager.this.a(a2);
                    IMRequestResponseManager.this.a(0, IMRequestResponseManager.this.a(imUserInfo), imHttpRequestCallback);
                }
                catch (IMAdException ex) {
                    IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception retrieving ad ", ex);
                    switch (ex.getCode()) {
                        case 300: {
                            IMRequestResponseManager.this.a(1, IMAdRequest.ErrorCode.INVALID_REQUEST, imHttpRequestCallback);
                            break;
                        }
                        case 100: {
                            goto Label_0282;
                            goto Label_0282;
                        }
                        case 200: {
                            goto Label_0300;
                            goto Label_0300;
                        }
                        case 400: {
                            goto Label_0318;
                            goto Label_0318;
                        }
                        case 500: {
                            goto Label_0336;
                            goto Label_0336;
                        }
                        case 600: {
                            goto Label_0354;
                            goto Label_0354;
                        }
                        case 700: {
                            goto Label_0372;
                            goto Label_0372;
                        }
                        case 800: {
                            goto Label_0390;
                            goto Label_0390;
                        }
                    }
                }
                catch (IOException ex2) {
                    IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception retrieving ad ", ex2);
                    if (ex2 instanceof SocketTimeoutException) {
                        IMRequestResponseManager.this.a(1, IMAdRequest.ErrorCode.AD_FETCH_TIMEOUT, imHttpRequestCallback);
                    }
                    else {
                        IMRequestResponseManager.this.a(1, IMAdRequest.ErrorCode.NETWORK_ERROR, imHttpRequestCallback);
                    }
                }
                catch (Exception ex3) {
                    IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception retrieving ad ", ex3);
                    IMRequestResponseManager.this.a(1, IMAdRequest.ErrorCode.INTERNAL_ERROR, imHttpRequestCallback);
                }
                finally {
                    imNiceInfo.processNiceParams(IMRequestResponseManager.this.c);
                }
            }
        }.start();
    }
    
    public void doCancel() {
        this.b.set(true);
        if (this.c != null) {
            this.c.disconnect();
        }
    }
    
    public String getNewAdActionType() {
        return this.a;
    }
    
    public String initiateClick(final String s, final IMUserInfo imUserInfo, final MotionEvent motionEvent, final List<?> list) throws IOException {
        final String appendClickParams = IMHttpRequestBuilder.appendClickParams(s, motionEvent, imUserInfo.getScreenDensity());
        IMLog.debug("InMobiAndroidSDK_3.6.2", ">>> Enter initiateClick, clickURL : " + appendClickParams);
        HttpURLConnection.setFollowRedirects(false);
        String value = null;
        if (list != null) {
            final boolean empty = list.isEmpty();
            value = null;
            if (!empty) {
                final boolean equals = "x-mkhoj-adactiontype".equals(list.get(0));
                value = null;
                if (equals) {
                    value = (String)list.get(1);
                }
            }
        }
        final HttpURLConnection a = this.a(appendClickParams, imUserInfo, ActionType.AdClick);
        if (value != null && !imUserInfo.isTestMode()) {
            a.setRequestProperty("x-mkhoj-adactionType", value);
        }
        return this.a(a, appendClickParams);
    }
    
    public void setNewAdActionType(final String a) {
        this.a = a;
    }
    
    public enum ActionType
    {
        AdClick("AdClick", 3), 
        AdRequest("AdRequest", 0), 
        AdRequest_Interstitial("AdRequest_Interstitial", 1), 
        DeviceInfoUpload("DeviceInfoUpload", 2);
        
        static {
            a = new ActionType[] { ActionType.AdRequest, ActionType.AdRequest_Interstitial, ActionType.DeviceInfoUpload, ActionType.AdClick };
        }
    }
}
