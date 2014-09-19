package com.facebook.android;

import android.content.*;
import java.net.*;
import java.io.*;
import android.os.*;

@Deprecated
public class AsyncFacebookRunner
{
    Facebook fb;
    
    public AsyncFacebookRunner(final Facebook fb) {
        super();
        this.fb = fb;
    }
    
    @Deprecated
    public void logout(final Context context, final RequestListener requestListener) {
        this.logout(context, requestListener, null);
    }
    
    @Deprecated
    public void logout(final Context context, final RequestListener requestListener, final Object o) {
        new Thread() {
            @Override
            public void run() {
                try {
                    final String logoutImpl = AsyncFacebookRunner.this.fb.logoutImpl(context);
                    if (logoutImpl.length() == 0 || logoutImpl.equals("false")) {
                        requestListener.onFacebookError(new FacebookError("auth.expireSession failed"), o);
                        return;
                    }
                    requestListener.onComplete(logoutImpl, o);
                }
                catch (FileNotFoundException ex) {
                    requestListener.onFileNotFoundException(ex, o);
                }
                catch (MalformedURLException ex2) {
                    requestListener.onMalformedURLException(ex2, o);
                }
                catch (IOException ex3) {
                    requestListener.onIOException(ex3, o);
                }
            }
        }.start();
    }
    
    @Deprecated
    public void request(final Bundle bundle, final RequestListener requestListener) {
        this.request(null, bundle, "GET", requestListener, null);
    }
    
    @Deprecated
    public void request(final Bundle bundle, final RequestListener requestListener, final Object o) {
        this.request(null, bundle, "GET", requestListener, o);
    }
    
    @Deprecated
    public void request(final String s, final Bundle bundle, final RequestListener requestListener) {
        this.request(s, bundle, "GET", requestListener, null);
    }
    
    @Deprecated
    public void request(final String s, final Bundle bundle, final RequestListener requestListener, final Object o) {
        this.request(s, bundle, "GET", requestListener, o);
    }
    
    @Deprecated
    public void request(final String s, final Bundle bundle, final String s2, final RequestListener requestListener, final Object o) {
        new Thread() {
            @Override
            public void run() {
                try {
                    requestListener.onComplete(AsyncFacebookRunner.this.fb.requestImpl(s, bundle, s2), o);
                }
                catch (FileNotFoundException ex) {
                    requestListener.onFileNotFoundException(ex, o);
                }
                catch (MalformedURLException ex2) {
                    requestListener.onMalformedURLException(ex2, o);
                }
                catch (IOException ex3) {
                    requestListener.onIOException(ex3, o);
                }
            }
        }.start();
    }
    
    @Deprecated
    public void request(final String s, final RequestListener requestListener) {
        this.request(s, new Bundle(), "GET", requestListener, null);
    }
    
    @Deprecated
    public void request(final String s, final RequestListener requestListener, final Object o) {
        this.request(s, new Bundle(), "GET", requestListener, o);
    }
    
    @Deprecated
    public interface RequestListener
    {
        void onComplete(String p0, Object p1);
        
        void onFacebookError(FacebookError p0, Object p1);
        
        void onFileNotFoundException(FileNotFoundException p0, Object p1);
        
        void onIOException(IOException p0, Object p1);
        
        void onMalformedURLException(MalformedURLException p0, Object p1);
    }
}
