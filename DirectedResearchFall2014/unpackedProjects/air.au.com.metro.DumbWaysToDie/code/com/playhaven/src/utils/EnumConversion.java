package com.playhaven.src.utils;

import com.playhaven.src.publishersdk.purchases.*;
import v2.com.playhaven.requests.content.*;
import v2.com.playhaven.views.interstitial.*;
import com.playhaven.src.publishersdk.content.*;

public class EnumConversion
{
    static /* synthetic */ int[] $SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHContentView$ButtonState() {
        final int[] $switch_TABLE$com$playhaven$src$publishersdk$content$PHContentView$ButtonState = EnumConversion.$SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHContentView$ButtonState;
        if ($switch_TABLE$com$playhaven$src$publishersdk$content$PHContentView$ButtonState != null) {
            return $switch_TABLE$com$playhaven$src$publishersdk$content$PHContentView$ButtonState;
        }
        final int[] $switch_TABLE$com$playhaven$src$publishersdk$content$PHContentView$ButtonState2 = new int[PHContentView.ButtonState.values().length];
        while (true) {
            try {
                $switch_TABLE$com$playhaven$src$publishersdk$content$PHContentView$ButtonState2[PHContentView.ButtonState.Down.ordinal()] = 1;
                try {
                    $switch_TABLE$com$playhaven$src$publishersdk$content$PHContentView$ButtonState2[PHContentView.ButtonState.Up.ordinal()] = 2;
                    return EnumConversion.$SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHContentView$ButtonState = $switch_TABLE$com$playhaven$src$publishersdk$content$PHContentView$ButtonState2;
                }
                catch (NoSuchFieldError noSuchFieldError) {}
            }
            catch (NoSuchFieldError noSuchFieldError2) {
                continue;
            }
            break;
        }
    }
    
    static /* synthetic */ int[] $SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPurchase$Resolution() {
        final int[] $switch_TABLE$com$playhaven$src$publishersdk$content$PHPurchase$Resolution = EnumConversion.$SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPurchase$Resolution;
        if ($switch_TABLE$com$playhaven$src$publishersdk$content$PHPurchase$Resolution != null) {
            return $switch_TABLE$com$playhaven$src$publishersdk$content$PHPurchase$Resolution;
        }
        final int[] $switch_TABLE$com$playhaven$src$publishersdk$content$PHPurchase$Resolution2 = new int[PHPurchase.Resolution.values().length];
        while (true) {
            try {
                $switch_TABLE$com$playhaven$src$publishersdk$content$PHPurchase$Resolution2[PHPurchase.Resolution.Buy.ordinal()] = 1;
                try {
                    $switch_TABLE$com$playhaven$src$publishersdk$content$PHPurchase$Resolution2[PHPurchase.Resolution.Cancel.ordinal()] = 2;
                    try {
                        $switch_TABLE$com$playhaven$src$publishersdk$content$PHPurchase$Resolution2[PHPurchase.Resolution.Error.ordinal()] = 3;
                        return EnumConversion.$SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPurchase$Resolution = $switch_TABLE$com$playhaven$src$publishersdk$content$PHPurchase$Resolution2;
                    }
                    catch (NoSuchFieldError noSuchFieldError) {}
                }
                catch (NoSuchFieldError noSuchFieldError2) {}
            }
            catch (NoSuchFieldError noSuchFieldError3) {
                continue;
            }
            break;
        }
    }
    
    static /* synthetic */ int[] $SWITCH_TABLE$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin() {
        final int[] $switch_TABLE$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin = EnumConversion.$SWITCH_TABLE$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin;
        if ($switch_TABLE$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin != null) {
            return $switch_TABLE$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin;
        }
        final int[] $switch_TABLE$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin2 = new int[PHPublisherIAPTrackingRequest.PHPurchaseOrigin.values().length];
        while (true) {
            try {
                $switch_TABLE$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin2[PHPublisherIAPTrackingRequest.PHPurchaseOrigin.Amazon.ordinal()] = 2;
                try {
                    $switch_TABLE$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin2[PHPublisherIAPTrackingRequest.PHPurchaseOrigin.Crossmo.ordinal()] = 4;
                    try {
                        $switch_TABLE$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin2[PHPublisherIAPTrackingRequest.PHPurchaseOrigin.Google.ordinal()] = 1;
                        try {
                            $switch_TABLE$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin2[PHPublisherIAPTrackingRequest.PHPurchaseOrigin.Motorola.ordinal()] = 5;
                            try {
                                $switch_TABLE$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin2[PHPublisherIAPTrackingRequest.PHPurchaseOrigin.Paypal.ordinal()] = 3;
                                return EnumConversion.$SWITCH_TABLE$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin = $switch_TABLE$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin2;
                            }
                            catch (NoSuchFieldError noSuchFieldError) {}
                        }
                        catch (NoSuchFieldError noSuchFieldError2) {}
                    }
                    catch (NoSuchFieldError noSuchFieldError3) {}
                }
                catch (NoSuchFieldError noSuchFieldError4) {}
            }
            catch (NoSuchFieldError noSuchFieldError5) {
                continue;
            }
            break;
        }
    }
    
    static /* synthetic */ int[] $SWITCH_TABLE$v2$com$playhaven$model$PHPurchase$AndroidBillingResult() {
        final int[] $switch_TABLE$v2$com$playhaven$model$PHPurchase$AndroidBillingResult = EnumConversion.$SWITCH_TABLE$v2$com$playhaven$model$PHPurchase$AndroidBillingResult;
        if ($switch_TABLE$v2$com$playhaven$model$PHPurchase$AndroidBillingResult != null) {
            return $switch_TABLE$v2$com$playhaven$model$PHPurchase$AndroidBillingResult;
        }
        final int[] $switch_TABLE$v2$com$playhaven$model$PHPurchase$AndroidBillingResult2 = new int[v2.com.playhaven.model.PHPurchase.AndroidBillingResult.values().length];
        while (true) {
            try {
                $switch_TABLE$v2$com$playhaven$model$PHPurchase$AndroidBillingResult2[v2.com.playhaven.model.PHPurchase.AndroidBillingResult.Bought.ordinal()] = 1;
                try {
                    $switch_TABLE$v2$com$playhaven$model$PHPurchase$AndroidBillingResult2[v2.com.playhaven.model.PHPurchase.AndroidBillingResult.Cancelled.ordinal()] = 2;
                    try {
                        $switch_TABLE$v2$com$playhaven$model$PHPurchase$AndroidBillingResult2[v2.com.playhaven.model.PHPurchase.AndroidBillingResult.Failed.ordinal()] = 3;
                        return EnumConversion.$SWITCH_TABLE$v2$com$playhaven$model$PHPurchase$AndroidBillingResult = $switch_TABLE$v2$com$playhaven$model$PHPurchase$AndroidBillingResult2;
                    }
                    catch (NoSuchFieldError noSuchFieldError) {}
                }
                catch (NoSuchFieldError noSuchFieldError2) {}
            }
            catch (NoSuchFieldError noSuchFieldError3) {
                continue;
            }
            break;
        }
    }
    
    static /* synthetic */ int[] $SWITCH_TABLE$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin() {
        final int[] $switch_TABLE$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin = EnumConversion.$SWITCH_TABLE$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin;
        if ($switch_TABLE$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin != null) {
            return $switch_TABLE$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin;
        }
        final int[] $switch_TABLE$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin2 = new int[v2.com.playhaven.model.PHPurchase.PHMarketplaceOrigin.values().length];
        while (true) {
            try {
                $switch_TABLE$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin2[v2.com.playhaven.model.PHPurchase.PHMarketplaceOrigin.Amazon.ordinal()] = 2;
                try {
                    $switch_TABLE$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin2[v2.com.playhaven.model.PHPurchase.PHMarketplaceOrigin.Crossmo.ordinal()] = 4;
                    try {
                        $switch_TABLE$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin2[v2.com.playhaven.model.PHPurchase.PHMarketplaceOrigin.Google.ordinal()] = 1;
                        try {
                            $switch_TABLE$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin2[v2.com.playhaven.model.PHPurchase.PHMarketplaceOrigin.Motorola.ordinal()] = 5;
                            try {
                                $switch_TABLE$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin2[v2.com.playhaven.model.PHPurchase.PHMarketplaceOrigin.Paypal.ordinal()] = 3;
                                return EnumConversion.$SWITCH_TABLE$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin = $switch_TABLE$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin2;
                            }
                            catch (NoSuchFieldError noSuchFieldError) {}
                        }
                        catch (NoSuchFieldError noSuchFieldError2) {}
                    }
                    catch (NoSuchFieldError noSuchFieldError3) {}
                }
                catch (NoSuchFieldError noSuchFieldError4) {}
            }
            catch (NoSuchFieldError noSuchFieldError5) {
                continue;
            }
            break;
        }
    }
    
    static /* synthetic */ int[] $SWITCH_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType() {
        final int[] $switch_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType = EnumConversion.$SWITCH_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType;
        if ($switch_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType != null) {
            return $switch_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType;
        }
        final int[] $switch_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType2 = new int[PHContentRequest.PHDismissType.values().length];
        while (true) {
            try {
                $switch_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType2[PHContentRequest.PHDismissType.AdSelfDismiss.ordinal()] = 1;
                try {
                    $switch_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType2[PHContentRequest.PHDismissType.ApplicationBackgrounded.ordinal()] = 3;
                    try {
                        $switch_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType2[PHContentRequest.PHDismissType.CloseButton.ordinal()] = 2;
                        return EnumConversion.$SWITCH_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType = $switch_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType2;
                    }
                    catch (NoSuchFieldError noSuchFieldError) {}
                }
                catch (NoSuchFieldError noSuchFieldError2) {}
            }
            catch (NoSuchFieldError noSuchFieldError3) {
                continue;
            }
            break;
        }
    }
    
    public static v2.com.playhaven.model.PHPurchase.AndroidBillingResult convertToNewBillingResult(final PHPurchase.Resolution resolution) {
        if (resolution == null) {
            return null;
        }
        switch ($SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPurchase$Resolution()[resolution.ordinal()]) {
            default: {
                return null;
            }
            case 1: {
                return v2.com.playhaven.model.PHPurchase.AndroidBillingResult.Bought;
            }
            case 2: {
                return v2.com.playhaven.model.PHPurchase.AndroidBillingResult.Cancelled;
            }
            case 3: {
                return v2.com.playhaven.model.PHPurchase.AndroidBillingResult.Failed;
            }
        }
    }
    
    public static PHCloseButton.CloseButtonState convertToNewButtonState(final PHContentView.ButtonState buttonState) {
        if (buttonState == null) {
            return null;
        }
        switch ($SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHContentView$ButtonState()[buttonState.ordinal()]) {
            default: {
                return null;
            }
            case 2: {
                return PHCloseButton.CloseButtonState.Up;
            }
            case 1: {
                return PHCloseButton.CloseButtonState.Down;
            }
        }
    }
    
    public static v2.com.playhaven.model.PHPurchase.PHMarketplaceOrigin convertToNewOrigin(final PHPublisherIAPTrackingRequest.PHPurchaseOrigin phPurchaseOrigin) {
        if (phPurchaseOrigin == null) {
            return null;
        }
        switch ($SWITCH_TABLE$com$playhaven$src$publishersdk$purchases$PHPublisherIAPTrackingRequest$PHPurchaseOrigin()[phPurchaseOrigin.ordinal()]) {
            default: {
                return null;
            }
            case 1: {
                return v2.com.playhaven.model.PHPurchase.PHMarketplaceOrigin.Google;
            }
            case 2: {
                return v2.com.playhaven.model.PHPurchase.PHMarketplaceOrigin.Amazon;
            }
            case 5: {
                return v2.com.playhaven.model.PHPurchase.PHMarketplaceOrigin.Motorola;
            }
            case 3: {
                return v2.com.playhaven.model.PHPurchase.PHMarketplaceOrigin.Paypal;
            }
            case 4: {
                return v2.com.playhaven.model.PHPurchase.PHMarketplaceOrigin.Crossmo;
            }
        }
    }
    
    public static PHPurchase.Resolution convertToOldBillingResult(final v2.com.playhaven.model.PHPurchase.AndroidBillingResult androidBillingResult) {
        if (androidBillingResult == null) {
            return null;
        }
        switch ($SWITCH_TABLE$v2$com$playhaven$model$PHPurchase$AndroidBillingResult()[androidBillingResult.ordinal()]) {
            default: {
                return null;
            }
            case 1: {
                return PHPurchase.Resolution.Buy;
            }
            case 2: {
                return PHPurchase.Resolution.Cancel;
            }
            case 3: {
                return PHPurchase.Resolution.Error;
            }
        }
    }
    
    public static PHPublisherContentRequest.PHDismissType convertToOldDismiss(final PHContentRequest.PHDismissType phDismissType) {
        if (phDismissType == null) {
            return null;
        }
        switch ($SWITCH_TABLE$v2$com$playhaven$requests$content$PHContentRequest$PHDismissType()[phDismissType.ordinal()]) {
            default: {
                return null;
            }
            case 1: {
                return PHPublisherContentRequest.PHDismissType.ContentUnitTriggered;
            }
            case 2: {
                return PHPublisherContentRequest.PHDismissType.CloseButtonTriggered;
            }
            case 3: {
                return PHPublisherContentRequest.PHDismissType.ApplicationTriggered;
            }
        }
    }
    
    public static PHPublisherIAPTrackingRequest.PHPurchaseOrigin convertToOldOrigin(final v2.com.playhaven.model.PHPurchase.PHMarketplaceOrigin phMarketplaceOrigin) {
        if (phMarketplaceOrigin == null) {
            return null;
        }
        switch ($SWITCH_TABLE$v2$com$playhaven$model$PHPurchase$PHMarketplaceOrigin()[phMarketplaceOrigin.ordinal()]) {
            default: {
                return null;
            }
            case 1: {
                return PHPublisherIAPTrackingRequest.PHPurchaseOrigin.Google;
            }
            case 2: {
                return PHPublisherIAPTrackingRequest.PHPurchaseOrigin.Amazon;
            }
            case 5: {
                return PHPublisherIAPTrackingRequest.PHPurchaseOrigin.Motorola;
            }
            case 3: {
                return PHPublisherIAPTrackingRequest.PHPurchaseOrigin.Paypal;
            }
            case 4: {
                return PHPublisherIAPTrackingRequest.PHPurchaseOrigin.Crossmo;
            }
        }
    }
}
