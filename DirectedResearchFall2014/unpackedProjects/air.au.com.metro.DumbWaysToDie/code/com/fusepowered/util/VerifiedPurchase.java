package com.fusepowered.util;

public class VerifiedPurchase
{
    public String developerPayload;
    public String orderId;
    public String productId;
    public String purchaseState;
    public long purchaseTime;
    public String purchaseToken;
    
    public VerifiedPurchase(final String purchaseState, final String purchaseToken, final String productId, final String orderId, final long purchaseTime, final String developerPayload) {
        super();
        this.purchaseState = purchaseState;
        this.purchaseToken = purchaseToken;
        this.productId = productId;
        this.orderId = orderId;
        this.purchaseTime = purchaseTime;
        this.developerPayload = developerPayload;
    }
    
    public String getDeveloperPayload() {
        return this.developerPayload;
    }
    
    public String getOrderId() {
        return this.orderId;
    }
    
    public String getProductId() {
        return this.productId;
    }
    
    public String getPurchaseState() {
        return this.purchaseState;
    }
    
    public long getPurchaseTime() {
        return this.purchaseTime;
    }
    
    public String getPurchaseToken() {
        return this.purchaseToken;
    }
    
    public void setDeveloperPayload(final String developerPayload) {
        this.developerPayload = developerPayload;
    }
    
    public void setOrderId(final String orderId) {
        this.orderId = orderId;
    }
    
    public void setProductId(final String productId) {
        this.productId = productId;
    }
    
    public void setPurchaseState(final String purchaseState) {
        this.purchaseState = purchaseState;
    }
    
    public void setPurchaseTime(final long purchaseTime) {
        this.purchaseTime = purchaseTime;
    }
    
    public void setPurchaseToken(final String purchaseToken) {
        this.purchaseToken = purchaseToken;
    }
    
    @Override
    public String toString() {
        return "VerifiedPurchase [purchaseState=" + this.purchaseState + ", purchaseToken=" + this.purchaseToken + ", productId=" + this.productId + ", orderId=" + this.orderId + ", purchaseTime=" + this.purchaseTime + ", developerPayload=" + this.developerPayload + ']';
    }
}
