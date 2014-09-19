package com.inmobi.activity;

import android.app.*;
import android.view.*;
import android.content.*;
import android.os.*;

public class LauncherActivity extends Activity
{
    public void onClickAdURLTesting(final View view) {
        this.startActivity(new Intent((Context)this, (Class)AdCreativeTesting.class));
    }
    
    public void onClickInmobiAd(final View view) {
        this.startActivity(new Intent((Context)this, (Class)InMobiAdActivity.class));
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903042);
    }
}
