package com.facebook;

import java.util.concurrent.atomic.*;
import android.os.*;
import java.util.*;

public class RequestBatch extends AbstractList<Request>
{
    private static AtomicInteger idGenerator;
    private String batchApplicationId;
    private Handler callbackHandler;
    private List<RequestBatch$Callback> callbacks;
    private final String id;
    private List<Request> requests;
    private int timeoutInMilliseconds;
    
    static {
        RequestBatch.idGenerator = new AtomicInteger();
    }
    
    public RequestBatch() {
        super();
        this.requests = new ArrayList<Request>();
        this.timeoutInMilliseconds = 0;
        this.id = Integer.valueOf(RequestBatch.idGenerator.incrementAndGet()).toString();
        this.callbacks = new ArrayList<RequestBatch$Callback>();
        this.requests = new ArrayList<Request>();
    }
    
    public RequestBatch(final RequestBatch c) {
        super();
        this.requests = new ArrayList<Request>();
        this.timeoutInMilliseconds = 0;
        this.id = Integer.valueOf(RequestBatch.idGenerator.incrementAndGet()).toString();
        this.callbacks = new ArrayList<RequestBatch$Callback>();
        this.requests = new ArrayList<Request>(c);
        this.callbackHandler = c.callbackHandler;
        this.timeoutInMilliseconds = c.timeoutInMilliseconds;
        this.callbacks = new ArrayList<RequestBatch$Callback>(c.callbacks);
    }
    
    public RequestBatch(final Collection<Request> c) {
        super();
        this.requests = new ArrayList<Request>();
        this.timeoutInMilliseconds = 0;
        this.id = Integer.valueOf(RequestBatch.idGenerator.incrementAndGet()).toString();
        this.callbacks = new ArrayList<RequestBatch$Callback>();
        this.requests = new ArrayList<Request>(c);
    }
    
    public RequestBatch(final Request... a) {
        super();
        this.requests = new ArrayList<Request>();
        this.timeoutInMilliseconds = 0;
        this.id = Integer.valueOf(RequestBatch.idGenerator.incrementAndGet()).toString();
        this.callbacks = new ArrayList<RequestBatch$Callback>();
        this.requests = Arrays.asList(a);
    }
    
    @Override
    public final void add(final int n, final Request request) {
        this.requests.add(n, request);
    }
    
    @Override
    public final boolean add(final Request request) {
        return this.requests.add(request);
    }
    
    public void addCallback(final RequestBatch$Callback requestBatch$Callback) {
        if (!this.callbacks.contains(requestBatch$Callback)) {
            this.callbacks.add(requestBatch$Callback);
        }
    }
    
    @Override
    public final void clear() {
        this.requests.clear();
    }
    
    public final List<Response> executeAndWait() {
        return this.executeAndWaitImpl();
    }
    
    List<Response> executeAndWaitImpl() {
        return Request.executeBatchAndWait(this);
    }
    
    public final RequestAsyncTask executeAsync() {
        return this.executeAsyncImpl();
    }
    
    RequestAsyncTask executeAsyncImpl() {
        return Request.executeBatchAsync(this);
    }
    
    @Override
    public final Request get(final int n) {
        return this.requests.get(n);
    }
    
    final String getBatchApplicationId() {
        return this.batchApplicationId;
    }
    
    final Handler getCallbackHandler() {
        return this.callbackHandler;
    }
    
    final List<RequestBatch$Callback> getCallbacks() {
        return this.callbacks;
    }
    
    final String getId() {
        return this.id;
    }
    
    final List<Request> getRequests() {
        return this.requests;
    }
    
    public int getTimeout() {
        return this.timeoutInMilliseconds;
    }
    
    @Override
    public final Request remove(final int n) {
        return this.requests.remove(n);
    }
    
    public void removeCallback(final RequestBatch$Callback requestBatch$Callback) {
        this.callbacks.remove(requestBatch$Callback);
    }
    
    @Override
    public final Request set(final int n, final Request request) {
        return this.requests.set(n, request);
    }
    
    final void setBatchApplicationId(final String batchApplicationId) {
        this.batchApplicationId = batchApplicationId;
    }
    
    final void setCallbackHandler(final Handler callbackHandler) {
        this.callbackHandler = callbackHandler;
    }
    
    public void setTimeout(final int timeoutInMilliseconds) {
        if (timeoutInMilliseconds < 0) {
            throw new IllegalArgumentException("Argument timeoutInMilliseconds must be >= 0.");
        }
        this.timeoutInMilliseconds = timeoutInMilliseconds;
    }
    
    @Override
    public final int size() {
        return this.requests.size();
    }
}
