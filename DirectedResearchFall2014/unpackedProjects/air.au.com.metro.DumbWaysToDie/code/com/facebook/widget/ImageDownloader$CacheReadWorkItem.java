package com.facebook.widget;

import android.content.*;
import android.os.*;
import java.util.*;
import android.graphics.*;
import com.facebook.internal.*;
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
