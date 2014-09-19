package com.adobe.air;

import android.view.*;
import android.content.*;
import android.graphics.*;
import android.os.*;

class DrawThread extends Thread
{
    private Handler mHandler;
    private Looper mLooper;
    private boolean mRun;
    private AIRWindowThreadedSurfaceView mView;
    
    public DrawThread(final AIRWindowThreadedSurfaceView mView, final SurfaceHolder surfaceHolder, final Context context) {
        super();
        this.mView = null;
        this.mRun = false;
        this.mHandler = null;
        this.mLooper = null;
        this.mView = mView;
    }
    
    private void draw(final DrawRequest drawRequest) {
        if (drawRequest.scale) {
            this.mView.drawScaled(drawRequest.x, drawRequest.y, drawRequest.wd, drawRequest.ht, drawRequest.bm, drawRequest.dstX, drawRequest.dstY, drawRequest.dstWd, drawRequest.dstHt, drawRequest.fullsc, drawRequest.bgColor);
            return;
        }
        this.mView.draw(drawRequest.x, drawRequest.y, drawRequest.wd, drawRequest.ht, drawRequest.bm);
    }
    
    public void requestDraw(final int n, final int n2, final int n3, final int n4, final Bitmap bitmap) {
        final Message message = new Message();
        message.what = 1009;
        message.obj = new DrawRequest(n, n2, n3, n4, bitmap);
        this.mHandler.sendMessage(message);
    }
    
    public void requestDraw(final int n, final int n2, final int n3, final int n4, final Bitmap bitmap, final int n5, final int n6, final int n7, final int n8, final boolean b, final int n9) {
        final Message message = new Message();
        message.what = 1009;
        message.obj = new DrawRequest(n, n2, n3, n4, bitmap, n5, n6, n7, n8, b, n9);
        this.mHandler.sendMessage(message);
    }
    
    @Override
    public void run() {
        Looper.prepare();
        this.mHandler = new Handler() {
            public void handleMessage(final Message message) {
                if (message.what == 1009) {
                    DrawThread.this.draw((DrawRequest)message.obj);
                    DrawThread.this.mView.drawSemaphore.release();
                }
            }
        };
        this.mLooper = Looper.myLooper();
        Looper.loop();
    }
    
    public void setRunning(final boolean mRun) {
        if (!(this.mRun = mRun)) {
            this.mLooper.quit();
        }
    }
}
