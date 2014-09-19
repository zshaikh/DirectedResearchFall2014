package com.adobe.flashplayer;

import android.content.*;
import android.os.*;

public class HDMIUtils
{
    private static final String EXTDISP_PUBLIC_STATE = "com.motorola.intent.action.externaldisplaystate";
    private static final String EXTDISP_STATUS_CONNECTION = "com.motorola.intent.action.EXTDISP_STATUS_CONNECTION";
    private static final String EXTDISP_STATUS_DISPLAY = "com.motorola.intent.action.EXTDISP_STATUS_DISPLAY";
    private static final String EXTDISP_STATUS_RESOLUTION = "com.motorola.intent.action.EXTDISP_STATUS_RESOLUTION";
    private static final String EXTRA_HDCP = "hdcp";
    private static final String EXTRA_HDMI = "hdmi";
    private static final String TAG = "HDMIUtils";
    private static final int TYPE_HDMI = 1;
    private static Object lock;
    private static HDMIUtils mSingleton;
    private HdmiServiceConnection mConnection;
    private Context mContext;
    private Binder mDeathWatcher;
    private HdmiBroadcastReceiver mExtConnectionReceiver;
    private boolean mHdcpOnOff;
    private boolean mHdmiConnection;
    private boolean mHdmiOnOff;
    private boolean mHdmiStatusKnown;
    
    static {
        HDMIUtils.lock = new Object();
        HDMIUtils.mSingleton = null;
    }
    
    private HDMIUtils(final Context mContext) {
        super();
        this.mHdmiStatusKnown = false;
        this.mHdmiOnOff = false;
        this.mHdcpOnOff = false;
        this.mHdmiConnection = false;
        this.mContext = null;
        this.mExtConnectionReceiver = null;
        this.mDeathWatcher = null;
        this.mContext = mContext;
        this.mHdmiStatusKnown = false;
        this.mHdcpOnOff = false;
        this.mHdmiOnOff = false;
        this.mHdmiConnection = false;
        this.mConnection = new HdmiServiceConnection();
        this.mDeathWatcher = new Binder();
        this.mExtConnectionReceiver = new HdmiBroadcastReceiver();
        final IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.motorola.intent.action.externaldisplaystate");
        intentFilter.addAction("com.motorola.intent.action.EXTDISP_STATUS_CONNECTION");
        intentFilter.addAction("com.motorola.intent.action.EXTDISP_STATUS_DISPLAY");
        intentFilter.addAction("com.motorola.intent.action.EXTDISP_STATUS_RESOLUTION");
        this.mContext.registerReceiver((BroadcastReceiver)this.mExtConnectionReceiver, intentFilter);
    }
    
    public static void closeHelper() {
        if (HDMIUtils.mSingleton == null) {
            return;
        }
        synchronized (HDMIUtils.lock) {
            if (HDMIUtils.mSingleton.mExtConnectionReceiver != null) {
                HDMIUtils.mSingleton.mContext.unregisterReceiver((BroadcastReceiver)HDMIUtils.mSingleton.mExtConnectionReceiver);
                HDMIUtils.mSingleton.mExtConnectionReceiver = null;
            }
            if (HDMIUtils.mSingleton.mConnection != null) {
                HDMIUtils.mSingleton.mContext.unbindService((ServiceConnection)HDMIUtils.mSingleton.mConnection);
                HDMIUtils.mSingleton.mConnection = null;
            }
            HDMIUtils.mSingleton.mDeathWatcher = null;
            // monitorexit(HDMIUtils.lock)
            HDMIUtils.mSingleton.mHdmiStatusKnown = false;
            HDMIUtils.mSingleton = null;
        }
    }
    
    public static int getHDMIState(final Context context) {
        initHelper(context);
        final int value = HDMIState.UNKNOWN.value;
        if (!HDMIUtils.mSingleton.isHdmiStatusKnown()) {
            return HDMIState.UNKNOWN.value;
        }
        if (HDMIUtils.mSingleton.isHDCPOn()) {
            return HDMIState.HDCPON.value;
        }
        if (HDMIUtils.mSingleton.isHDMIOn()) {
            return HDMIState.ON.value;
        }
        return HDMIState.OFF.value;
    }
    
    public static void initHelper(final Context context) {
        if (HDMIUtils.mSingleton != null) {
            return;
        }
        HDMIUtils.mSingleton = new HDMIUtils(context);
    }
    
    public boolean isConnected() {
        return this.mHdmiConnection;
    }
    
    public boolean isHDCPOn() {
        return this.mHdcpOnOff;
    }
    
    public boolean isHDMIOn() {
        return this.mHdmiOnOff;
    }
    
    public boolean isHdmiStatusKnown() {
        return this.mHdmiStatusKnown;
    }
    
    private enum HDMIState
    {
        HDCPON(3), 
        OFF(1), 
        ON(2), 
        UNKNOWN(0);
        
        public final int value;
        
        private HDMIState(final int value) {
            this.value = value;
        }
    }
    
    class HdmiBroadcastReceiver extends BroadcastReceiver
    {
        public void onReceive(final Context context, final Intent intent) {
            final String action = intent.getAction();
            Bundle extras;
            if (intent != null) {
                extras = intent.getExtras();
            }
            else {
                extras = null;
            }
            if (action.equals("com.motorola.intent.action.EXTDISP_STATUS_CONNECTION")) {
                if (extras != null) {
                    final boolean boolean1 = extras.getBoolean("hdmi");
                    if (boolean1 != HDMIUtils.this.mHdmiConnection) {
                        HDMIUtils.this.mHdmiConnection = boolean1;
                        HDMIUtils.this.mHdmiStatusKnown = true;
                    }
                }
            }
            else if (action.equals("com.motorola.intent.action.EXTDISP_STATUS_DISPLAY")) {
                if (extras != null) {
                    final boolean boolean2 = extras.getBoolean("hdmi");
                    if (boolean2 != HDMIUtils.this.mHdmiOnOff) {
                        HDMIUtils.this.mHdmiOnOff = boolean2;
                        HDMIUtils.this.mHdmiStatusKnown = true;
                    }
                }
            }
            else if (action.equals("com.motorola.intent.action.externaldisplaystate") && extras != null) {
                HDMIUtils.this.mHdmiOnOff = (extras.getInt("hdmi") == 1);
                HDMIUtils.this.mHdcpOnOff = (extras.getInt("hdcp") == 1);
                HDMIUtils.this.mHdmiStatusKnown = true;
            }
        }
    }
    
    class HdmiServiceConnection implements ServiceConnection
    {
        public void onServiceConnected(final ComponentName componentName, final IBinder binder) {
        }
        
        public void onServiceDisconnected(final ComponentName componentName) {
            HDMIUtils.this.mHdmiStatusKnown = false;
        }
    }
}
