package com.playhaven.src.publishersdk.content;

import v2.com.playhaven.model.*;
import com.playhaven.src.utils.*;
import android.app.*;
import android.content.*;

public class PHPurchase extends v2.com.playhaven.model.PHPurchase
{
    public int quantity;
    public Resolution resolution;
    
    public PHPurchase(final String s) {
        super(s);
    }
    
    public PHPurchase(final v2.com.playhaven.model.PHPurchase phPurchase) {
        super(phPurchase.getTag());
        this.quantity = 0;
        super.resolution = phPurchase.resolution;
        this.resolution = EnumConversion.convertToOldBillingResult(phPurchase.resolution);
        this.price = phPurchase.price;
        this.callback = phPurchase.callback;
        this.currencyLocale = phPurchase.currencyLocale;
        this.receipt = phPurchase.receipt;
        this.name = phPurchase.name;
        this.product = phPurchase.product;
        this.marketplace = phPurchase.marketplace;
        this.error = phPurchase.error;
    }
    
    public void reportResolution(final Resolution resolution, final Activity activity) {
        this.resolution = resolution;
        super.reportAndroidBillingResult(EnumConversion.convertToNewBillingResult(resolution), (Context)activity);
    }
    
    public enum Resolution
    {
        Buy("buy"), 
        Cancel("cancel"), 
        Error("error");
        
        private String type;
        
        private Resolution(final String type) {
            this.type = type;
        }
        
        public String getType() {
            return this.type;
        }
    }
}
