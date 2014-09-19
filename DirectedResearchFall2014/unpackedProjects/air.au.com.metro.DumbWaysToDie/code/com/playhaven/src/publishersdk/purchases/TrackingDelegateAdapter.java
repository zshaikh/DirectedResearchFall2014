package com.playhaven.src.publishersdk.purchases;

import v2.com.playhaven.listeners.*;
import com.playhaven.src.common.*;
import v2.com.playhaven.requests.purchases.*;
import v2.com.playhaven.model.*;
import org.json.*;

public class TrackingDelegateAdapter implements PHIAPRequestListener
{
    private PHAPIRequest.Delegate delegate;
    
    public TrackingDelegateAdapter(final PHAPIRequest.Delegate delegate) {
        super();
        this.delegate = delegate;
    }
    
    @Override
    public void onIAPRequestFailed(final PHIAPTrackingRequest phiapTrackingRequest, final PHError phError) {
        this.delegate.requestFailed((PHAPIRequest)phiapTrackingRequest, new Exception(phError.getMessage()));
    }
    
    @Override
    public void onIAPRequestSucceeded(final PHIAPTrackingRequest phiapTrackingRequest) {
        this.delegate.requestSucceeded((PHAPIRequest)phiapTrackingRequest, new JSONObject());
    }
}
