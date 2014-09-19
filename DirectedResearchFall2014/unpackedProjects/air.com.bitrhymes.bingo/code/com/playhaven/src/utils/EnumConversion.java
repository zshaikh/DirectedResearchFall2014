package com.playhaven.src.utils;

import v2.com.playhaven.views.interstitial.*;
import com.playhaven.src.publishersdk.purchases.*;
import v2.com.playhaven.requests.content.*;
import com.playhaven.src.publishersdk.content.*;

public class EnumConversion
{
    public static v2.com.playhaven.model.PHPurchase.AndroidBillingResult convertToNewBillingResult(final PHPurchase.Resolution resolution) {
        if (resolution == null) {
            return null;
        }
        switch (resolution) {
            default: {
                return null;
            }
            case Buy: {
                return v2.com.playhaven.model.PHPurchase.AndroidBillingResult.Bought;
            }
            case Cancel: {
                return v2.com.playhaven.model.PHPurchase.AndroidBillingResult.Cancelled;
            }
            case Error: {
                return v2.com.playhaven.model.PHPurchase.AndroidBillingResult.Failed;
            }
        }
    }
    
    public static PHCloseButton.CloseButtonState convertToNewButtonState(final PHContentView.ButtonState buttonState) {
        if (buttonState == null) {
            return null;
        }
        switch (buttonState) {
            default: {
                return null;
            }
            case Up: {
                return PHCloseButton.CloseButtonState.Up;
            }
            case Down: {
                return PHCloseButton.CloseButtonState.Down;
            }
        }
    }
    
    public static v2.com.playhaven.model.PHPurchase.PHMarketplaceOrigin convertToNewOrigin(final PHPublisherIAPTrackingRequest.PHPurchaseOrigin phPurchaseOrigin) {
        if (phPurchaseOrigin == null) {
            return null;
        }
        switch (phPurchaseOrigin) {
            default: {
                return null;
            }
            case Google: {
                return v2.com.playhaven.model.PHPurchase.PHMarketplaceOrigin.Google;
            }
            case Amazon: {
                return v2.com.playhaven.model.PHPurchase.PHMarketplaceOrigin.Amazon;
            }
            case Motorola: {
                return v2.com.playhaven.model.PHPurchase.PHMarketplaceOrigin.Motorola;
            }
            case Paypal: {
                return v2.com.playhaven.model.PHPurchase.PHMarketplaceOrigin.Paypal;
            }
            case Crossmo: {
                return v2.com.playhaven.model.PHPurchase.PHMarketplaceOrigin.Crossmo;
            }
        }
    }
    
    public static PHPurchase.Resolution convertToOldBillingResult(final v2.com.playhaven.model.PHPurchase.AndroidBillingResult androidBillingResult) {
        if (androidBillingResult == null) {
            return null;
        }
        switch (androidBillingResult) {
            default: {
                return null;
            }
            case Bought: {
                return PHPurchase.Resolution.Buy;
            }
            case Cancelled: {
                return PHPurchase.Resolution.Cancel;
            }
            case Failed: {
                return PHPurchase.Resolution.Error;
            }
        }
    }
    
    public static PHPublisherContentRequest.PHDismissType convertToOldDismiss(final PHContentRequest.PHDismissType phDismissType) {
        if (phDismissType == null) {
            return null;
        }
        switch (phDismissType) {
            default: {
                return null;
            }
            case AdSelfDismiss: {
                return PHPublisherContentRequest.PHDismissType.ContentUnitTriggered;
            }
            case CloseButton: {
                return PHPublisherContentRequest.PHDismissType.CloseButtonTriggered;
            }
            case ApplicationBackgrounded: {
                return PHPublisherContentRequest.PHDismissType.ApplicationTriggered;
            }
        }
    }
    
    public static PHPublisherIAPTrackingRequest.PHPurchaseOrigin convertToOldOrigin(final v2.com.playhaven.model.PHPurchase.PHMarketplaceOrigin phMarketplaceOrigin) {
        if (phMarketplaceOrigin == null) {
            return null;
        }
        switch (phMarketplaceOrigin) {
            default: {
                return null;
            }
            case Google: {
                return PHPublisherIAPTrackingRequest.PHPurchaseOrigin.Google;
            }
            case Amazon: {
                return PHPublisherIAPTrackingRequest.PHPurchaseOrigin.Amazon;
            }
            case Motorola: {
                return PHPublisherIAPTrackingRequest.PHPurchaseOrigin.Motorola;
            }
            case Paypal: {
                return PHPublisherIAPTrackingRequest.PHPurchaseOrigin.Paypal;
            }
            case Crossmo: {
                return PHPublisherIAPTrackingRequest.PHPurchaseOrigin.Crossmo;
            }
        }
    }
}
