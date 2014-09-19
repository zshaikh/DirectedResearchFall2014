package com.adobe.flashruntime.air;

import com.adobe.flashruntime.shared.*;
import com.adobe.air.*;
import android.content.*;
import android.view.*;

public class VideoViewAIR extends VideoView
{
    private static String kLogTag;
    protected AndroidActivityWrapper mActivityWrapper;
    private FlashEGL mVideoFlashEGL;
    
    static {
        VideoViewAIR.kLogTag = "VideoViewAIR";
    }
    
    public VideoViewAIR(final Context context, final AndroidActivityWrapper mActivityWrapper) {
        super(context);
        this.mVideoFlashEGL = null;
        (this.mActivityWrapper = mActivityWrapper).registerPlane(this, 7);
        this.mActivityWrapper.planeStepCascade();
        this.getHolder().addCallback((SurfaceHolder$Callback)new SurfaceHolder$Callback() {
            public void surfaceChanged(final SurfaceHolder surfaceHolder, final int n, final int n2, final int n3) {
                VideoViewAIR.this.nativeSetSurfaceSize(VideoViewAIR.this.getFPInstance(), n2, n3);
            }
            
            public void surfaceCreated(final SurfaceHolder surfaceHolder) {
                VideoViewAIR.this.mActivityWrapper.planeStepCascade();
            }
            
            public void surfaceDestroyed(final SurfaceHolder surfaceHolder) {
                VideoViewAIR.this.mActivityWrapper.planeBreakCascade();
            }
        });
    }
    
    private native void nativeSetSurfaceSize(final long p0, final int p1, final int p2);
    
    public FlashEGL getVideoEgl() {
        if (this.mVideoFlashEGL == null) {
            this.mVideoFlashEGL = new FlashEGL();
        }
        return this.mVideoFlashEGL;
    }
}
