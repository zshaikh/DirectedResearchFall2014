package com.facebook.internal;

import android.content.*;
import com.facebook.*;
import java.io.*;
import java.net.*;

class ImageResponseCache
{
    static final String TAG;
    private static volatile FileLruCache imageCache;
    
    static {
        TAG = ImageResponseCache.class.getSimpleName();
    }
    
    static void clearCache(final Context context) {
        try {
            getCache(context).clearCache();
        }
        catch (IOException ex) {
            Logger.log(LoggingBehavior.CACHE, 5, ImageResponseCache.TAG, "clearCache failed " + ex.getMessage());
        }
    }
    
    static FileLruCache getCache(final Context context) {
        synchronized (ImageResponseCache.class) {
            if (ImageResponseCache.imageCache == null) {
                ImageResponseCache.imageCache = new FileLruCache(context.getApplicationContext(), ImageResponseCache.TAG, new FileLruCache$Limits());
            }
            return ImageResponseCache.imageCache;
        }
    }
    
    static InputStream getCachedImageStream(final URI uri, final Context context) {
        InputStream value = null;
        if (uri == null) {
            return value;
        }
        final boolean cdnurl = isCDNURL(uri);
        value = null;
        if (!cdnurl) {
            return value;
        }
        try {
            value = getCache(context).get(uri.toString());
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
        if (responseCode == 200) {
            final URL url = httpURLConnection.getURL();
            final InputStream inputStream = httpURLConnection.getInputStream();
            try {
                if (isCDNURL(url.toURI())) {
                    interceptAndPut = getCache(context).interceptAndPut(url.toString(), new ImageResponseCache$BufferedHttpInputStream(inputStream, httpURLConnection));
                    return interceptAndPut;
                }
            }
            catch (IOException ex) {
                return inputStream;
            }
            catch (URISyntaxException ex2) {}
            return inputStream;
        }
        return interceptAndPut;
    }
    
    private static boolean isCDNURL(final URI uri) {
        if (uri != null) {
            final String host = uri.getHost();
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
