package com.playhaven.src.publishersdk.content.adapters;

import v2.com.playhaven.listeners.*;
import com.playhaven.src.publishersdk.content.*;
import com.playhaven.src.common.*;
import v2.com.playhaven.requests.content.*;
import com.playhaven.src.utils.*;
import v2.com.playhaven.model.*;

public class ContentDelegateAdapter implements PHContentRequestListener
{
    private PHPublisherContentRequest.ContentDelegate content_delegate;
    private PHPublisherContentRequest.FailureDelegate failure_delegate;
    private PHAPIRequest.Delegate request_delegate;
    
    public ContentDelegateAdapter(final PHPublisherContentRequest.ContentDelegate content_delegate, final PHPublisherContentRequest.FailureDelegate failure_delegate, final PHAPIRequest.Delegate request_delegate) {
        super();
        this.content_delegate = content_delegate;
        this.failure_delegate = failure_delegate;
        this.request_delegate = request_delegate;
    }
    
    public PHPublisherContentRequest.ContentDelegate getContentDelegate() {
        return this.content_delegate;
    }
    
    public PHPublisherContentRequest.FailureDelegate getFailureDelegate() {
        return this.failure_delegate;
    }
    
    public PHAPIRequest.Delegate getRequestDelegate() {
        return this.request_delegate;
    }
    
    public boolean hasContentDelegate() {
        return this.content_delegate != null;
    }
    
    public boolean hasFailureDelegate() {
        return this.failure_delegate != null;
    }
    
    public boolean hasRequestDelegate() {
        return this.request_delegate != null;
    }
    
    @Override
    public void onDismissedContent(final PHContentRequest phContentRequest, final PHContentRequest.PHDismissType phDismissType) {
        if (this.content_delegate != null) {
            this.content_delegate.didDismissContent((PHPublisherContentRequest)phContentRequest, EnumConversion.convertToOldDismiss(phDismissType));
        }
    }
    
    @Override
    public void onDisplayedContent(final PHContentRequest phContentRequest, final PHContent phContent) {
        if (this.content_delegate != null) {
            this.content_delegate.didDisplayContent((PHPublisherContentRequest)phContentRequest, new com.playhaven.src.publishersdk.content.PHContent(phContent));
        }
    }
    
    @Override
    public void onFailedToDisplayContent(final PHContentRequest phContentRequest, final PHError phError) {
        if (this.failure_delegate != null) {
            this.failure_delegate.didFail((PHPublisherContentRequest)phContentRequest, phError.getMessage());
            this.failure_delegate.contentDidFail((PHPublisherContentRequest)phContentRequest, new Exception(phError.getMessage()));
        }
        else {
            if (this.request_delegate != null) {
                this.request_delegate.requestFailed((PHAPIRequest)phContentRequest, new Exception(phError.getMessage()));
                return;
            }
            if (this.content_delegate != null) {
                ((PHAPIRequest.Delegate)this.content_delegate).requestFailed((PHAPIRequest)phContentRequest, new Exception(phError.getMessage()));
            }
        }
    }
    
    @Override
    public void onNoContent(final PHContentRequest phContentRequest) {
        if (this.content_delegate != null) {
            this.content_delegate.didDismissContent((PHPublisherContentRequest)phContentRequest, PHPublisherContentRequest.PHDismissType.NoContentTriggered);
        }
    }
    
    @Override
    public void onReceivedContent(final PHContentRequest phContentRequest, final PHContent phContent) {
        if (this.request_delegate != null) {
            this.request_delegate.requestSucceeded((PHAPIRequest)phContentRequest, phContent.context);
        }
        else if (this.content_delegate != null) {
            ((PHAPIRequest.Delegate)this.content_delegate).requestSucceeded((PHAPIRequest)phContentRequest, phContent.context);
        }
    }
    
    @Override
    public void onSentContentRequest(final PHContentRequest phContentRequest) {
        if (this.content_delegate != null) {
            this.content_delegate.willGetContent((PHPublisherContentRequest)phContentRequest);
        }
    }
    
    @Override
    public void onWillDisplayContent(final PHContentRequest phContentRequest, final PHContent phContent) {
        if (this.content_delegate != null) {
            this.content_delegate.willDisplayContent((PHPublisherContentRequest)phContentRequest, new com.playhaven.src.publishersdk.content.PHContent(phContent));
        }
    }
}
