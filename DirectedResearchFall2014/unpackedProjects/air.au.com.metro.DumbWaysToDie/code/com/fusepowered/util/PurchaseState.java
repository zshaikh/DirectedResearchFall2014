package com.fusepowered.util;

public enum PurchaseState
{
    CANCELED, 
    PURCHASED, 
    REFUNDED;
    
    public static PurchaseState valueOf(final int n) {
        final PurchaseState[] values = values();
        if (n < 0 || n >= values.length) {
            return PurchaseState.CANCELED;
        }
        return values[n];
    }
}
