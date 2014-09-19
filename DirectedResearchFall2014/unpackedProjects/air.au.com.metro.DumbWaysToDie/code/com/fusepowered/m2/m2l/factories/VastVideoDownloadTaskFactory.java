package com.fusepowered.m2.m2l.factories;

import com.fusepowered.m2.m2l.*;

public class VastVideoDownloadTaskFactory
{
    private static VastVideoDownloadTaskFactory instance;
    
    static {
        VastVideoDownloadTaskFactory.instance = new VastVideoDownloadTaskFactory();
    }
    
    public static VastVideoDownloadTask create(final VastVideoDownloadTask.OnDownloadCompleteListener onDownloadCompleteListener, final DiskLruCache diskLruCache) {
        return VastVideoDownloadTaskFactory.instance.internalCreate(onDownloadCompleteListener, diskLruCache);
    }
    
    @Deprecated
    public static void setInstance(final VastVideoDownloadTaskFactory instance) {
        VastVideoDownloadTaskFactory.instance = instance;
    }
    
    protected VastVideoDownloadTask internalCreate(final VastVideoDownloadTask.OnDownloadCompleteListener onDownloadCompleteListener, final DiskLruCache diskLruCache) {
        return new VastVideoDownloadTask(onDownloadCompleteListener, diskLruCache);
    }
}
