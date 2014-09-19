package com.fusepowered.m2.m2l;

import android.util.*;
import com.fusepowered.m2.m2l.factories.*;
import com.fusepowered.m2.m2l.util.*;
import android.os.*;

public class AdFetcher
{
    public static final String AD_CONFIGURATION_KEY = "Ad-Configuration";
    public static final String CLICKTHROUGH_URL_KEY = "Clickthrough-Url";
    public static final String HTML_RESPONSE_BODY_KEY = "Html-Response-Body";
    public static final String REDIRECT_URL_KEY = "Redirect-Url";
    public static final String SCROLLABLE_KEY = "Scrollable";
    private AdViewController mAdViewController;
    private AdFetchTask mCurrentTask;
    private final TaskTracker mTaskTracker;
    private int mTimeoutMilliseconds;
    private String mUserAgent;
    
    public AdFetcher(final AdViewController mAdViewController, final String mUserAgent) {
        super();
        this.mTimeoutMilliseconds = 10000;
        this.mAdViewController = mAdViewController;
        this.mUserAgent = mUserAgent;
        this.mTaskTracker = new TaskTracker();
    }
    
    private long getCurrentTaskId() {
        return this.mTaskTracker.getCurrentTaskId();
    }
    
    public void cancelFetch() {
        if (this.mCurrentTask != null) {
            Log.i("MoPub", "Canceling fetch ad for task #" + this.getCurrentTaskId());
            this.mCurrentTask.cancel(true);
        }
    }
    
    void cleanup() {
        this.cancelFetch();
        this.mAdViewController = null;
        this.mUserAgent = "";
    }
    
    public void fetchAdForUrl(final String s) {
        this.mTaskTracker.newTaskStarted();
        Log.i("MoPub", "Fetching ad for task #" + this.getCurrentTaskId());
        if (this.mCurrentTask != null) {
            this.mCurrentTask.cancel(true);
        }
        this.mCurrentTask = AdFetchTaskFactory.create(this.mTaskTracker, this.mAdViewController, this.mUserAgent, this.mTimeoutMilliseconds);
        try {
            AsyncTasks.safeExecuteOnExecutor(this.mCurrentTask, new String[] { s });
        }
        catch (Exception ex) {
            Log.d("MoPub", "Error executing AdFetchTask", (Throwable)ex);
        }
    }
    
    protected void setTimeout(final int mTimeoutMilliseconds) {
        this.mTimeoutMilliseconds = mTimeoutMilliseconds;
    }
    
    enum FetchStatus
    {
        AD_WARMING_UP("AD_WARMING_UP", 5), 
        CLEAR_AD_TYPE("CLEAR_AD_TYPE", 4), 
        FETCH_CANCELLED("FETCH_CANCELLED", 1), 
        INVALID_SERVER_RESPONSE_BACKOFF("INVALID_SERVER_RESPONSE_BACKOFF", 2), 
        INVALID_SERVER_RESPONSE_NOBACKOFF("INVALID_SERVER_RESPONSE_NOBACKOFF", 3), 
        NOT_SET("NOT_SET", 0);
    }
}
