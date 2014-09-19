package com.adobe.air;

import java.util.concurrent.*;
import android.content.*;
import android.graphics.*;
import android.view.*;

public class AIRWindowThreadedSurfaceView extends AIRWindowSurfaceView
{
    public final Semaphore drawSemaphore;
    private DrawThread thread;
    
    public AIRWindowThreadedSurfaceView(final Context context, final AndroidActivityWrapper androidActivityWrapper) {
        super(context, androidActivityWrapper);
        this.thread = null;
        this.drawSemaphore = new Semaphore(0);
        this.Init(context);
    }
    
    protected void Init(final Context context) {
        this.thread = new DrawThread(this, this.mSurfaceHolder, context);
    }
    
    @Override
    public void drawBitmap(final int n, final int n2, final int n3, final int n4, final Bitmap bitmap) {
        this.thread.requestDraw(n, n2, n3, n4, bitmap);
        try {
            this.drawSemaphore.acquire();
        }
        catch (Exception ex) {}
    }
    
    @Override
    public void drawBitmap(final int n, final int n2, final int n3, final int n4, final Bitmap bitmap, final int n5, final int n6, final int n7, final int n8, final boolean b, final int n9) {
        this.thread.requestDraw(n, n2, n3, n4, bitmap, n5, n6, n7, n8, b, n9);
        try {
            this.drawSemaphore.acquire();
        }
        catch (Exception ex) {}
    }
    
    @Override
    public void surfaceChanged(final SurfaceHolder surfaceHolder, final int n, final int n2, final int n3) {
        super.surfaceChanged(surfaceHolder, n, n2, n3);
    }
    
    @Override
    public void surfaceCreated(final SurfaceHolder surfaceHolder) {
        super.surfaceCreated(surfaceHolder);
        this.thread.setRunning(true);
        if (this.thread.isAlive()) {
            return;
        }
        try {
            this.thread.start();
        }
        catch (Exception ex) {}
    }
    
    @Override
    public void surfaceDestroyed(final SurfaceHolder surfaceHolder) {
        super.surfaceDestroyed(surfaceHolder);
        int n = 1;
        this.thread.setRunning(false);
        while (true) {
            if (n == 0 || !this.thread.isAlive()) {
                return;
            }
            try {
                this.thread.join();
                n = 0;
                continue;
            }
            catch (InterruptedException ex) {}
        }
    }
}
