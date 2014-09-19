package com.playhaven.src.publishersdk.open;

import v2.com.playhaven.listeners.*;
import com.playhaven.src.common.*;
import v2.com.playhaven.requests.open.*;
import v2.com.playhaven.model.*;
import org.json.*;

public class APIRequestDelegateAdapter implements PHOpenRequestListener
{
    private PHAPIRequest.Delegate delegate;
    
    public APIRequestDelegateAdapter(final PHAPIRequest.Delegate delegate) {
        super();
        this.delegate = delegate;
    }
    
    @Override
    public void onOpenFailed(final PHOpenRequest phOpenRequest, final PHError phError) {
        this.delegate.requestFailed((PHAPIRequest)phOpenRequest, new Exception(phError.getMessage()));
    }
    
    @Override
    public void onOpenSuccessful(final PHOpenRequest phOpenRequest) {
        this.delegate.requestSucceeded((PHAPIRequest)phOpenRequest, new JSONObject());
    }
}
