package com.google.android.apps.analytics;

import android.os.*;
import java.util.*;
import android.util.*;
import org.apache.http.message.*;
import org.apache.http.entity.*;
import java.io.*;
import org.apache.http.*;

class NetworkDispatcher implements Dispatcher
{
    private static final String GOOGLE_ANALYTICS_HOST_NAME = "www.google-analytics.com";
    private static final int GOOGLE_ANALYTICS_HOST_PORT = 80;
    private static final int MAX_EVENTS_PER_PIPELINE = 30;
    private static final int MAX_GET_LENGTH = 2036;
    private static final int MAX_POST_LENGTH = 8192;
    private static final int MAX_SEQUENTIAL_REQUESTS = 5;
    private static final long MIN_RETRY_INTERVAL = 2L;
    private static final String USER_AGENT_TEMPLATE = "%s/%s (Linux; U; Android %s; %s-%s; %s Build/%s)";
    private DispatcherThread dispatcherThread;
    private boolean dryRun;
    private final HttpHost googleAnalyticsHost;
    private final String userAgent;
    
    public NetworkDispatcher() {
        this("GoogleAnalytics", "1.5.1");
    }
    
    public NetworkDispatcher(final String s, final String s2) {
        this(s, s2, "www.google-analytics.com", 80);
    }
    
    NetworkDispatcher(final String s, final String s2, final String s3, final int n) {
        super();
        this.dryRun = false;
        this.googleAnalyticsHost = new HttpHost(s3, n);
        final Locale default1 = Locale.getDefault();
        final Object[] args = { s, s2, Build$VERSION.RELEASE, null, null, null, null };
        String lowerCase;
        if (default1.getLanguage() != null) {
            lowerCase = default1.getLanguage().toLowerCase();
        }
        else {
            lowerCase = "en";
        }
        args[3] = lowerCase;
        String lowerCase2;
        if (default1.getCountry() != null) {
            lowerCase2 = default1.getCountry().toLowerCase();
        }
        else {
            lowerCase2 = "";
        }
        args[4] = lowerCase2;
        args[5] = Build.MODEL;
        args[6] = Build.ID;
        this.userAgent = String.format("%s/%s (Linux; U; Android %s; %s-%s; %s Build/%s)", args);
    }
    
    @Override
    public void dispatchHits(final Hit[] array) {
        if (this.dispatcherThread == null) {
            return;
        }
        this.dispatcherThread.dispatchHits(array);
    }
    
    String getUserAgent() {
        return this.userAgent;
    }
    
    @Override
    public void init(final Callbacks callbacks) {
        this.stop();
        (this.dispatcherThread = new DispatcherThread(callbacks, this.userAgent, this)).start();
    }
    
    public void init(final Callbacks callbacks, final PipelinedRequester pipelinedRequester, final HitStore hitStore) {
        this.stop();
        (this.dispatcherThread = new DispatcherThread(callbacks, pipelinedRequester, this.userAgent, this)).start();
    }
    
    @Override
    public boolean isDryRun() {
        return this.dryRun;
    }
    
    @Override
    public void setDryRun(final boolean dryRun) {
        this.dryRun = dryRun;
    }
    
    @Override
    public void stop() {
        if (this.dispatcherThread != null && this.dispatcherThread.getLooper() != null) {
            this.dispatcherThread.getLooper().quit();
            this.dispatcherThread = null;
        }
    }
    
    void waitForThreadLooper() {
        this.dispatcherThread.getLooper();
        while (this.dispatcherThread.handlerExecuteOnDispatcherThread == null) {
            Thread.yield();
        }
    }
    
    private static class DispatcherThread extends HandlerThread
    {
        private final Callbacks callbacks;
        private AsyncDispatchTask currentTask;
        volatile Handler handlerExecuteOnDispatcherThread;
        private int lastStatusCode;
        private int maxEventsPerRequest;
        private final NetworkDispatcher parent;
        private final PipelinedRequester pipelinedRequester;
        private final RequesterCallbacks requesterCallBacks;
        private long retryInterval;
        private final String userAgent;
        
        private DispatcherThread(final Callbacks callbacks, final PipelinedRequester pipelinedRequester, final String userAgent, final NetworkDispatcher parent) {
            super("DispatcherThread");
            this.maxEventsPerRequest = 30;
            this.currentTask = null;
            this.callbacks = callbacks;
            this.userAgent = userAgent;
            this.pipelinedRequester = pipelinedRequester;
            this.requesterCallBacks = new RequesterCallbacks();
            this.pipelinedRequester.installCallbacks((PipelinedRequester.Callbacks)this.requesterCallBacks);
            this.parent = parent;
        }
        
        private DispatcherThread(final Callbacks callbacks, final String s, final NetworkDispatcher networkDispatcher) {
            this(callbacks, new PipelinedRequester(networkDispatcher.googleAnalyticsHost), s, networkDispatcher);
        }
        
        public void dispatchHits(final Hit[] array) {
            if (this.handlerExecuteOnDispatcherThread == null) {
                return;
            }
            this.handlerExecuteOnDispatcherThread.post((Runnable)new AsyncDispatchTask(array));
        }
        
        protected void onLooperPrepared() {
            this.handlerExecuteOnDispatcherThread = new Handler();
        }
        
        private class AsyncDispatchTask implements Runnable
        {
            private final LinkedList<Hit> hits;
            
            public AsyncDispatchTask(final Hit[] elements) {
                super();
                Collections.addAll(this.hits = new LinkedList<Hit>(), elements);
            }
            
            private void dispatchSomePendingHits(final boolean b) throws IOException, ParseException, HttpException {
                if (GoogleAnalyticsTracker.getInstance().getDebug() && b) {
                    Log.v("GoogleAnalyticsTracker", "dispatching hits in dry run mode");
                }
                final Hit[] array = this.hits.toArray(new Hit[0]);
                for (int n = 0; n < array.length && n < DispatcherThread.this.maxEventsPerRequest; ++n) {
                    final String addQueueTimeParameter = Utils.addQueueTimeParameter(array[n].hitString, System.currentTimeMillis());
                    final int index = addQueueTimeParameter.indexOf(63);
                    String substring;
                    String substring2;
                    if (index < 0) {
                        substring = "";
                        substring2 = addQueueTimeParameter;
                    }
                    else {
                        if (index > 0) {
                            substring2 = addQueueTimeParameter.substring(0, index);
                        }
                        else {
                            substring2 = "";
                        }
                        if (index < addQueueTimeParameter.length() - 2) {
                            substring = addQueueTimeParameter.substring(index + 1);
                        }
                        else {
                            substring = "";
                        }
                    }
                    BasicHttpEntityEnclosingRequest basicHttpEntityEnclosingRequest;
                    if (substring.length() < 2036) {
                        basicHttpEntityEnclosingRequest = new BasicHttpEntityEnclosingRequest("GET", addQueueTimeParameter);
                    }
                    else {
                        basicHttpEntityEnclosingRequest = new BasicHttpEntityEnclosingRequest("POST", "/p" + substring2);
                        ((HttpEntityEnclosingRequest)basicHttpEntityEnclosingRequest).addHeader("Content-Length", Integer.toString(substring.length()));
                        ((HttpEntityEnclosingRequest)basicHttpEntityEnclosingRequest).addHeader("Content-Type", "text/plain");
                        ((HttpEntityEnclosingRequest)basicHttpEntityEnclosingRequest).setEntity((HttpEntity)new StringEntity(substring));
                    }
                    String str = DispatcherThread.this.parent.googleAnalyticsHost.getHostName();
                    if (DispatcherThread.this.parent.googleAnalyticsHost.getPort() != 80) {
                        str = str + ":" + DispatcherThread.this.parent.googleAnalyticsHost.getPort();
                    }
                    ((HttpEntityEnclosingRequest)basicHttpEntityEnclosingRequest).addHeader("Host", str);
                    ((HttpEntityEnclosingRequest)basicHttpEntityEnclosingRequest).addHeader("User-Agent", DispatcherThread.this.userAgent);
                    if (GoogleAnalyticsTracker.getInstance().getDebug()) {
                        final StringBuffer sb = new StringBuffer();
                        final Header[] allHeaders = ((HttpEntityEnclosingRequest)basicHttpEntityEnclosingRequest).getAllHeaders();
                        for (int length = allHeaders.length, i = 0; i < length; ++i) {
                            sb.append(allHeaders[i].toString()).append("\n");
                        }
                        sb.append(((HttpEntityEnclosingRequest)basicHttpEntityEnclosingRequest).getRequestLine().toString()).append("\n");
                        Log.i("GoogleAnalyticsTracker", sb.toString());
                    }
                    if (substring.length() > 8192) {
                        Log.w("GoogleAnalyticsTracker", "Hit too long (> 8192 bytes)--not sent");
                        DispatcherThread.this.requesterCallBacks.requestSent();
                    }
                    else if (b) {
                        DispatcherThread.this.requesterCallBacks.requestSent();
                    }
                    else {
                        DispatcherThread.this.pipelinedRequester.addRequest((HttpEntityEnclosingRequest)basicHttpEntityEnclosingRequest);
                    }
                }
                if (!b) {
                    DispatcherThread.this.pipelinedRequester.sendRequests();
                }
            }
            
            public Hit removeNextHit() {
                return this.hits.poll();
            }
            
            @Override
            public void run() {
                DispatcherThread.this.currentTask = this;
                int n = 0;
                while (n < 5 && this.hits.size() > 0) {
                    long n2 = 0L;
                    try {
                        if (DispatcherThread.this.lastStatusCode == 500 || DispatcherThread.this.lastStatusCode == 503) {
                            n2 = (long)(Math.random() * DispatcherThread.this.retryInterval);
                            if (DispatcherThread.this.retryInterval < 256L) {
                                DispatcherThread.this.retryInterval *= 2L;
                            }
                        }
                        else {
                            DispatcherThread.this.retryInterval = 2L;
                        }
                        Thread.sleep(n2 * 1000L);
                        this.dispatchSomePendingHits(DispatcherThread.this.parent.isDryRun());
                        ++n;
                    }
                    catch (InterruptedException ex) {
                        Log.w("GoogleAnalyticsTracker", "Couldn't sleep.", (Throwable)ex);
                    }
                    catch (IOException ex2) {
                        Log.w("GoogleAnalyticsTracker", "Problem with socket or streams.", (Throwable)ex2);
                        goto Label_0151;
                    }
                    catch (HttpException ex3) {
                        Log.w("GoogleAnalyticsTracker", "Problem with http streams.", (Throwable)ex3);
                        goto Label_0151;
                    }
                }
                goto Label_0151;
            }
        }
        
        private class RequesterCallbacks implements PipelinedRequester.Callbacks
        {
            @Override
            public void pipelineModeChanged(final boolean b) {
                if (b) {
                    DispatcherThread.this.maxEventsPerRequest = 30;
                    return;
                }
                DispatcherThread.this.maxEventsPerRequest = 1;
            }
            
            @Override
            public void requestSent() {
                if (DispatcherThread.this.currentTask != null) {
                    final Hit removeNextHit = DispatcherThread.this.currentTask.removeNextHit();
                    if (removeNextHit != null) {
                        DispatcherThread.this.callbacks.hitDispatched(removeNextHit.hitId);
                    }
                }
            }
            
            @Override
            public void serverError(final int n) {
                DispatcherThread.this.lastStatusCode = n;
            }
        }
    }
}
