package com.fusepowered.m1.android;

import java.io.*;
import android.content.res.*;
import android.os.*;
import android.content.*;
import android.view.*;

class MMBaseActivity
{
    MMActivity activity;
    
    public boolean dispatchTouchEvent(final MotionEvent motionEvent) {
        return this.activity.dispatchTouchEventSuper(motionEvent);
    }
    
    public void finish() {
        this.activity.finishSuper();
    }
    
    public File getCacheDir() {
        return this.activity.getCacheDir();
    }
    
    public ContentResolver getContentResolver() {
        return this.activity.getContentResolver();
    }
    
    public Intent getIntent() {
        return this.activity.getIntent();
    }
    
    public Object getLastNonConfigurationInstance() {
        return this.activity.getLastNonConfigurationInstance();
    }
    
    public Object getSystemService(final String s) {
        return this.activity.getSystemService(s);
    }
    
    public Window getWindow() {
        return this.activity.getWindow();
    }
    
    protected void onActivityResult(final int n, final int n2, final Intent intent) {
        this.activity.onActivityResultSuper(n, n2, intent);
    }
    
    public void onConfigurationChanged(final Configuration configuration) {
        this.activity.onConfigurationChangedSuper(configuration);
    }
    
    protected void onCreate(final Bundle bundle) {
        this.activity.onCreateSuper(bundle);
    }
    
    protected void onDestroy() {
        this.activity.onDestroySuper();
    }
    
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        return this.activity.onKeyDownSuper(n, keyEvent);
    }
    
    protected void onPause() {
        this.activity.onPauseSuper();
    }
    
    protected void onRestart() {
        this.activity.onRestartSuper();
    }
    
    protected void onRestoreInstanceState(final Bundle bundle) {
        this.activity.onRestoreInstanceStateSuper(bundle);
    }
    
    protected void onResume() {
        this.activity.onResumeSuper();
    }
    
    public Object onRetainNonConfigurationInstance() {
        return this.activity.onRetainNonConfigurationInstanceSuper();
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        this.activity.onSaveInstanceStateSuper(bundle);
    }
    
    protected void onStart() {
        this.activity.onStartSuper();
    }
    
    protected void onStop() {
        this.activity.onStopSuper();
    }
    
    public void onWindowFocusChanged(final boolean b) {
        this.activity.onWindowFocusChangedSuper(b);
    }
    
    public Intent registerReceiver(final BroadcastReceiver broadcastReceiver, final IntentFilter intentFilter) {
        return this.activity.registerReceiver(broadcastReceiver, intentFilter);
    }
    
    public final boolean requestWindowFeature(final int n) {
        return this.activity.requestWindowFeature(n);
    }
    
    public final void runOnUiThread(final Runnable runnable) {
        this.activity.runOnUiThread(runnable);
    }
    
    public void setContentView(final View contentView) {
        this.activity.setContentView(contentView);
    }
    
    public void setRequestedOrientation(final int requestedOrientation) {
        this.activity.setRequestedOrientation(requestedOrientation);
    }
    
    public final void setResult(final int result) {
        this.activity.setResult(result);
    }
    
    public void setTheme(final int theme) {
        this.activity.setTheme(theme);
    }
    
    public void startActivity(final Intent intent) {
        this.activity.startActivity(intent);
    }
    
    public void startActivityForResult(final Intent intent, final int n) {
        this.activity.startActivityForResult(intent, n);
    }
    
    public void unregisterReceiver(final BroadcastReceiver broadcastReceiver) {
        this.activity.unregisterReceiver(broadcastReceiver);
    }
}
