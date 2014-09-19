package com.fusepowered.m1.android;

import android.app.*;
import android.content.*;
import android.content.res.*;
import android.os.*;
import android.view.*;

public class MMActivity extends Activity
{
    long creatorAdImplInternalId;
    private MMBaseActivity mmBaseActivity;
    
    public boolean dispatchTouchEvent(final MotionEvent motionEvent) {
        if (this.mmBaseActivity != null) {
            return this.mmBaseActivity.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }
    
    boolean dispatchTouchEventSuper(final MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }
    
    public void finish() {
        if (this.mmBaseActivity != null) {
            this.mmBaseActivity.finish();
            return;
        }
        MMSDK.Event.overlayClosed(MMAdImplController.getAdImplWithId(this.creatorAdImplInternalId));
        super.finish();
    }
    
    public void finishSuper() {
        MMSDK.Event.overlayClosed(MMAdImplController.getAdImplWithId(this.creatorAdImplInternalId));
        super.finish();
    }
    
    protected MMBaseActivity getWrappedActivity() {
        return this.mmBaseActivity;
    }
    
    protected void onActivityResult(final int n, final int n2, final Intent intent) {
        if (this.mmBaseActivity != null) {
            this.mmBaseActivity.onActivityResult(n, n2, intent);
            return;
        }
        super.onActivityResult(n, n2, intent);
    }
    
    void onActivityResultSuper(final int n, final int n2, final Intent intent) {
        super.onActivityResult(n, n2, intent);
    }
    
    public void onConfigurationChanged(final Configuration configuration) {
        if (this.mmBaseActivity != null) {
            this.mmBaseActivity.onConfigurationChanged(configuration);
            return;
        }
        super.onConfigurationChanged(configuration);
    }
    
    void onConfigurationChangedSuper(final Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }
    
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = null;
        this.creatorAdImplInternalId = this.getIntent().getLongExtra("internalId", -4L);
        try {
            stringExtra = this.getIntent().getStringExtra("class");
            this.mmBaseActivity = (MMBaseActivity)Class.forName(stringExtra).newInstance();
            this.mmBaseActivity.activity = this;
            this.mmBaseActivity.onCreate(bundle);
        }
        catch (Exception ex) {
            MMSDK.Log.e("Could not start activity for %s. %s", stringExtra, ex.getMessage());
            ex.printStackTrace();
            this.finish();
        }
    }
    
    void onCreateSuper(final Bundle bundle) {
        super.onCreate(bundle);
    }
    
    protected void onDestroy() {
        if (this.mmBaseActivity != null) {
            this.mmBaseActivity.onDestroy();
            return;
        }
        super.onDestroy();
    }
    
    void onDestroySuper() {
        super.onDestroy();
    }
    
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        if (this.mmBaseActivity != null) {
            return this.mmBaseActivity.onKeyDown(n, keyEvent);
        }
        return super.onKeyDown(n, keyEvent);
    }
    
    boolean onKeyDownSuper(final int n, final KeyEvent keyEvent) {
        return super.onKeyDown(n, keyEvent);
    }
    
    protected void onPause() {
        if (this.mmBaseActivity != null) {
            this.mmBaseActivity.onPause();
            return;
        }
        super.onPause();
    }
    
    void onPauseSuper() {
        super.onPause();
    }
    
    protected void onRestart() {
        if (this.mmBaseActivity != null) {
            this.mmBaseActivity.onRestart();
            return;
        }
        super.onRestart();
    }
    
    void onRestartSuper() {
        super.onRestart();
    }
    
    protected void onRestoreInstanceState(final Bundle bundle) {
        if (this.mmBaseActivity != null) {
            this.mmBaseActivity.onRestoreInstanceState(bundle);
            return;
        }
        super.onRestoreInstanceState(bundle);
    }
    
    void onRestoreInstanceStateSuper(final Bundle bundle) {
        super.onRestoreInstanceState(bundle);
    }
    
    protected void onResume() {
        if (this.mmBaseActivity != null) {
            this.mmBaseActivity.onResume();
            return;
        }
        super.onResume();
    }
    
    void onResumeSuper() {
        super.onResume();
    }
    
    public Object onRetainNonConfigurationInstance() {
        if (this.mmBaseActivity != null) {
            return this.mmBaseActivity.onRetainNonConfigurationInstance();
        }
        return super.onRetainNonConfigurationInstance();
    }
    
    Object onRetainNonConfigurationInstanceSuper() {
        return super.onRetainNonConfigurationInstance();
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        if (this.mmBaseActivity != null) {
            this.mmBaseActivity.onSaveInstanceState(bundle);
            return;
        }
        super.onSaveInstanceState(bundle);
    }
    
    void onSaveInstanceStateSuper(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }
    
    protected void onStart() {
        if (this.mmBaseActivity != null) {
            this.mmBaseActivity.onStart();
            return;
        }
        super.onStart();
    }
    
    void onStartSuper() {
        super.onStart();
    }
    
    protected void onStop() {
        if (this.mmBaseActivity != null) {
            this.mmBaseActivity.onStop();
            return;
        }
        super.onStop();
    }
    
    void onStopSuper() {
        super.onStop();
    }
    
    public void onWindowFocusChanged(final boolean b) {
        if (this.mmBaseActivity != null) {
            this.mmBaseActivity.onWindowFocusChanged(b);
            return;
        }
        super.onWindowFocusChanged(b);
    }
    
    void onWindowFocusChangedSuper(final boolean b) {
        super.onWindowFocusChanged(b);
    }
}
