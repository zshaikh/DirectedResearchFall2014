package com.facebook.widget;

import c.m.x.a.gv.*;
import android.content.*;
import java.util.*;
import com.facebook.model.*;
import com.facebook.internal.*;
import com.facebook.*;
import android.os.*;

class GraphObjectPagingLoader extends ac
{
    private boolean appendResults;
    private Request currentRequest;
    private SimpleGraphObjectCursor cursor;
    private final Class graphObjectClass;
    private boolean loading;
    private Request nextRequest;
    private GraphObjectPagingLoader$OnErrorListener onErrorListener;
    private Request originalRequest;
    private boolean skipRoundtripIfCached;
    
    public GraphObjectPagingLoader(final Context context, final Class graphObjectClass) {
        super(context);
        this.appendResults = false;
        this.loading = false;
        this.graphObjectClass = graphObjectClass;
    }
    
    private void addResults(final Response response) {
        SimpleGraphObjectCursor simpleGraphObjectCursor;
        if (this.cursor == null || !this.appendResults) {
            simpleGraphObjectCursor = new SimpleGraphObjectCursor();
        }
        else {
            simpleGraphObjectCursor = new SimpleGraphObjectCursor(this.cursor);
        }
        final GraphObjectPagingLoader$PagedResults graphObjectPagingLoader$PagedResults = (GraphObjectPagingLoader$PagedResults)response.getGraphObjectAs(GraphObjectPagingLoader$PagedResults.class);
        final boolean isFromCache = response.getIsFromCache();
        final GraphObjectList castToList = graphObjectPagingLoader$PagedResults.getData().castToListOf(this.graphObjectClass);
        boolean b;
        if (castToList.size() > 0) {
            b = true;
        }
        else {
            b = false;
        }
        if (b) {
            this.nextRequest = response.getRequestForPagedResults(Response$PagingDirection.NEXT);
            simpleGraphObjectCursor.addGraphObjects(castToList, isFromCache);
            simpleGraphObjectCursor.setMoreObjectsAvailable(true);
        }
        if (!b) {
            simpleGraphObjectCursor.setMoreObjectsAvailable(false);
            simpleGraphObjectCursor.setFromCache(isFromCache);
            this.nextRequest = null;
        }
        if (!isFromCache) {
            this.skipRoundtripIfCached = false;
        }
        this.deliverResult(simpleGraphObjectCursor);
    }
    
    private CacheableRequestBatch putRequestIntoBatch(final Request request, final boolean b) {
        final CacheableRequestBatch cacheableRequestBatch = new CacheableRequestBatch(new Request[] { request });
        cacheableRequestBatch.setForceRoundTrip(!b);
        return cacheableRequestBatch;
    }
    
    private void requestCompleted(final Response response) {
        if (response.getRequest() == this.currentRequest) {
            this.loading = false;
            this.currentRequest = null;
            final FacebookRequestError error = response.getError();
            FacebookException exception;
            if (error == null) {
                exception = null;
            }
            else {
                exception = error.getException();
            }
            if (response.getGraphObject() == null && exception == null) {
                exception = new FacebookException("GraphObjectPagingLoader received neither a result nor an error.");
            }
            if (exception == null) {
                this.addResults(response);
                return;
            }
            this.nextRequest = null;
            if (this.onErrorListener != null) {
                this.onErrorListener.onError(exception, this);
            }
        }
    }
    
    private void startLoading(final Request currentRequest, final boolean skipRoundtripIfCached, final long n) {
        this.skipRoundtripIfCached = skipRoundtripIfCached;
        this.appendResults = false;
        this.nextRequest = null;
        (this.currentRequest = currentRequest).setCallback(new GraphObjectPagingLoader$2(this));
        this.loading = true;
        final GraphObjectPagingLoader$3 graphObjectPagingLoader$3 = new GraphObjectPagingLoader$3(this, this.putRequestIntoBatch(currentRequest, skipRoundtripIfCached));
        if (n == 0L) {
            graphObjectPagingLoader$3.run();
            return;
        }
        new Handler().postDelayed((Runnable)graphObjectPagingLoader$3, n);
    }
    
    public void clearResults() {
        this.nextRequest = null;
        this.originalRequest = null;
        this.currentRequest = null;
        this.deliverResult(null);
    }
    
    public void deliverResult(final SimpleGraphObjectCursor cursor) {
        final SimpleGraphObjectCursor cursor2 = this.cursor;
        this.cursor = cursor;
        if (this.isStarted()) {
            super.deliverResult(cursor);
            if (cursor2 != null && cursor2 != cursor && !cursor2.isClosed()) {
                cursor2.close();
            }
        }
    }
    
    public void followNextLink() {
        if (this.nextRequest != null) {
            this.appendResults = true;
            (this.currentRequest = this.nextRequest).setCallback(new GraphObjectPagingLoader$1(this));
            this.loading = true;
            Request.executeBatchAsync(this.putRequestIntoBatch(this.currentRequest, this.skipRoundtripIfCached));
        }
    }
    
    public SimpleGraphObjectCursor getCursor() {
        return this.cursor;
    }
    
    public GraphObjectPagingLoader$OnErrorListener getOnErrorListener() {
        return this.onErrorListener;
    }
    
    public boolean isLoading() {
        return this.loading;
    }
    
    @Override
    protected void onStartLoading() {
        super.onStartLoading();
        if (this.cursor != null) {
            this.deliverResult(this.cursor);
        }
    }
    
    public void refreshOriginalRequest(final long n) {
        if (this.originalRequest == null) {
            throw new FacebookException("refreshOriginalRequest may not be called until after startLoading has been called.");
        }
        this.startLoading(this.originalRequest, false, n);
    }
    
    public void setOnErrorListener(final GraphObjectPagingLoader$OnErrorListener onErrorListener) {
        this.onErrorListener = onErrorListener;
    }
    
    public void startLoading(final Request originalRequest, final boolean b) {
        this.startLoading(this.originalRequest = originalRequest, b, 0L);
    }
}
