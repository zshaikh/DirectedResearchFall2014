package com.adobe.air;

import android.content.*;
import android.view.*;

public class AIRStage3DSurfaceView extends SurfaceView implements SurfaceHolder$Callback
{
    private static final String TAG = "com.adobe.air";
    private AndroidActivityWrapper mActivityWrapper;
    private long mFPInstance;
    private boolean mInit;
    private boolean mSurfaceValid;
    private int mXmax;
    private int mXmin;
    private int mYmax;
    private int mYmin;
    private ViewTreeObserver$OnGlobalLayoutListener m_layOutListener;
    
    public AIRStage3DSurfaceView(final Context context, final AndroidActivityWrapper androidActivityWrapper, final long n) {
        super(context);
        this.mActivityWrapper = null;
        this.mFPInstance = 0L;
        this.mInit = false;
        this.mSurfaceValid = false;
        this.mXmin = 0;
        this.mYmin = 0;
        this.mXmax = 16;
        this.mYmax = 16;
        this.m_layOutListener = null;
        this.setFPInstance(context, androidActivityWrapper, n);
        this.setWillNotDraw(false);
        this.setEnabled(true);
        this.setClickable(false);
        this.setFocusable(false);
        this.setFocusableInTouchMode(false);
        this.setLayoutParams(new ViewGroup$LayoutParams(-2, -2));
        if (AndroidActivityWrapper.isGingerbread()) {
            this.getHolder().setFormat(2);
        }
        else {
            this.getHolder().setFormat(1);
        }
        this.getHolder().addCallback((SurfaceHolder$Callback)this);
        this.setZOrderOnTop(false);
        this.mActivityWrapper.registerPlane(this, 6);
    }
    
    private native void nativeSurfaceChanged(final long p0, final int p1, final int p2);
    
    private native void nativeSurfaceCreated(final long p0);
    
    private native void nativeSurfaceLayoutChanged(final long p0);
    
    private native void nativeSurfaceLost(final long p0);
    
    protected void onMeasure(final int n, final int n2) {
        this.setMeasuredDimension(this.mXmax - this.mXmin, this.mYmax - this.mYmin);
    }
    
    public boolean setFPInstance(final Context context, final AndroidActivityWrapper mActivityWrapper, final long mfpInstance) {
        this.mActivityWrapper = mActivityWrapper;
        this.mFPInstance = mfpInstance;
        if (this.mFPInstance != 0L) {
            this.mActivityWrapper.registerPlane(this, 6);
        }
        else {
            this.mActivityWrapper.unregisterPlane(6);
        }
        return this.mSurfaceValid;
    }
    
    public void setPlanePosition(final int mXmin, final int mYmin, final int mXmax, final int mYmax) {
        this.layout(this.mXmin = mXmin, this.mYmin = mYmin, this.mXmax = mXmax, this.mYmax = mYmax);
    }
    
    public void surfaceChanged(final SurfaceHolder surfaceHolder, final int n, final int n2, final int n3) {
        if (this.mFPInstance != 0L) {
            this.nativeSurfaceChanged(this.mFPInstance, n2, n3);
        }
    }
    
    public void surfaceCreated(final SurfaceHolder surfaceHolder) {
        this.mSurfaceValid = true;
        if (this.mFPInstance != 0L) {
            this.nativeSurfaceCreated(this.mFPInstance);
        }
        this.mActivityWrapper.planeStepCascade();
        final ViewTreeObserver viewTreeObserver = this.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            if (this.m_layOutListener == null) {
                this.m_layOutListener = (ViewTreeObserver$OnGlobalLayoutListener)new ViewTreeObserver$OnGlobalLayoutListener() {
                    public void onGlobalLayout() {
                        if (AIRStage3DSurfaceView.this.mFPInstance != 0L) {
                            AIRStage3DSurfaceView.this.nativeSurfaceLayoutChanged(AIRStage3DSurfaceView.this.mFPInstance);
                        }
                    }
                };
            }
            if (this.m_layOutListener != null) {
                viewTreeObserver.addOnGlobalLayoutListener(this.m_layOutListener);
            }
        }
    }
    
    public void surfaceDestroyed(final SurfaceHolder surfaceHolder) {
        this.mSurfaceValid = false;
        if (this.mFPInstance != 0L) {
            this.nativeSurfaceLost(this.mFPInstance);
        }
        this.mActivityWrapper.planeBreakCascade();
        final ViewTreeObserver viewTreeObserver = this.getViewTreeObserver();
        if (viewTreeObserver.isAlive() && this.m_layOutListener != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.m_layOutListener);
        }
    }
}
