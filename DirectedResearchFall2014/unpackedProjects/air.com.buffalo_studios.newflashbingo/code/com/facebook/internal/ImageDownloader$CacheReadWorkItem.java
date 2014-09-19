package com.facebook.internal;

import android.content.*;
import java.util.*;
import android.os.*;
import android.graphics.*;
import java.net.*;
import java.io.*;

class ImageDownloader$CacheReadWorkItem implements Runnable
{
    private boolean allowCachedRedirects;
    private Context context;
    private ImageDownloader$RequestKey key;
    
    ImageDownloader$CacheReadWorkItem(final Context context, final ImageDownloader$RequestKey key, final boolean allowCachedRedirects) {
        super();
        this.context = context;
        this.key = key;
        this.allowCachedRedirects = allowCachedRedirects;
    }
    
    @Override
    public void run() {
        readFromCache(this.key, this.context, this.allowCachedRedirects);
    }
}
