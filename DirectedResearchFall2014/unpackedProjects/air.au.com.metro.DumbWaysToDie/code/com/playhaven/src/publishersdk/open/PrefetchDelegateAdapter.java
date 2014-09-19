package com.playhaven.src.publishersdk.open;

import v2.com.playhaven.listeners.*;
import v2.com.playhaven.requests.open.*;

public class PrefetchDelegateAdapter implements PHPrefetchListener
{
    private PHPublisherOpenRequest.PrefetchListener delegate;
    
    public PrefetchDelegateAdapter(final PHPublisherOpenRequest.PrefetchListener delegate) {
        super();
        this.delegate = delegate;
    }
    
    @Override
    public void onPrefetchFinished(final PHOpenRequest phOpenRequest) {
        this.delegate.prefetchFinished((PHPublisherOpenRequest)phOpenRequest);
    }
}
