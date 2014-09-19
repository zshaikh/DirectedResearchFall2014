package com.inmobi.androidsdk.impl;

import java.util.concurrent.atomic.*;
import org.apache.http.impl.client.*;
import com.inmobi.commons.internal.*;
import org.apache.http.client.entity.*;
import org.apache.http.client.methods.*;
import org.apache.http.*;
import org.apache.http.message.*;
import android.telephony.cdma.*;
import android.telephony.gsm.*;
import android.telephony.*;
import java.util.*;
import org.json.*;
import java.net.*;
import android.content.*;
import android.net.wifi.*;
import java.lang.ref.*;
import android.os.*;
import org.apache.http.client.*;

public class IMNiceInfo
{
    private List<ScanResult> a;
    private Context b;
    private String c;
    private Long d;
    private Long e;
    private AtomicLong f;
    private IMUserInfo g;
    private a h;
    
    public IMNiceInfo(final Context b, final IMUserInfo g) {
        super();
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = 0L;
        this.e = 0L;
        this.g = null;
        this.h = null;
        this.b = b;
        this.g = g;
        this.scanWifiAP();
        this.f = new AtomicLong(0L);
    }
    
    static /* synthetic */ void a(final IMNiceInfo imNiceInfo, final a h) {
        imNiceInfo.h = h;
    }
    
    static /* synthetic */ void a(final IMNiceInfo imNiceInfo, final List a) {
        imNiceInfo.a = (List<ScanResult>)a;
    }
    
    private boolean a() {
        return this.b.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0;
    }
    
    private boolean b() {
        return this.b.checkCallingOrSelfPermission("android.permission.ACCESS_WIFI_STATE") == 0;
    }
    
    private void c() {
        try {
            final DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
            final HttpPost httpPost = new HttpPost(this.c);
            final List<NameValuePair> d = this.d();
            if (d == null) {
                IMLog.internal("InMobiAndroidSDK_3.6.2", "NICE Params not present");
                return;
            }
            IMLog.internal("InMobiAndroidSDK_3.6.2", "NICE Param: " + d);
            httpPost.setEntity((HttpEntity)new UrlEncodedFormEntity((List)d));
            if (((HttpClient)defaultHttpClient).execute((HttpUriRequest)httpPost).getStatusLine().getStatusCode() == 200) {
                IMLog.internal("InMobiAndroidSDK_3.6.2", "NICE params posted Successfully");
            }
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    private List<NameValuePair> d() {
        List<BasicNameValuePair> list;
        if (this.g == null) {
            IMLog.internal("InMobiAndroidSDK_3.6.2", "User Info Not initialised");
            list = null;
        }
        else {
            list = (List<BasicNameValuePair>)new ArrayList<NameValuePair>(4);
            final String cellInfo = this.getCellInfo();
            final String simInfo = this.getSimInfo();
            final String wifiInfo = this.getWifiInfo();
            final String timeStamp = this.getTimeStamp();
            if (cellInfo != null) {
                list.add((NameValuePair)new BasicNameValuePair("d-n-cell", cellInfo));
            }
            if (simInfo != null) {
                list.add((NameValuePair)new BasicNameValuePair("d-n-sim", simInfo));
            }
            if (wifiInfo != null) {
                list.add((NameValuePair)new BasicNameValuePair("d-n-wifi", wifiInfo));
            }
            if ((simInfo != null || cellInfo != null || wifiInfo != null) && timeStamp != null) {
                list.add((NameValuePair)new BasicNameValuePair("d-n-time", timeStamp));
                final String uidMapEncrypted = this.g.getUIDMapEncrypted();
                final String randomKey = this.g.getRandomKey();
                final String rsakeyVersion = this.g.getRsakeyVersion();
                if (uidMapEncrypted != null && randomKey != null && rsakeyVersion != null) {
                    list.add((NameValuePair)new BasicNameValuePair("u-id-map", uidMapEncrypted));
                    list.add((NameValuePair)new BasicNameValuePair("u-id-key", randomKey));
                    list.add((NameValuePair)new BasicNameValuePair("u-key-ver", rsakeyVersion));
                }
            }
            if (list.isEmpty()) {
                return null;
            }
        }
        return (List<NameValuePair>)list;
    }
    
    public String getCellInfo() {
        if (!this.a()) {
            IMLog.internal("InMobiAndroidSDK_3.6.2", "Access coarse permission not granted.Cant collect Cell Info");
            return null;
        }
        try {
            final JSONObject jsonObject = new JSONObject();
            final TelephonyManager telephonyManager = (TelephonyManager)this.b.getSystemService("phone");
            final String networkOperator = telephonyManager.getNetworkOperator();
            final CellLocation cellLocation = telephonyManager.getCellLocation();
            if (cellLocation != null && networkOperator != null && !networkOperator.equals("")) {
                final String substring = networkOperator.substring(0, 3);
                final String substring2 = networkOperator.substring(3);
                if (cellLocation instanceof CdmaCellLocation) {
                    jsonObject.put("a1", 2);
                    final CdmaCellLocation cdmaCellLocation = (CdmaCellLocation)cellLocation;
                    final int networkId = cdmaCellLocation.getNetworkId();
                    final int baseStationId = cdmaCellLocation.getBaseStationId();
                    final int systemId = cdmaCellLocation.getSystemId();
                    if (networkId != -1 && baseStationId != -1 && systemId != -1) {
                        jsonObject.put("a2", (Object)(String.valueOf(substring) + "-" + substring2 + "-" + Integer.toHexString(networkId) + "-" + Integer.toHexString(baseStationId) + "-" + Integer.toHexString(systemId)));
                    }
                }
                else {
                    jsonObject.put("a1", 1);
                    final GsmCellLocation gsmCellLocation = (GsmCellLocation)cellLocation;
                    final int cid = gsmCellLocation.getCid();
                    final int lac = gsmCellLocation.getLac();
                    if (cid != -1 && lac != -1) {
                        jsonObject.put("a2", (Object)(String.valueOf(substring) + "-" + substring2 + "-" + Integer.toHexString(lac) + "-" + Integer.toHexString(cid)));
                    }
                }
                if (jsonObject.length() != 0) {
                    return new JSONObject().put("a", (Object)jsonObject).toString();
                }
            }
        }
        catch (Exception ex) {
            IMLog.internal("InMobiAndroidSDK_3.6.2", "Error Getting NICE param Cell Info", ex);
            return null;
        }
        return null;
    }
    
    public String getSimInfo() {
        if (!this.a()) {
            IMLog.internal("InMobiAndroidSDK_3.6.2", "Access coarse permission not granted.Cant collect Sim Info");
            return null;
        }
        try {
            final JSONObject jsonObject = new JSONObject();
            final String simOperator = ((TelephonyManager)this.b.getSystemService("phone")).getSimOperator();
            if (simOperator != null && !simOperator.equals("")) {
                jsonObject.put("b1", (Object)(String.valueOf(simOperator.substring(0, 3)) + "-" + simOperator.substring(3)));
            }
            if (jsonObject.length() != 0) {
                return new JSONObject().put("b", (Object)jsonObject).toString();
            }
        }
        catch (Exception ex) {
            IMLog.internal("InMobiAndroidSDK_3.6.2", "Error Getting NICE Param Sim Info", ex);
            return null;
        }
        return null;
    }
    
    public String getTimeStamp() {
        try {
            final JSONObject jsonObject = new JSONObject();
            final Calendar instance = Calendar.getInstance();
            final long timeInMillis = instance.getTimeInMillis();
            final int value = instance.get(15);
            jsonObject.put("d1", timeInMillis);
            jsonObject.put("d2", value);
            if (jsonObject.length() != 0) {
                return new JSONObject().put("d", (Object)jsonObject).toString();
            }
        }
        catch (Exception ex) {
            IMLog.internal("InMobiAndroidSDK_3.6.2", "Error Getting NICE param Timestamp", ex);
            return null;
        }
        return null;
    }
    
    public String getWifiInfo() {
        if (!this.b()) {
            IMLog.internal("InMobiAndroidSDK_3.6.2", "Access wifi permission not granted.Cant collect get wifi access point Info");
            return null;
        }
        try {
            final JSONArray jsonArray = new JSONArray();
            if (this.a != null) {
                for (int i = 0; i < this.a.size(); ++i) {
                    final JSONObject jsonObject = new JSONObject();
                    jsonObject.put("c1a", (Object)this.a.get(i).SSID);
                    jsonObject.put("c1b", (Object)this.a.get(i).BSSID);
                    jsonObject.put("c1c", this.a.get(i).level);
                    jsonArray.put(i, (Object)jsonObject);
                }
            }
            if (jsonArray.length() != 0) {
                return new JSONObject().put("c", (Object)jsonArray).toString();
            }
        }
        catch (Exception ex) {
            IMLog.internal("InMobiAndroidSDK_3.6.2", "Error Getting NICE Param Wifi Apian", ex);
            return null;
        }
        return null;
    }
    
    public void processNiceParams(final HttpURLConnection httpURLConnection) {
    Label_0149_Outer:
        while (true) {
            if (httpURLConnection == null) {
                try {
                    IMLog.internal("InMobiAndroidSDK_3.6.2", "HTTP Connection lost.Cannot retreive nice url");
                    return;
                    // iftrue(Label_0090:, d.longValue() >= IMConfigConstants.MIN_NICE_RETRY_INERVAL.longValue())
                    // iftrue(Label_0220:, !Boolean.valueOf(Boolean.parseBoolean(httpURLConnection.getHeaderField("x-inmobi-ph-enable"))).booleanValue())
                Block_4:
                    while (true) {
                        final String headerField = httpURLConnection.getHeaderField("x-inmobi-ph-url");
                        final Long d = Long.parseLong(httpURLConnection.getHeaderField("x-inmobi-ph-intvl-sec"));
                        final Long value = Long.parseLong(httpURLConnection.getHeaderField("x-inmobi-ph-lse-sec"));
                        break Block_4;
                        continue Label_0149_Outer;
                    }
                    final Long d = IMConfigConstants.MIN_NICE_RETRY_INERVAL;
                    while (true) {
                        Label_0090: {
                            break Label_0090;
                            final String headerField;
                            this.c = headerField;
                            this.d = d;
                            final Long value;
                            this.e = value;
                            IMLog.internal("InMobiAndroidSDK_3.6.2", "NICE URL: " + this.c);
                            new Thread(new Runnable() {
                                @Override
                                public void run() {
                                    Looper.prepare();
                                    if (IMNiceInfo.this.h != null) {
                                        IMNiceInfo.this.h.removeMessages(1);
                                    }
                                    else {
                                        IMNiceInfo.a(IMNiceInfo.this, new a(IMNiceInfo.this));
                                    }
                                    if (IMNiceInfo.this.d == 0L || IMNiceInfo.this.e == 0L) {
                                        return;
                                    }
                                    IMNiceInfo.this.f.set(IMNiceInfo.this.e / IMNiceInfo.this.d);
                                    IMNiceInfo.this.h.sendEmptyMessage(1);
                                    Looper.loop();
                                }
                            }).start();
                            return;
                        }
                        continue;
                    }
                }
                // iftrue(Label_0220:, headerField.equals((Object)this.c) && value.toString().equals((Object)this.e.toString()) && d.toString().equals((Object)this.d.toString()) && this.f.get() != 0L)
                catch (Exception ex) {
                    IMLog.internal("InMobiAndroidSDK_3.6.2", "Failed to process NICE params", ex);
                }
                Label_0220: {
                    return;
                }
            }
            continue;
        }
    }
    
    public void scanWifiAP() {
        if (!this.b()) {
            IMLog.internal("InMobiAndroidSDK_3.6.2", "Access wifi permission not granted.Cant collect scan wifi Info");
        }
        else {
            try {
                final IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.wifi.SCAN_RESULTS");
                this.b.registerReceiver((BroadcastReceiver)new BroadcastReceiver() {
                    public void onReceive(final Context context, final Intent intent) {
                        IMNiceInfo.a(IMNiceInfo.this, ((WifiManager)context.getSystemService("wifi")).getScanResults());
                    }
                }, intentFilter);
                final WifiManager wifiManager = (WifiManager)this.b.getSystemService("wifi");
                this.a = (List<ScanResult>)wifiManager.getScanResults();
                if (this.a == null) {
                    wifiManager.startScan();
                }
            }
            catch (Exception ex) {
                IMLog.internal("InMobiAndroidSDK_3.6.2", "Error Setting Wifi Apian", ex);
            }
        }
    }
    
    static class a extends Handler
    {
        private final WeakReference<IMNiceInfo> a;
        
        public a(final IMNiceInfo referent) {
            super();
            this.a = new WeakReference<IMNiceInfo>(referent);
        }
        
        public void handleMessage(final Message message) {
            switch (message.what) {
                case 1: {
                    if (this.a.get().f.get() > 0L) {
                        this.a.get().c();
                        this.a.get().f.set(this.a.get().f.get() - 1L);
                        this.sendEmptyMessageDelayed(1, 1000L * this.a.get().d);
                        break;
                    }
                    break;
                }
            }
            super.handleMessage(message);
        }
    }
}
