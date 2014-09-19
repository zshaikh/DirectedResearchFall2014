package com.chartboost.sdk.impl;

import android.content.*;
import android.graphics.*;
import android.text.*;
import org.json.*;
import android.os.*;
import com.chartboost.sdk.Libraries.*;
import android.view.*;
import android.widget.*;

public class e extends c implements b
{
    private static int c;
    private static int d;
    public f b;
    private g e;
    private TextView f;
    
    static {
        e.c = 50;
        e.d = 10;
    }
    
    public e(final Context context) {
        super(context);
        this.e = new g(context);
        this.b = new f(context);
        (this.f = new TextView(context)).setTypeface((Typeface)null, 1);
        this.f.setTextSize(2, 16.0f);
        this.f.setShadowLayer(1.0f, 1.0f, 1.0f, -1);
        this.f.setBackgroundColor(0);
        this.f.setTextColor(-16777216);
        this.f.setEllipsize(TextUtils$TruncateAt.END);
        this.setBackgroundColor(-3355444);
        this.setFocusable(false);
        this.addView((View)this.e);
        this.addView((View)this.f);
        this.addView((View)this.b);
    }
    
    @Override
    public int a() {
        return com.chartboost.sdk.Libraries.d.a(com.chartboost.sdk.impl.e.c + 2 * com.chartboost.sdk.impl.e.d, this.getContext());
    }
    
    @Override
    public void a(final JSONObject jsonObject, final int n) {
        this.f.setText((CharSequence)jsonObject.optString("name", "Unknown App"));
        final String optString = jsonObject.optString("deep-text");
        if (optString != null && !optString.equals("")) {
            this.b.setText((CharSequence)optString);
        }
        else {
            this.b.setText((CharSequence)jsonObject.optString("text", "VIEW"));
        }
        final JSONObject optJSONObject = jsonObject.optJSONObject("assets");
        if (optJSONObject != null) {
            final JSONObject optJSONObject2 = optJSONObject.optJSONObject("icon");
            if (optJSONObject2 != null) {
                final Bundle bundle = new Bundle();
                bundle.putInt("index", n);
                com.chartboost.sdk.Libraries.e.a().a(optJSONObject2.optString("url"), optJSONObject2.optString("checksum"), null, this.e, bundle);
            }
        }
        this.b();
    }
    
    protected void b() {
        final int a = com.chartboost.sdk.Libraries.d.a(com.chartboost.sdk.impl.e.c, this.getContext());
        final LinearLayout$LayoutParams layoutParams = new LinearLayout$LayoutParams(a, a);
        final LinearLayout$LayoutParams layoutParams2 = new LinearLayout$LayoutParams(-2, -1);
        final LinearLayout$LayoutParams layoutParams3 = new LinearLayout$LayoutParams(-2, -2);
        final int a2 = com.chartboost.sdk.Libraries.d.a(com.chartboost.sdk.impl.e.d, this.getContext());
        layoutParams.setMargins(a2, a2, a2, a2);
        layoutParams2.setMargins(a2, a2, a2, a2);
        layoutParams3.setMargins(a2, a2, a2, a2);
        layoutParams2.weight = 1.0f;
        this.f.setGravity(16);
        layoutParams3.gravity = 16;
        this.e.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        this.e.setScaleType(ImageView$ScaleType.FIT_CENTER);
        this.f.setLayoutParams((ViewGroup$LayoutParams)layoutParams2);
        this.b.setLayoutParams((ViewGroup$LayoutParams)layoutParams3);
    }
}
