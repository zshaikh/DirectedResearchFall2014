package com.adobe.air;

import android.os.*;

public class customHandler extends Handler
{
    public static final int KEY_MSG_ID = 1121;
    public static final int TIME_OUT_MSG_ID = 1119;
    public static final int TOUCH_MSG_ID = 1120;
    
    public native void callTimeoutFunction(final int p0, final int p1);
    
    public void handleMessage(final Message message) {
        if (message.what == 1119) {
            this.callTimeoutFunction(message.arg1, message.arg2);
        }
        else {
            if (message.what == 1120) {
                final TouchEventData touchEventData = (TouchEventData)message.obj;
                this.nativeOnTouchCallback(touchEventData.mTouchEventType, touchEventData.mXCoord, touchEventData.mYCoord, touchEventData.mPressure, touchEventData.mPointerID, touchEventData.mContactX, touchEventData.mContactY, touchEventData.mIsPrimaryPoint, touchEventData.mHistory, touchEventData.mMetaState);
                return;
            }
            if (message.what == 1121) {
                final KeyEventData keyEventData = (KeyEventData)message.obj;
                this.nativeOnKeyCallback(keyEventData.mKeyAction, keyEventData.mKeyCode, keyEventData.mUnicode, keyEventData.mAlt, keyEventData.mShift, keyEventData.mSym);
            }
        }
    }
    
    public native boolean nativeOnKeyCallback(final int p0, final int p1, final int p2, final boolean p3, final boolean p4, final boolean p5);
    
    public native boolean nativeOnTouchCallback(final int p0, final float p1, final float p2, final float p3, final int p4, final float p5, final float p6, final boolean p7, final float[] p8, final int p9);
}
