package com.buffalostudios.aneutils.common;

public class ANEStopwatch
{
    private int _elapsedTime;
    private boolean _isRunning;
    private int _startTime;
    
    public ANEStopwatch() {
        super();
        this.reset();
    }
    
    private int getTimer() {
        return (int)(System.nanoTime() / 1000000L);
    }
    
    private int intervalTime() {
        if (this._isRunning) {
            return this.getTimer() - this._startTime;
        }
        return 0;
    }
    
    public int elapsedMilliseconds() {
        return this._elapsedTime + this.intervalTime();
    }
    
    public boolean isRunning() {
        return this._isRunning;
    }
    
    public void reset() {
        this._startTime = 0;
        this._elapsedTime = 0;
        this._isRunning = false;
    }
    
    public void restart() {
        this.reset();
        this.start();
    }
    
    public void start() {
        if (this._isRunning) {
            return;
        }
        this._startTime = this.getTimer();
        this._isRunning = true;
    }
    
    public void stop() {
        if (!this._isRunning) {
            return;
        }
        this._elapsedTime = this.elapsedMilliseconds();
        this._isRunning = false;
    }
}
