package com.chartboost.sdk.impl;

import android.content.*;
import android.view.*;
import com.chartboost.sdk.Libraries.*;
import org.json.*;
import com.chartboost.sdk.*;
import android.os.*;
import android.widget.*;

public class d extends c implements b
{
    private static int b;
    private static int c;
    private g d;
    
    static {
        d.b = 100;
        d.c = 5;
    }
    
    public d(final Context context) {
        super(context);
        this.addView((View)(this.d = new g(context)), (ViewGroup$LayoutParams)new LinearLayout$LayoutParams(-1, -1));
    }
    
    @Override
    public int a() {
        return com.chartboost.sdk.Libraries.d.a(com.chartboost.sdk.impl.d.b + 2 * com.chartboost.sdk.impl.d.c, this.getContext());
    }
    
    @Override
    public void a(final JSONObject jsonObject, final int n) {
        final boolean portrait = Chartboost.sharedChartboost().getOrientation().isPortrait();
        final JSONObject optJSONObject = jsonObject.optJSONObject("assets");
        if (optJSONObject != null) {
            String s;
            if (portrait) {
                s = "portrait";
            }
            else {
                s = "landscape";
            }
            final JSONObject optJSONObject2 = optJSONObject.optJSONObject(s);
            if (optJSONObject2 != null) {
                final Bundle bundle = new Bundle();
                bundle.putInt("index", n);
                com.chartboost.sdk.impl.o.a().a(optJSONObject2.optString("url"), optJSONObject2.optString("checksum"), null, this.d, bundle);
            }
        }
    }
}
