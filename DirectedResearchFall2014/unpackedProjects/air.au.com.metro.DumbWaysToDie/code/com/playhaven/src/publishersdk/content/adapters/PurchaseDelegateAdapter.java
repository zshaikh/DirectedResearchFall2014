package com.playhaven.src.publishersdk.content.adapters;

import v2.com.playhaven.listeners.*;
import com.playhaven.src.publishersdk.content.*;
import v2.com.playhaven.requests.content.*;
import v2.com.playhaven.model.*;

public class PurchaseDelegateAdapter implements PHPurchaseListener
{
    private PHPublisherContentRequest.PurchaseDelegate delegate;
    
    public PurchaseDelegateAdapter(final PHPublisherContentRequest.PurchaseDelegate delegate) {
        super();
        this.delegate = delegate;
    }
    
    @Override
    public void onMadePurchase(final PHContentRequest phContentRequest, final PHPurchase phPurchase) {
        this.delegate.shouldMakePurchase((PHPublisherContentRequest)phContentRequest, new com.playhaven.src.publishersdk.content.PHPurchase(phPurchase));
    }
}
