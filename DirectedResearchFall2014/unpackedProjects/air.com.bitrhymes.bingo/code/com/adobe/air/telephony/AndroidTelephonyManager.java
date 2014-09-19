package com.adobe.air.telephony;

import android.content.*;
import android.telephony.*;

public class AndroidTelephonyManager
{
    private static AndroidTelephonyManager sAndroidTelephonyManager;
    private Context mContext;
    private boolean mListening;
    private AndroidPhoneStateListener mPhoneStateListener;
    private TelephonyManager mTelephonyMgr;
    
    static {
        AndroidTelephonyManager.sAndroidTelephonyManager = null;
    }
    
    private AndroidTelephonyManager(final Context mContext) {
        super();
        this.mContext = null;
        this.mPhoneStateListener = null;
        this.mTelephonyMgr = null;
        this.mListening = false;
        this.mContext = mContext;
        if (this.mContext != null) {
            this.mTelephonyMgr = (TelephonyManager)this.mContext.getSystemService("phone");
        }
    }
    
    public static AndroidTelephonyManager CreateAndroidTelephonyManager(final Context context) {
        if (AndroidTelephonyManager.sAndroidTelephonyManager == null) {
            AndroidTelephonyManager.sAndroidTelephonyManager = new AndroidTelephonyManager(context);
        }
        return AndroidTelephonyManager.sAndroidTelephonyManager;
    }
    
    public static AndroidTelephonyManager GetAndroidTelephonyManager() {
        return AndroidTelephonyManager.sAndroidTelephonyManager;
    }
    
    public void listen(final boolean b) {
        if (this.mTelephonyMgr != null) {
            Label_0072: {
                if (!b) {
                    break Label_0072;
                }
                try {
                    if (!this.mListening) {
                        if (this.mPhoneStateListener == null) {
                            this.mPhoneStateListener = new AndroidPhoneStateListener();
                        }
                        this.mTelephonyMgr.listen((PhoneStateListener)this.mPhoneStateListener, 32);
                        this.mListening = true;
                        this.mPhoneStateListener.onCallStateChanged(this.mTelephonyMgr.getCallState(), "0");
                        return;
                    }
                    if (!b && this.mListening && this.mPhoneStateListener != null) {
                        this.mTelephonyMgr.listen((PhoneStateListener)this.mPhoneStateListener, 0);
                        this.mPhoneStateListener = null;
                        this.mListening = false;
                    }
                }
                catch (Exception ex) {}
            }
        }
    }
}
