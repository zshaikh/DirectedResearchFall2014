package com.fusepowered.m2.m2l;

public class TaskTracker
{
    private long mCurrentTaskId;
    private long mLastCompletedTaskId;
    
    public TaskTracker() {
        super();
        this.mCurrentTaskId = -1L;
    }
    
    public long getCurrentTaskId() {
        return this.mCurrentTaskId;
    }
    
    public boolean isMostCurrentTask(final long n) {
        return n >= this.mLastCompletedTaskId;
    }
    
    public void markTaskCompleted(final long mLastCompletedTaskId) {
        if (mLastCompletedTaskId > this.mLastCompletedTaskId) {
            this.mLastCompletedTaskId = mLastCompletedTaskId;
        }
    }
    
    public void newTaskStarted() {
        ++this.mCurrentTaskId;
    }
}
