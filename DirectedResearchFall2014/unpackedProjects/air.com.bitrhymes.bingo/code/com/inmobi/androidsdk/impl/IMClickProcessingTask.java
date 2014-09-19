package com.inmobi.androidsdk.impl;

import android.os.*;
import com.inmobi.androidsdk.ai.container.*;
import android.view.*;
import com.inmobi.commons.internal.*;
import android.net.*;
import android.content.*;
import com.inmobi.androidsdk.impl.net.*;
import java.util.*;

public class IMClickProcessingTask extends AsyncTask<Void, Void, String>
{
    private final IMAdUnit a;
    private final IMUserInfo b;
    private final Context c;
    private Message d;
    private Message e;
    private Message f;
    private IMWebView.IMWebViewListener g;
    private MotionEvent h;
    
    public IMClickProcessingTask(final IMAdUnit a, final IMUserInfo b, final Context c, final MotionEvent h, final Message d, final Message e, final Message f, final IMWebView.IMWebViewListener g) {
        super();
        this.a = a;
        this.b = b;
        this.c = c;
        this.d = d;
        this.e = e;
        this.f = f;
        this.g = g;
        this.h = h;
    }
    
    private void a(final String str) {
        if (str != null) {
            try {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "Click target URL: " + str);
                IMLog.debug("InMobiAndroidSDK_3.6.2", "AdActionName: " + this.a.getAdActionName());
                if (this.a.getAdActionName() != IMAdUnit.AdActionNames.AdActionName_SMS) {
                    goto Label_0110;
                }
                this.b(str);
                if (this.f != null) {
                    this.f.sendToTarget();
                }
                return;
            }
            catch (ActivityNotFoundException ex) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "Operation could not be performed : " + str, (Throwable)ex);
                return;
            }
            catch (Exception ex2) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "Error executing post click actions on URL : " + str, ex2);
                return;
            }
            final Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(268435456);
            this.c.startActivity(intent);
            if (this.f != null) {
                this.f.sendToTarget();
                return;
            }
        }
        return;
        this.f.sendToTarget();
    }
    
    private void b(final String s) {
        final int index = s.indexOf("&Body=", 0);
        String substring;
        String substring2;
        if (index > 0) {
            substring = s.substring(index + "&Body=".length());
            substring2 = s.substring(0, index);
        }
        else {
            substring2 = s;
            substring = null;
        }
        final Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse(substring2));
        intent.addFlags(268435456);
        intent.putExtra("compose_mode", true);
        if (substring != null) {
            intent.putExtra("sms_body", IMHttpRequestBuilder.getURLDecoded(substring, "UTF-8"));
        }
        this.c.startActivity(intent);
    }
    
    protected String doInBackground(final Void... array) {
        IMRequestResponseManager imRequestResponseManager = null;
        String initiateClick;
        try {
            imRequestResponseManager = new IMRequestResponseManager();
            final ArrayList<String> list = new ArrayList<String>();
            list.add("x-mkhoj-adactiontype");
            list.add(this.a.getAdActionName().toString());
            if (this.a.getAdType().equals(IMAdUnit.AdTypes.SEARCH)) {
                this.h = null;
            }
            initiateClick = imRequestResponseManager.initiateClick(this.a.getTargetUrl(), this.b, this.h, list);
            final IMRequestResponseManager imRequestResponseManager2 = imRequestResponseManager;
            final String s = imRequestResponseManager2.getNewAdActionType();
            final String s3;
            final String s2 = s3 = s;
            if (s3 != null) {
                final IMClickProcessingTask imClickProcessingTask = this;
                final IMAdUnit imAdUnit = imClickProcessingTask.a;
                final String s4 = s2;
                final IMAdUnit.AdActionNames adActionNames = IMAdUnit.adActionNamefromString(s4);
                imAdUnit.setAdActionName(adActionNames);
                return initiateClick;
            }
            return initiateClick;
        }
        catch (Exception ex) {
            initiateClick = null;
        }
        while (true) {
            try {
                final IMRequestResponseManager imRequestResponseManager2 = imRequestResponseManager;
                final String s = imRequestResponseManager2.getNewAdActionType();
                final String s3;
                final String s2 = s3 = s;
                if (s3 != null) {
                    final IMClickProcessingTask imClickProcessingTask = this;
                    final IMAdUnit imAdUnit = imClickProcessingTask.a;
                    final String s4 = s2;
                    final IMAdUnit.AdActionNames adActionNames = IMAdUnit.adActionNamefromString(s4);
                    imAdUnit.setAdActionName(adActionNames);
                    return initiateClick;
                }
                return initiateClick;
                final Exception ex;
                IMLog.debug("InMobiAndroidSDK_3.6.2", "Encountered generic exception initiating click", ex);
                return initiateClick;
            }
            catch (Exception ex) {
                continue;
            }
            break;
        }
    }
    
    protected void onPostExecute(final String s) {
        this.a(s);
        try {
            if (this.d != null) {
                this.d.sendToTarget();
            }
        }
        catch (Exception ex) {}
    }
}
