package com.tapjoy;

import java.util.*;
import android.content.*;
import java.io.*;
import android.app.*;

public class TJCOffers
{
    private static final String TAG = "TapjoyOffers";
    private static TapjoyOffersNotifier tapjoyOffersNotifier;
    Context context;
    
    public TJCOffers(final Context context) {
        super();
        this.context = context;
    }
    
    public static void getOffersNotifierResponse() {
        if (TJCOffers.tapjoyOffersNotifier != null) {
            TJCOffers.tapjoyOffersNotifier.getOffersResponse();
        }
    }
    
    public static void getOffersNotifierResponseFailed(final String s) {
        if (TJCOffers.tapjoyOffersNotifier != null) {
            TJCOffers.tapjoyOffersNotifier.getOffersResponseFailed(s);
        }
    }
    
    public void showOffers(final TapjoyOffersNotifier tapjoyOffersNotifier) {
        this.showOffersWithCurrencyID(null, false, tapjoyOffersNotifier);
    }
    
    public void showOffersWithCurrencyID(final String s, final boolean b, final TJEventData tjEventData, final String s2, final TapjoyOffersNotifier tapjoyOffersNotifier) {
        TJCOffers.tapjoyOffersNotifier = tapjoyOffersNotifier;
        String s3;
        if (b) {
            s3 = "1";
        }
        else {
            s3 = "0";
        }
        final HashMap<Object, Object> hashMap = new HashMap<Object, Object>(TapjoyConnectCore.getURLParams());
        TapjoyUtil.safePut((Map<String, String>)hashMap, "currency_id", s, true);
        TapjoyUtil.safePut((Map<String, String>)hashMap, "currency_selector", s3, true);
        hashMap.putAll(TapjoyConnectCore.getVideoParams());
        final Intent intent = new Intent(this.context, (Class)TJCOffersWebView.class);
        if (tjEventData != null) {
            TapjoyLog.i("TapjoyOffers", "showOffers for eventName: " + tjEventData.name);
        }
        if (s2 != null && s2.length() > 0) {
            intent.putExtra("callback_id", s2);
        }
        intent.putExtra("view_type", 2);
        intent.putExtra("tjevent", (Serializable)tjEventData);
        intent.putExtra("legacy_view", true);
        intent.putExtra("URL_PARAMS", (Serializable)hashMap);
        if (this.context instanceof Activity) {
            ((Activity)this.context).startActivityForResult(intent, 0);
            return;
        }
        intent.setFlags(268435456);
        this.context.startActivity(intent);
    }
    
    public void showOffersWithCurrencyID(final String s, final boolean b, final TapjoyOffersNotifier tapjoyOffersNotifier) {
        this.showOffersWithCurrencyID(s, b, null, null, tapjoyOffersNotifier);
    }
}
