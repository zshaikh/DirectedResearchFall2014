package com.adobe.air;

import android.content.*;
import android.view.*;

class AndroidCameraView extends SurfaceView implements SurfaceHolder$Callback
{
    private AndroidActivityWrapper mActivityWrapper;
    private boolean mRecreating;
    
    public AndroidCameraView(final Context context, final AndroidActivityWrapper mActivityWrapper) {
        super(context);
        this.mActivityWrapper = null;
        this.mRecreating = false;
        this.mActivityWrapper = mActivityWrapper;
        this.getHolder().setType(3);
        this.setZOrderMediaOverlay(false);
        this.getHolder().addCallback((SurfaceHolder$Callback)this);
    }
    
    public void surfaceChanged(final SurfaceHolder surfaceHolder, final int n, final int n2, final int n3) {
    }
    
    public void surfaceCreated(final SurfaceHolder surfaceHolder) {
        this.mActivityWrapper.planeStepCascade();
    }
    
    public void surfaceDestroyed(final SurfaceHolder surfaceHolder) {
        this.mActivityWrapper.planeBreakCascade();
    }
}
