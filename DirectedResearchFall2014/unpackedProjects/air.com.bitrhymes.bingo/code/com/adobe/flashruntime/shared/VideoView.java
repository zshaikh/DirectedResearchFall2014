package com.adobe.flashruntime.shared;

import android.content.*;
import android.view.*;
import android.util.*;
import android.os.*;

public class VideoView extends SurfaceView
{
    private static final String TAG = "VideoSurfaceView";
    private boolean mAmCreated;
    private long mCPPInstance;
    private Context mContext;
    private boolean mPlanePositionSet;
    private Surface mSurface;
    private int mXmax;
    private int mXmin;
    private int mYmax;
    private int mYmin;
    
    public VideoView(final Context mContext) {
        super(mContext);
        this.mXmin = 0;
        this.mYmin = 0;
        this.mXmax = 16;
        this.mYmax = 16;
        this.mAmCreated = false;
        this.mPlanePositionSet = false;
        this.mSurface = null;
        this.mContext = mContext;
        this.setLayoutParams(new ViewGroup$LayoutParams(-2, -2));
        if (this.useOverlay()) {
            this.getHolder().setFormat(842094169);
        }
        this.getHolder().addCallback((SurfaceHolder$Callback)new SurfaceHolder$Callback() {
            public void surfaceChanged(final SurfaceHolder surfaceHolder, final int i, final int j, final int k) {
                Log.v("VideoSurfaceView", "surfaceChanged format=" + i + ", width=" + j + ", height=" + k);
                if (VideoView.this.useOverlay() && VideoView.this.mPlanePositionSet && (j != VideoView.this.mXmax - VideoView.this.mXmin || k != VideoView.this.mYmax - VideoView.this.mYmin)) {
                    VideoView.this.setPlanePosition(VideoView.this.mXmin, VideoView.this.mYmin, VideoView.this.mXmax, VideoView.this.mYmax);
                }
            }
            
            public void surfaceCreated(final SurfaceHolder surfaceHolder) {
                Log.v("VideoSurfaceView", "surfaceCreated");
                VideoView.this.mSurface = surfaceHolder.getSurface();
                VideoView.this.mAmCreated = true;
                VideoView.this.notifyNativeReadyForVideo();
            }
            
            public void surfaceDestroyed(final SurfaceHolder surfaceHolder) {
                Log.v("VideoSurfaceView", "surfaceDestroyed");
                VideoView.this.mSurface.release();
                VideoView.this.mAmCreated = false;
                VideoView.this.notifyNativeReadyForVideo();
            }
        });
    }
    
    private native void nativeSetJavaViewReady(final long p0, final boolean p1);
    
    public void VideoPlaybackRestarted() {
    }
    
    public long getFPInstance() {
        return this.mCPPInstance;
    }
    
    public Surface getSurface() {
        if (this.mAmCreated && this.useOverlay()) {
            return this.mSurface;
        }
        return null;
    }
    
    public void notifyNativeReadyForVideo() {
        if (this.mCPPInstance != 0L) {
            this.nativeSetJavaViewReady(this.mCPPInstance, this.mAmCreated);
        }
    }
    
    public void setFPInstance(final long n) {
        Log.d("VideoSurfaceView", "Changing FP Instance from " + this.mCPPInstance + " to " + n);
        this.mCPPInstance = n;
        this.notifyNativeReadyForVideo();
    }
    
    public void setPlanePosition(final int mXmin, final int mYmin, final int mXmax, final int mYmax) {
        this.mXmin = mXmin;
        this.mYmin = mYmin;
        this.mXmax = mXmax;
        this.mYmax = mYmax;
        this.mPlanePositionSet = true;
        this.getHandler().post((Runnable)new Runnable() {
            @Override
            public void run() {
                VideoView.this.layout(VideoView.this.mXmin, VideoView.this.mYmin, VideoView.this.mXmax, VideoView.this.mYmax);
            }
        });
    }
    
    protected boolean useOverlay() {
        return Build$VERSION.SDK_INT >= 14;
    }
}
