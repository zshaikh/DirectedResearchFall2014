package com.facebook.internal;

import java.util.concurrent.*;
import com.facebook.*;

class WorkQueue
{
    public static final int DEFAULT_MAX_CONCURRENT = 8;
    private final Executor executor;
    private final int maxConcurrent;
    private WorkQueue$WorkNode pendingJobs;
    private int runningCount;
    private WorkQueue$WorkNode runningJobs;
    private final Object workLock;
    
    WorkQueue() {
        this(8);
    }
    
    WorkQueue(final int n) {
        this(n, Settings.getExecutor());
    }
    
    WorkQueue(final int maxConcurrent, final Executor executor) {
        super();
        this.workLock = new Object();
        this.runningJobs = null;
        this.runningCount = 0;
        this.maxConcurrent = maxConcurrent;
        this.executor = executor;
    }
    
    private void execute(final WorkQueue$WorkNode workQueue$WorkNode) {
        this.executor.execute(new WorkQueue$1(this, workQueue$WorkNode));
    }
    
    private void finishItemAndStartNew(final WorkQueue$WorkNode workQueue$WorkNode) {
        final Object workLock = this.workLock;
        // monitorenter(workLock)
        Label_0033: {
            if (workQueue$WorkNode == null) {
                break Label_0033;
            }
            try {
                this.runningJobs = workQueue$WorkNode.removeFromList(this.runningJobs);
                --this.runningCount;
                final int runningCount = this.runningCount;
                final int maxConcurrent = this.maxConcurrent;
                WorkQueue$WorkNode pendingJobs = null;
                if (runningCount < maxConcurrent) {
                    pendingJobs = this.pendingJobs;
                    if (pendingJobs != null) {
                        this.pendingJobs = pendingJobs.removeFromList(this.pendingJobs);
                        this.runningJobs = pendingJobs.addToList(this.runningJobs, false);
                        ++this.runningCount;
                        pendingJobs.setIsRunning(true);
                    }
                }
                // monitorexit(workLock)
                if (pendingJobs != null) {
                    this.execute(pendingJobs);
                }
            }
            finally {
            }
            // monitorexit(workLock)
        }
    }
    
    private void startItem() {
        this.finishItemAndStartNew(null);
    }
    
    WorkQueue$WorkItem addActiveWorkItem(final Runnable runnable) {
        return this.addActiveWorkItem(runnable, true);
    }
    
    WorkQueue$WorkItem addActiveWorkItem(final Runnable runnable, final boolean b) {
        final WorkQueue$WorkNode workQueue$WorkNode = new WorkQueue$WorkNode(this, runnable);
        synchronized (this.workLock) {
            this.pendingJobs = workQueue$WorkNode.addToList(this.pendingJobs, b);
            // monitorexit(this.workLock)
            this.finishItemAndStartNew(null);
            return workQueue$WorkNode;
        }
    }
    
    void validate() {
        synchronized (this.workLock) {
            final WorkQueue$WorkNode runningJobs = this.runningJobs;
            int n = 0;
            if (runningJobs != null) {
                final WorkQueue$WorkNode runningJobs2 = this.runningJobs;
                int n2 = 0;
                WorkQueue$WorkNode next = runningJobs2;
                do {
                    next.verify(true);
                    ++n2;
                    next = next.getNext();
                } while (next != this.runningJobs);
                n = n2;
            }
            assert this.runningCount == n;
        }
    }
    // monitorexit(o)
}
