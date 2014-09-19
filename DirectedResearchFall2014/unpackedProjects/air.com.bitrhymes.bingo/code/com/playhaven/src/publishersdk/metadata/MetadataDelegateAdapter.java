package com.playhaven.src.publishersdk.metadata;

import v2.com.playhaven.listeners.*;
import com.playhaven.src.common.*;
import v2.com.playhaven.requests.badge.*;
import v2.com.playhaven.model.*;
import org.json.*;

public class MetadataDelegateAdapter implements PHBadgeRequestListener
{
    private PHAPIRequest.Delegate delegate;
    
    public MetadataDelegateAdapter(final PHAPIRequest.Delegate delegate) {
        super();
        this.delegate = delegate;
    }
    
    @Override
    public void onBadgeRequestFailed(final PHBadgeRequest phBadgeRequest, final PHError phError) {
        this.delegate.requestFailed((PHAPIRequest)phBadgeRequest, new Exception(phError.getMessage()));
    }
    
    @Override
    public void onBadgeRequestSucceeded(final PHBadgeRequest phBadgeRequest, final JSONObject jsonObject) {
        this.delegate.requestSucceeded((PHAPIRequest)phBadgeRequest, jsonObject);
    }
}
