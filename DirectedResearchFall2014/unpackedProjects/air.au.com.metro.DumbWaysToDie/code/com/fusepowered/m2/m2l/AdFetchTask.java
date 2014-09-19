package com.fusepowered.m2.m2l;

import android.os.*;
import org.apache.http.client.*;
import com.fusepowered.m2.m2l.factories.*;
import org.apache.http.client.methods.*;
import org.apache.http.*;
import android.util.*;
import com.fusepowered.m2.m2l.util.*;
import org.apache.http.conn.*;

public class AdFetchTask extends AsyncTask<String, Void, AdLoadTask>
{
    private static final double EXPONENTIAL_BACKOFF_FACTOR = 1.5;
    private static final int MAXIMUM_REFRESH_TIME_MILLISECONDS = 600000;
    private AdViewController mAdViewController;
    private Exception mException;
    private AdFetcher.FetchStatus mFetchStatus;
    private HttpClient mHttpClient;
    private long mTaskId;
    private TaskTracker mTaskTracker;
    private String mUserAgent;
    
    static /* synthetic */ int[] $SWITCH_TABLE$com$mopub$mobileads$AdFetcher$FetchStatus() {
        final int[] $switch_TABLE$com$mopub$mobileads$AdFetcher$FetchStatus = AdFetchTask.$SWITCH_TABLE$com$mopub$mobileads$AdFetcher$FetchStatus;
        if ($switch_TABLE$com$mopub$mobileads$AdFetcher$FetchStatus != null) {
            return $switch_TABLE$com$mopub$mobileads$AdFetcher$FetchStatus;
        }
        final int[] $switch_TABLE$com$mopub$mobileads$AdFetcher$FetchStatus2 = new int[AdFetcher.FetchStatus.values().length];
        while (true) {
            try {
                $switch_TABLE$com$mopub$mobileads$AdFetcher$FetchStatus2[AdFetcher.FetchStatus.AD_WARMING_UP.ordinal()] = 6;
                try {
                    $switch_TABLE$com$mopub$mobileads$AdFetcher$FetchStatus2[AdFetcher.FetchStatus.CLEAR_AD_TYPE.ordinal()] = 5;
                    try {
                        $switch_TABLE$com$mopub$mobileads$AdFetcher$FetchStatus2[AdFetcher.FetchStatus.FETCH_CANCELLED.ordinal()] = 2;
                        try {
                            $switch_TABLE$com$mopub$mobileads$AdFetcher$FetchStatus2[AdFetcher.FetchStatus.INVALID_SERVER_RESPONSE_BACKOFF.ordinal()] = 3;
                            try {
                                $switch_TABLE$com$mopub$mobileads$AdFetcher$FetchStatus2[AdFetcher.FetchStatus.INVALID_SERVER_RESPONSE_NOBACKOFF.ordinal()] = 4;
                                try {
                                    $switch_TABLE$com$mopub$mobileads$AdFetcher$FetchStatus2[AdFetcher.FetchStatus.NOT_SET.ordinal()] = 1;
                                    return AdFetchTask.$SWITCH_TABLE$com$mopub$mobileads$AdFetcher$FetchStatus = $switch_TABLE$com$mopub$mobileads$AdFetcher$FetchStatus2;
                                }
                                catch (NoSuchFieldError noSuchFieldError) {}
                            }
                            catch (NoSuchFieldError noSuchFieldError2) {}
                        }
                        catch (NoSuchFieldError noSuchFieldError3) {}
                    }
                    catch (NoSuchFieldError noSuchFieldError4) {}
                }
                catch (NoSuchFieldError noSuchFieldError5) {}
            }
            catch (NoSuchFieldError noSuchFieldError6) {
                continue;
            }
            break;
        }
    }
    
    public AdFetchTask(final TaskTracker mTaskTracker, final AdViewController mAdViewController, final String mUserAgent, final int n) {
        super();
        this.mFetchStatus = AdFetcher.FetchStatus.NOT_SET;
        this.mTaskTracker = mTaskTracker;
        this.mAdViewController = mAdViewController;
        this.mHttpClient = (HttpClient)HttpClientFactory.create(n);
        this.mTaskId = this.mTaskTracker.getCurrentTaskId();
        this.mUserAgent = mUserAgent;
    }
    
    private void cleanup() {
        this.mTaskTracker = null;
        this.mException = null;
        this.mFetchStatus = AdFetcher.FetchStatus.NOT_SET;
    }
    
    private void exponentialBackoff() {
        if (this.mAdViewController == null) {
            return;
        }
        int refreshTimeMilliseconds = (int)(1.5 * this.mAdViewController.getRefreshTimeMilliseconds());
        if (refreshTimeMilliseconds > 600000) {
            refreshTimeMilliseconds = 600000;
        }
        this.mAdViewController.setRefreshTimeMilliseconds(refreshTimeMilliseconds);
    }
    
    private AdLoadTask fetch(final String s) throws Exception {
        final HttpGet httpGet = new HttpGet(s);
        httpGet.addHeader(ResponseHeader.USER_AGENT.getKey(), this.mUserAgent);
        if (!this.isStateValid()) {
            return null;
        }
        final HttpResponse execute = this.mHttpClient.execute((HttpUriRequest)httpGet);
        if (!this.isResponseValid(execute)) {
            return null;
        }
        this.mAdViewController.configureUsingHttpResponse(execute);
        if (!this.responseContainsContent(execute)) {
            return null;
        }
        return AdLoadTask.fromHttpResponse(execute, this.mAdViewController);
    }
    
    private boolean isMostCurrentTask() {
        return this.mTaskTracker != null && this.mTaskTracker.isMostCurrentTask(this.mTaskId);
    }
    
    private boolean isResponseValid(final HttpResponse httpResponse) {
        if (httpResponse == null || httpResponse.getEntity() == null) {
            Log.d("MoPub", "MoPub server returned null response.");
            this.mFetchStatus = AdFetcher.FetchStatus.INVALID_SERVER_RESPONSE_NOBACKOFF;
            return false;
        }
        final int statusCode = httpResponse.getStatusLine().getStatusCode();
        if (statusCode >= 400) {
            Log.d("MoPub", "Server error: returned HTTP status code " + Integer.toString(statusCode) + ". Please try again.");
            this.mFetchStatus = AdFetcher.FetchStatus.INVALID_SERVER_RESPONSE_BACKOFF;
            return false;
        }
        if (statusCode != 200) {
            Log.d("MoPub", "MoPub server returned invalid response: HTTP status code " + Integer.toString(statusCode) + ".");
            this.mFetchStatus = AdFetcher.FetchStatus.INVALID_SERVER_RESPONSE_NOBACKOFF;
            return false;
        }
        return true;
    }
    
    private boolean isStateValid() {
        if (this.isCancelled()) {
            this.mFetchStatus = AdFetcher.FetchStatus.FETCH_CANCELLED;
            return false;
        }
        if (this.mAdViewController == null || this.mAdViewController.isDestroyed()) {
            Log.d("MoPub", "Error loading ad: AdViewController has already been GCed or destroyed.");
            return false;
        }
        return true;
    }
    
    private boolean responseContainsContent(final HttpResponse httpResponse) {
        if ("1".equals(HttpResponses.extractHeader(httpResponse, ResponseHeader.WARMUP))) {
            Log.d("MoPub", "Ad Unit (" + this.mAdViewController.getAdUnitId() + ") is still warming up. " + "Please try again in a few minutes.");
            this.mFetchStatus = AdFetcher.FetchStatus.AD_WARMING_UP;
            return false;
        }
        if ("clear".equals(HttpResponses.extractHeader(httpResponse, ResponseHeader.AD_TYPE))) {
            Log.d("MoPub", "No inventory found for adunit (" + this.mAdViewController.getAdUnitId() + ").");
            this.mFetchStatus = AdFetcher.FetchStatus.CLEAR_AD_TYPE;
            return false;
        }
        return true;
    }
    
    private void shutdownHttpClient() {
        if (this.mHttpClient != null) {
            final ClientConnectionManager connectionManager = this.mHttpClient.getConnectionManager();
            if (connectionManager != null) {
                connectionManager.shutdown();
            }
            this.mHttpClient = null;
        }
    }
    
    protected AdLoadTask doInBackground(final String... array) {
        try {
            return this.fetch(array[0]);
        }
        catch (Exception mException) {
            this.mException = mException;
            return null;
        }
        finally {
            this.shutdownHttpClient();
        }
    }
    
    protected void onCancelled() {
        if (!this.isMostCurrentTask()) {
            Log.d("MoPub", "Ad response is stale.");
            this.cleanup();
            return;
        }
        Log.d("MoPub", "Ad loading was cancelled.");
        if (this.mException != null) {
            Log.d("MoPub", "Exception caught while loading ad: " + this.mException);
        }
        this.mTaskTracker.markTaskCompleted(this.mTaskId);
        this.cleanup();
    }
    
    protected void onPostExecute(final AdLoadTask adLoadTask) {
        if (!this.isMostCurrentTask()) {
            Log.d("MoPub", "Ad response is stale.");
            this.cleanup();
            return;
        }
        if (this.mAdViewController == null || this.mAdViewController.isDestroyed()) {
            if (adLoadTask != null) {
                adLoadTask.cleanup();
            }
            this.mTaskTracker.markTaskCompleted(this.mTaskId);
            this.cleanup();
            return;
        }
        if (adLoadTask == null) {
            if (this.mException != null) {
                Log.d("MoPub", "Exception caught while loading ad: " + this.mException);
            }
            MoPubErrorCode moPubErrorCode = null;
            switch ($SWITCH_TABLE$com$mopub$mobileads$AdFetcher$FetchStatus()[this.mFetchStatus.ordinal()]) {
                default: {
                    moPubErrorCode = MoPubErrorCode.UNSPECIFIED;
                    break;
                }
                case 1: {
                    moPubErrorCode = MoPubErrorCode.UNSPECIFIED;
                    break;
                }
                case 2: {
                    moPubErrorCode = MoPubErrorCode.CANCELLED;
                    break;
                }
                case 3:
                case 4: {
                    moPubErrorCode = MoPubErrorCode.SERVER_ERROR;
                    break;
                }
                case 5:
                case 6: {
                    moPubErrorCode = MoPubErrorCode.NO_FILL;
                    break;
                }
            }
            this.mAdViewController.adDidFail(moPubErrorCode);
            if (this.mFetchStatus == AdFetcher.FetchStatus.INVALID_SERVER_RESPONSE_BACKOFF) {
                this.exponentialBackoff();
                this.mFetchStatus = AdFetcher.FetchStatus.NOT_SET;
            }
        }
        else {
            adLoadTask.execute();
            adLoadTask.cleanup();
        }
        this.mTaskTracker.markTaskCompleted(this.mTaskId);
        this.cleanup();
    }
}
