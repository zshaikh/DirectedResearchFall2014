package com.adobe.air;

import android.content.*;
import android.os.*;
import android.app.*;

public class AndroidIdleState
{
    public static final int IDLE_STATE_NORMAL = 0;
    private static final String IDLE_STATE_TAG = "AndroidIdleState";
    public static final int IDLE_STATE_WAKEUP = 1;
    private static AndroidIdleState mIdleStateManager;
    private int mCurrentIdleState;
    private boolean mIsWakeUpLockHeld;
    private KeyguardManager$KeyguardLock mKeyGuardLock;
    private PowerManager$WakeLock mScreenBrightLock;
    private BroadcastReceiver sReceiver;
    private boolean sScreenOn;
    
    static {
        AndroidIdleState.mIdleStateManager = null;
    }
    
    private AndroidIdleState(final Context context) {
        super();
        this.mScreenBrightLock = null;
        this.mKeyGuardLock = null;
        this.mIsWakeUpLockHeld = false;
        this.mCurrentIdleState = 0;
        this.sReceiver = null;
        this.sScreenOn = true;
        if (this.sReceiver != null) {
            return;
        }
        try {
            this.sReceiver = new BroadcastReceiver() {
                public void onReceive(final Context context, final Intent intent) {
                    final boolean b = !intent.getAction().equals("android.intent.action.SCREEN_OFF") && (!intent.getAction().equals("android.intent.action.SCREEN_ON") || true);
                    if (AndroidIdleState.this.sScreenOn != b) {
                        AndroidIdleState.this.sScreenOn = b;
                        AndroidActivityWrapper.GetAndroidActivityWrapper().onScreenStateChanged(AndroidIdleState.this.sScreenOn);
                    }
                }
            };
            final IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            context.registerReceiver(this.sReceiver, intentFilter);
        }
        catch (Exception ex) {}
    }
    
    public static AndroidIdleState GetIdleStateManager(final Context context) {
        if (AndroidIdleState.mIdleStateManager == null) {
            AndroidIdleState.mIdleStateManager = new AndroidIdleState(context);
        }
        return AndroidIdleState.mIdleStateManager;
    }
    
    public void ChangeIdleState(final Context context, final int n) {
        Label_0014: {
            if (n != 0) {
                break Label_0014;
            }
            try {
                this.releaseLock();
                this.mCurrentIdleState = 0;
                return;
                // iftrue(Label_0069:, this.mScreenBrightLock != null)
                try {
                    this.mScreenBrightLock = ((PowerManager)context.getSystemService("power")).newWakeLock(268435466, "DoNotDimScreen");
                    this.mKeyGuardLock = ((KeyguardManager)context.getSystemService("keyguard")).newKeyguardLock("DoNotLockKeys");
                    Label_0069: {
                        this.mCurrentIdleState = 1;
                    }
                    this.acquireLock();
                }
                catch (Exception ex) {
                    this.mScreenBrightLock = null;
                    this.mKeyGuardLock = null;
                }
            }
            catch (Exception ex2) {}
        }
    }
    
    public void acquireLock() {
        try {
            if (this.mCurrentIdleState == 1 && !this.mIsWakeUpLockHeld) {
                this.mScreenBrightLock.acquire();
                this.mKeyGuardLock.disableKeyguard();
                this.mIsWakeUpLockHeld = true;
            }
        }
        catch (Exception ex) {}
    }
    
    public void releaseLock() {
        try {
            if (this.mCurrentIdleState == 1 && this.mIsWakeUpLockHeld) {
                this.mScreenBrightLock.release();
                this.mKeyGuardLock.reenableKeyguard();
                this.mIsWakeUpLockHeld = false;
            }
        }
        catch (Exception ex) {}
    }
}
