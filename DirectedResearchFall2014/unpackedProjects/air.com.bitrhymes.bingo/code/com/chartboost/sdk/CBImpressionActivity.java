package com.chartboost.sdk;

import android.app.*;
import android.os.*;
import android.widget.*;
import android.content.*;
import android.view.*;

public final class CBImpressionActivity extends Activity
{
    public static final String PARAM_FULLSCREEN = "paramFullscreen";
    protected Chartboost a;
    
    public void onBackPressed() {
        if (this.a.b()) {
            return;
        }
        super.onBackPressed();
    }
    
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.requestWindowFeature(1);
        if (this.getIntent().getBooleanExtra("paramFullscreen", false)) {
            this.getWindow().addFlags(1024);
        }
        this.getWindow().setWindowAnimations(0);
        this.setContentView((View)new RelativeLayout((Context)this));
        (this.a = Chartboost.sharedChartboost()).a(this);
    }
    
    protected void onDestroy() {
        super.onDestroy();
        this.a.c(this);
    }
    
    protected void onStart() {
        super.onStart();
        this.a.a((Activity)this);
    }
    
    protected void onStop() {
        super.onStop();
        this.a.b(this);
    }
}
