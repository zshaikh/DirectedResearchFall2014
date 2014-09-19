package com.facebook.widget;

import android.content.*;
import com.facebook.*;
import com.facebook.internal.*;
import java.io.*;
import java.net.*;

class ImageResponseCache
{
    static final String TAG;
    private static volatile FileLruCache imageCache;
    
    static {
        TAG = ImageResponseCache.class.getSimpleName();
    }
    
    static FileLruCache getCache(final Context context) {
        synchronized (ImageResponseCache.class) {
            if (ImageResponseCache.imageCache == null) {
                ImageResponseCache.imageCache = new FileLruCache(context.getApplicationContext(), ImageResponseCache.TAG, new FileLruCache$Limits());
            }
            return ImageResponseCache.imageCache;
        }
    }
    
    static InputStream getCachedImageStream(final URL url, final Context context) {
        InputStream value = null;
        if (url == null) {
            return value;
        }
        final boolean cdnurl = isCDNURL(url);
        value = null;
        if (!cdnurl) {
            return value;
        }
        try {
            value = getCache(context).get(url.toString());
            return value;
        }
        catch (IOException ex) {
            Logger.log(LoggingBehavior.CACHE, 5, ImageResponseCache.TAG, ex.toString());
            return null;
        }
    }
    
    static InputStream interceptAndCacheImageStream(final Context context, final HttpURLConnection httpURLConnection) {
        final int responseCode = httpURLConnection.getResponseCode();
        InputStream interceptAndPut = null;
        if (responseCode != 200) {
            return interceptAndPut;
        }
        final URL url = httpURLConnection.getURL();
        final InputStream inputStream = httpURLConnection.getInputStream();
        if (!isCDNURL(url)) {
            return inputStream;
        }
        try {
            interceptAndPut = getCache(context).interceptAndPut(url.toString(), new ImageResponseCache$BufferedHttpInputStream(inputStream, httpURLConnection));
            return interceptAndPut;
        }
        catch (IOException ex) {}
        return inputStream;
    }
    
    private static boolean isCDNURL(final URL url) {
        if (url != null) {
            final String host = url.getHost();
            if (host.endsWith("fbcdn.net")) {
                return true;
            }
            if (host.startsWith("fbcdn") && host.endsWith("akamaihd.net")) {
                return true;
            }
        }
        return false;
    }
}
