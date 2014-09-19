package com.adobe.air.telephony;

import android.telephony.*;

class AndroidPhoneStateListener extends PhoneStateListener
{
    private native void nativeOnCallStateChanged(final int p0);
    
    private int toAIRCallState(final int n) {
        int n2;
        if ((n & 0x1) == 0x1) {
            n2 = 1;
        }
        else {
            final int n3 = n & 0x2;
            n2 = 0;
            if (n3 == 2) {
                return 2;
            }
        }
        return n2;
    }
    
    public void onCallStateChanged(final int n, final String s) {
        this.nativeOnCallStateChanged(this.toAIRCallState(n));
    }
}
