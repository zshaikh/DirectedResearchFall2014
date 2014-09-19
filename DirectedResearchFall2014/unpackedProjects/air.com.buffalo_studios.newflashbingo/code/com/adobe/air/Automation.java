package com.adobe.air;

import android.os.*;
import com.adobe.air.utils.*;
import android.view.*;

public class Automation
{
    public boolean dispatchKeyEvent(final AIRWindowSurfaceView airWindowSurfaceView, final int n, final int n2, final int n3, final boolean b, final boolean b2, final boolean b3) {
        if (Build$VERSION.SDK_INT < 9) {
            return false;
        }
        int n4 = 0;
        if (b) {
            n4 = (0x0 | 0x2);
        }
        if (b2) {
            n4 |= 0x1;
        }
        int n5;
        if (b3) {
            n5 = (n4 | 0x4);
        }
        else {
            n5 = n4;
        }
        try {
            final KeyEvent keyEvent = new KeyEvent(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), n, n2, 0, n5);
            if (n == 0) {
                airWindowSurfaceView.onKeyDown(n2, keyEvent);
            }
            else if (n == 1) {
                airWindowSurfaceView.onKeyUp(n2, keyEvent);
            }
        }
        catch (Exception obj) {
            AIRLogger.d("Automation", "[JP] dispatchKeyEvent caught " + obj);
        }
        return true;
    }
    
    public boolean dispatchTouchEvent(final AIRWindowSurfaceView airWindowSurfaceView, final int n, final float n2, final float n3, final float n4, final int n5, final float n6, final float n7, final boolean b, final float[] array, final int n8) {
        if (Build$VERSION.SDK_INT < 9) {
            return false;
        }
        try {
            airWindowSurfaceView.onTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), n, n2, n3, n8));
            return true;
        }
        catch (Exception obj) {
            AIRLogger.d("Automation", "[JP] dispatchTouchEvent caught " + obj);
            return true;
        }
    }
}
