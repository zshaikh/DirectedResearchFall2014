package com.fusepowered.a1;

import android.app.*;
import android.os.*;
import android.view.*;

public class A1InterstitialActivity extends Activity
{
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        ApplifierImpactUtils.Log("ApplifierImpactFullscreenActivity->onCreate()", this);
        if (ApplifierImpact.instance != null) {
            ApplifierImpact.instance.changeActivity(this);
            return;
        }
        ApplifierImpactUtils.Log("onCreate() Impact instance is NULL!", this);
    }
    
    protected void onDestroy() {
        super.onDestroy();
        ApplifierImpactUtils.Log("ApplifierImpactFullscreenActivity->onDestroy()", this);
    }
    
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        return false;
    }
    
    public void onResume() {
        super.onResume();
        ApplifierImpactUtils.Log("ApplifierImpactFullscreenActivity->onResume()", this);
        if (ApplifierImpact.instance != null) {
            ApplifierImpact.instance.changeActivity(this);
            return;
        }
        ApplifierImpactUtils.Log("onResume() Impact instance is NULL!", this);
    }
}
