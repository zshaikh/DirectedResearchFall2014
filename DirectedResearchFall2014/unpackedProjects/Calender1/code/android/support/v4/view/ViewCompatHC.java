package android.support.v4.view;

import android.view.*;
import android.animation.*;
import android.graphics.*;

class ViewCompatHC
{
    public static float getAlpha(final View view) {
        return view.getAlpha();
    }
    
    static long getFrameTime() {
        return ValueAnimator.getFrameDelay();
    }
    
    public static int getLayerType(final View view) {
        return view.getLayerType();
    }
    
    public static void setLayerType(final View view, final int n, final Paint paint) {
        view.setLayerType(n, paint);
    }
}
