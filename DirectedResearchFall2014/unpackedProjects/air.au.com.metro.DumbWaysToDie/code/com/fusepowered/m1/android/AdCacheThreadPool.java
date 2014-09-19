package com.fusepowered.m1.android;

import java.util.concurrent.*;
import android.content.*;
import java.lang.ref.*;

final class AdCacheThreadPool
{
    private static AdCacheThreadPool sharedThreadPool;
    private ThreadPoolExecutor executor;
    private PriorityBlockingQueue queue;
    
    private AdCacheThreadPool() {
        super();
        final TimeUnit seconds = TimeUnit.SECONDS;
        final PriorityBlockingQueue<Runnable> priorityBlockingQueue = new PriorityBlockingQueue<Runnable>(32);
        this.queue = priorityBlockingQueue;
        this.executor = new ThreadPoolExecutor(1, 2, 30L, seconds, priorityBlockingQueue);
    }
    
    static AdCacheThreadPool sharedThreadPool() {
        synchronized (AdCacheThreadPool.class) {
            if (AdCacheThreadPool.sharedThreadPool == null) {
                AdCacheThreadPool.sharedThreadPool = new AdCacheThreadPool();
            }
            return AdCacheThreadPool.sharedThreadPool;
        }
    }
    
    boolean startDownloadTask(final Context context, final String s, final CachedAd cachedAd, final AdCache.AdCacheTaskListener adCacheTaskListener) {
        // monitorenter(this)
        Label_0062: {
            if (context == null || cachedAd == null) {
                break Label_0062;
            }
            try {
                final AdCacheTask adCacheTask = new AdCacheTask(context, s, cachedAd, adCacheTaskListener);
                boolean b;
                if (!this.queue.contains(adCacheTask) && !cachedAd.isOnDisk(context)) {
                    this.executor.execute(adCacheTask);
                    b = true;
                }
                else {
                    b = false;
                }
                return b;
            }
            finally {
            }
            // monitorexit(this)
        }
    }
    
    private class AdCacheTask implements Runnable, Comparable<AdCacheTask>
    {
        private CachedAd ad;
        private String adName;
        private WeakReference<Context> contextRef;
        private WeakReference<AdCache.AdCacheTaskListener> listenerRef;
        
        AdCacheTask(final Context context, final String adName, final CachedAd ad, final AdCache.AdCacheTaskListener referent) {
            super();
            this.contextRef = new WeakReference<Context>(context.getApplicationContext());
            this.adName = adName;
            this.ad = ad;
            if (referent != null) {
                this.listenerRef = new WeakReference<AdCache.AdCacheTaskListener>(referent);
            }
        }
        
        @Override
        public int compareTo(final AdCacheTask adCacheTask) {
            return this.ad.downloadPriority - adCacheTask.ad.downloadPriority;
        }
        
        @Override
        public boolean equals(final Object o) {
            return this == o || (o instanceof AdCacheTask && this.ad.equals(((AdCacheTask)o).ad));
        }
        
        @Override
        public void run() {
            final WeakReference<AdCache.AdCacheTaskListener> listenerRef = this.listenerRef;
            Object o = null;
            if (listenerRef != null) {
                o = this.listenerRef.get();
            }
            if (o != null) {
                ((AdCache.AdCacheTaskListener)o).downloadStart(this.ad);
            }
            HandShake.sharedHandShake(this.contextRef.get()).lockAdTypeDownload(this.adName);
            final boolean download = this.ad.download(this.contextRef.get());
            HandShake.sharedHandShake(this.contextRef.get()).unlockAdTypeDownload(this.adName);
            if (!download) {
                final String incompleteDownload = AdCache.getIncompleteDownload(this.contextRef.get(), this.adName);
                if (incompleteDownload != null && this.ad.getId().equals(incompleteDownload)) {
                    this.ad.delete(this.contextRef.get());
                    AdCache.setIncompleteDownload(this.contextRef.get(), this.adName, null);
                }
                else {
                    final Context context = this.contextRef.get();
                    final String adName = this.adName;
                    String id;
                    if (!this.ad.downloadAllOrNothing) {
                        id = this.ad.getId();
                    }
                    else {
                        id = null;
                    }
                    AdCache.setIncompleteDownload(context, adName, id);
                }
            }
            else {
                AdCache.setIncompleteDownload(this.contextRef.get(), this.adName, null);
            }
            if (o != null) {
                ((AdCache.AdCacheTaskListener)o).downloadCompleted(this.ad, download);
            }
        }
    }
}
