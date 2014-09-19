package com.tapjoy;

import android.content.res.*;
import android.content.*;
import android.util.*;
import android.view.*;

public class TapjoyDisplayMetricsUtil
{
    private Configuration configuration;
    private Context context;
    private DisplayMetrics metrics;
    
    public TapjoyDisplayMetricsUtil(final Context context) {
        super();
        this.context = context;
        this.metrics = new DisplayMetrics();
        ((WindowManager)this.context.getSystemService("window")).getDefaultDisplay().getMetrics(this.metrics);
        this.configuration = this.context.getResources().getConfiguration();
    }
    
    public int getScreenDensityDPI() {
        return this.metrics.densityDpi;
    }
    
    public float getScreenDensityScale() {
        return this.metrics.density;
    }
    
    public int getScreenLayoutSize() {
        return 0xF & this.configuration.screenLayout;
    }
}
