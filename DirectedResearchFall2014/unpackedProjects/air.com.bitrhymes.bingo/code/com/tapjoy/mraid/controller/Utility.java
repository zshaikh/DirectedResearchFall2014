package com.tapjoy.mraid.controller;

import android.annotation.*;
import com.tapjoy.mraid.view.*;
import android.os.*;
import android.net.*;
import android.text.*;
import com.tapjoy.*;
import android.webkit.*;
import android.app.*;
import android.widget.*;
import android.database.*;
import android.util.*;
import android.content.*;
import java.util.*;
import android.provider.*;
import org.json.*;
import java.io.*;

@TargetApi(14)
public class Utility extends Abstract
{
    private static final String TAG = "MRAID Utility";
    private Assets mAssetController;
    private Display mDisplayController;
    private MraidLocation mLocationController;
    private Network mNetworkController;
    private MraidSensor mSensorController;
    
    public Utility(final MraidView mraidView, final Context context) {
        super(mraidView, context);
        this.mAssetController = new Assets(mraidView, context);
        this.mDisplayController = new Display(mraidView, context);
        this.mLocationController = new MraidLocation(mraidView, context);
        this.mNetworkController = new Network(mraidView, context);
        this.mSensorController = new MraidSensor(mraidView, context);
        mraidView.addJavascriptInterface((Object)this.mAssetController, "MRAIDAssetsControllerBridge");
        mraidView.addJavascriptInterface((Object)this.mDisplayController, "MRAIDDisplayControllerBridge");
        mraidView.addJavascriptInterface((Object)this.mLocationController, "MRAIDLocationControllerBridge");
        mraidView.addJavascriptInterface((Object)this.mNetworkController, "MRAIDNetworkControllerBridge");
        mraidView.addJavascriptInterface((Object)this.mSensorController, "MRAIDSensorControllerBridge");
    }
    
    private void addCalendarEvent(final int i, final String s, final String s2, final String s3) {
        final ContentResolver contentResolver = this.mContext.getContentResolver();
        final long long1 = Long.parseLong(s);
        final long l = long1 + 3600000L;
        final ContentValues contentValues = new ContentValues();
        contentValues.put("calendar_id", i);
        contentValues.put("title", s2);
        contentValues.put("description", s3);
        contentValues.put("dtstart", long1);
        contentValues.put("hasAlarm", 1);
        contentValues.put("dtend", l);
        Uri uri;
        if (Integer.parseInt(Build$VERSION.SDK) == 8) {
            uri = contentResolver.insert(Uri.parse("content://com.android.calendar/events"), contentValues);
        }
        else {
            uri = contentResolver.insert(Uri.parse("content://calendar/events"), contentValues);
        }
        if (uri != null) {
            final long long2 = Long.parseLong(uri.getLastPathSegment());
            final ContentValues contentValues2 = new ContentValues();
            contentValues2.put("event_id", long2);
            contentValues2.put("method", 1);
            contentValues2.put("minutes", 15);
            if (Integer.parseInt(Build$VERSION.SDK) == 8) {
                contentResolver.insert(Uri.parse("content://com.android.calendar/reminders"), contentValues2);
            }
            else {
                contentResolver.insert(Uri.parse("content://calendar/reminders"), contentValues2);
            }
        }
        Toast.makeText(this.mContext, (CharSequence)"Event added to calendar", 0).show();
    }
    
    private String createTelUrl(final String str) {
        if (TextUtils.isEmpty((CharSequence)str)) {
            return null;
        }
        final StringBuilder sb = new StringBuilder("tel:");
        sb.append(str);
        return sb.toString();
    }
    
    private String getSupports() {
        String str = "supports: [ 'level-1', 'level-2', 'screen', 'orientation', 'network'";
        int n;
        if (this.mLocationController.allowLocationServices() && (this.mContext.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0 || this.mContext.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0)) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n != 0) {
            str += ", 'location'";
        }
        int n2;
        if (this.mContext.checkCallingOrSelfPermission("android.permission.SEND_SMS") == 0) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        if (n2 != 0) {
            str += ", 'sms'";
        }
        int n3;
        if (this.mContext.checkCallingOrSelfPermission("android.permission.CALL_PHONE") == 0) {
            n3 = 1;
        }
        else {
            n3 = 0;
        }
        if (n3 != 0) {
            str += ", 'phone'";
        }
        int n4;
        if (this.mContext.checkCallingOrSelfPermission("android.permission.WRITE_CALENDAR") == 0 && this.mContext.checkCallingOrSelfPermission("android.permission.READ_CALENDAR") == 0 && Build$VERSION.SDK_INT >= 14) {
            n4 = 1;
        }
        else {
            n4 = 0;
        }
        if (n4 != 0) {
            str += ", 'calendar'";
        }
        final String string = str + ", 'video'" + ", 'audio'" + ", 'map'" + ", 'email' ]";
        TapjoyLog.d("MRAID Utility", "getSupports: " + string);
        return string;
    }
    
    @JavascriptInterface
    public void activate(final String str) {
        TapjoyLog.d("MRAID Utility", "activate: " + str);
        if (str.equalsIgnoreCase("networkChange")) {
            this.mNetworkController.startNetworkListener();
        }
        else {
            if (this.mLocationController.allowLocationServices() && str.equalsIgnoreCase("locationChange")) {
                this.mLocationController.startLocationListener();
                return;
            }
            if (str.equalsIgnoreCase("shake")) {
                this.mSensorController.startShakeListener();
                return;
            }
            if (str.equalsIgnoreCase("tiltChange")) {
                this.mSensorController.startTiltListener();
                return;
            }
            if (str.equalsIgnoreCase("headingChange")) {
                this.mSensorController.startHeadingListener();
                return;
            }
            if (str.equalsIgnoreCase("orientationChange")) {
                this.mDisplayController.startConfigurationListener();
            }
        }
    }
    
    public String copyTextFromJarIntoAssetDir(final String s, final String s2) {
        return this.mAssetController.copyTextFromJarIntoAssetDir(s, s2);
    }
    
    public String copyTextFromJarIntoString(final String s) {
        return this.mAssetController.copyTextFromJarIntoString(s);
    }
    
    @JavascriptInterface
    public void createEvent(final String str, final String str2, final String str3) {
        TapjoyLog.d("MRAID Utility", "createEvent: date: " + str + " title: " + str2 + " body: " + str3);
        final ContentResolver contentResolver = this.mContext.getContentResolver();
        final String[] array = { "_id", "displayName", "_sync_account" };
        Cursor cursor;
        if (Integer.parseInt(Build$VERSION.SDK) == 8) {
            cursor = contentResolver.query(Uri.parse("content://com.android.calendar/calendars"), array, (String)null, (String[])null, (String)null);
        }
        else {
            cursor = contentResolver.query(Uri.parse("content://calendar/calendars"), array, (String)null, (String[])null, (String)null);
        }
        if (cursor == null || (cursor != null && !cursor.moveToFirst())) {
            Toast.makeText(this.mContext, (CharSequence)"No calendar account found", 1).show();
            if (cursor != null) {
                cursor.close();
            }
            return;
        }
        if (cursor.getCount() == 1) {
            this.addCalendarEvent(cursor.getInt(0), str, str2, str3);
        }
        else {
            final ArrayList<HashMap<String, String>> list = new ArrayList<HashMap<String, String>>();
            for (int i = 0; i < cursor.getCount(); ++i) {
                final HashMap<String, String> hashMap = new HashMap<String, String>();
                hashMap.put("ID", cursor.getString(0));
                hashMap.put("NAME", cursor.getString(1));
                hashMap.put("EMAILID", cursor.getString(2));
                list.add(hashMap);
                cursor.moveToNext();
            }
            final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this.mContext);
            alertDialog$Builder.setTitle((CharSequence)"Choose Calendar to save event to");
            alertDialog$Builder.setSingleChoiceItems((ListAdapter)new SimpleAdapter(this.mContext, (List)list, 17367053, new String[] { "NAME", "EMAILID" }, new int[] { 16908308, 16908309 }), -1, (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                public void onClick(final DialogInterface dialogInterface, final int n) {
                    Utility.this.addCalendarEvent(Integer.parseInt(list.get(n).get("ID")), str, str2, str3);
                    dialogInterface.cancel();
                }
            });
            alertDialog$Builder.create().show();
        }
        cursor.close();
    }
    
    @JavascriptInterface
    public void deactivate(final String str) {
        TapjoyLog.d("MRAID Utility", "deactivate: " + str);
        if (str.equalsIgnoreCase("networkChange")) {
            this.mNetworkController.stopNetworkListener();
        }
        else {
            if (str.equalsIgnoreCase("locationChange")) {
                this.mLocationController.stopAllListeners();
                return;
            }
            if (str.equalsIgnoreCase("shake")) {
                this.mSensorController.stopShakeListener();
                return;
            }
            if (str.equalsIgnoreCase("tiltChange")) {
                this.mSensorController.stopTiltListener();
                return;
            }
            if (str.equalsIgnoreCase("headingChange")) {
                this.mSensorController.stopHeadingListener();
                return;
            }
            if (str.equalsIgnoreCase("orientationChange")) {
                this.mDisplayController.stopConfigurationListener();
            }
        }
    }
    
    public void deleteOldAds() {
        this.mAssetController.deleteOldAds();
    }
    
    public void init(final float n) {
        final String string = "window.mraidview.fireChangeEvent({ state: 'default', network: '" + this.mNetworkController.getNetwork() + "'," + " size: " + this.mDisplayController.getSize() + "," + " placement: " + "'" + this.mMraidView.getPlacementType() + "'," + " maxSize: " + this.mDisplayController.getMaxSize() + ",expandProperties: " + this.mDisplayController.getMaxSize() + "," + " screenSize: " + this.mDisplayController.getScreenSize() + "," + " defaultPosition: { x:" + (int)(this.mMraidView.getLeft() / n) + ", y: " + (int)(this.mMraidView.getTop() / n) + ", width: " + (int)(this.mMraidView.getWidth() / n) + ", height: " + (int)(this.mMraidView.getHeight() / n) + " }," + " orientation:" + this.mDisplayController.getOrientation() + "," + this.getSupports() + ",viewable:true });";
        Log.d("MRAID Utility", "init: injection: " + string);
        this.mMraidView.injectMraidJavaScript(string);
        this.ready();
    }
    
    @JavascriptInterface
    public void makeCall(final String str) {
        TapjoyLog.d("MRAID Utility", "makeCall: number: " + str);
        final String telUrl = this.createTelUrl(str);
        if (telUrl == null) {
            this.mMraidView.raiseError("Bad Phone Number", "makeCall");
            return;
        }
        final Intent intent = new Intent("android.intent.action.CALL", Uri.parse(telUrl.toString()));
        intent.addFlags(268435456);
        this.mContext.startActivity(intent);
    }
    
    @JavascriptInterface
    public void mraidCreateEvent(final String s) {
        String string = null;
        String optString = null;
        String optString2 = null;
        String optString3 = null;
        if (Build$VERSION.SDK_INT < 14) {
            return;
        }
        final Calendar instance = Calendar.getInstance();
        final Calendar instance2 = Calendar.getInstance();
        while (true) {
            try {
                final JSONObject jsonObject = new JSONObject(s);
                final JSONObject jsonObject2 = jsonObject.getJSONObject("start");
                JSONObject optJSONObject = jsonObject.optJSONObject("end");
                if (optJSONObject == null) {
                    optJSONObject = jsonObject2;
                }
                string = jsonObject.getString("description");
                optString = jsonObject.optString("location");
                optString2 = jsonObject.optString("summary");
                optString3 = jsonObject.optString("status");
                instance.set(jsonObject2.getInt("year"), jsonObject2.getInt("month"), jsonObject2.getInt("day"), jsonObject2.getInt("hour"), jsonObject2.getInt("min"));
                instance2.set(optJSONObject.getInt("year"), optJSONObject.getInt("month"), optJSONObject.getInt("day"), optJSONObject.getInt("hour"), optJSONObject.getInt("min"));
                this.mMraidView.getContext().startActivity(new Intent("android.intent.action.INSERT").setData(CalendarContract$Events.CONTENT_URI).putExtra("beginTime", instance.getTimeInMillis()).putExtra("endTime", instance2.getTimeInMillis()).putExtra("title", optString2).putExtra("description", string).putExtra("eventLocation", optString).putExtra("eventStatus", optString3));
            }
            catch (JSONException ex) {
                ex.printStackTrace();
                continue;
            }
            break;
        }
    }
    
    public void ready() {
        this.mMraidView.injectMraidJavaScript("mraid.setState(\"" + this.mMraidView.getState() + "\");");
        this.mMraidView.injectMraidJavaScript("mraidview.fireReadyEvent();");
    }
    
    @JavascriptInterface
    public void sendMail(final String str, final String str2, final String str3) {
        TapjoyLog.d("MRAID Utility", "sendMail: recipient: " + str + " subject: " + str2 + " body: " + str3);
        final Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("plain/text");
        intent.putExtra("android.intent.extra.EMAIL", new String[] { str });
        intent.putExtra("android.intent.extra.SUBJECT", str2);
        intent.putExtra("android.intent.extra.TEXT", str3);
        intent.addFlags(268435456);
        this.mContext.startActivity(intent);
    }
    
    @JavascriptInterface
    public void sendSMS(final String str, final String str2) {
        TapjoyLog.d("MRAID Utility", "sendSMS: recipient: " + str + " body: " + str2);
        final Intent intent = new Intent("android.intent.action.VIEW");
        intent.putExtra("address", str);
        intent.putExtra("sms_body", str2);
        intent.setType("vnd.android-dir/mms-sms");
        intent.addFlags(268435456);
        this.mContext.startActivity(intent);
    }
    
    public void setMaxSize(final int n, final int n2) {
        this.mDisplayController.setMaxSize(n, n2);
    }
    
    @JavascriptInterface
    public void showAlert(final String s) {
        TapjoyLog.e("MRAID Utility", s);
    }
    
    @Override
    public void stopAllListeners() {
        try {
            this.mAssetController.stopAllListeners();
            this.mDisplayController.stopAllListeners();
            this.mLocationController.stopAllListeners();
            this.mNetworkController.stopAllListeners();
            this.mSensorController.stopAllListeners();
        }
        catch (Exception ex) {}
    }
    
    public String writeToDiskWrap(final InputStream inputStream, final String s, final boolean b, final String s2, final String s3) throws IllegalStateException, IOException {
        return this.mAssetController.writeToDiskWrap(inputStream, s, b, s2, s3);
    }
}
