package com.adobe.air;

import android.os.*;

public class WorkerLooper
{
    private Handler mHandler;
    private Looper mLooper;
    
    public WorkerLooper() {
        super();
        Looper.prepare();
        this.mHandler = new customHandler();
        this.mLooper = Looper.myLooper();
    }
    
    public Handler getHandler() {
        return this.mHandler;
    }
    
    public void quit() {
        this.mLooper.quit();
    }
    
    public void start() {
        Looper.loop();
    }
}
