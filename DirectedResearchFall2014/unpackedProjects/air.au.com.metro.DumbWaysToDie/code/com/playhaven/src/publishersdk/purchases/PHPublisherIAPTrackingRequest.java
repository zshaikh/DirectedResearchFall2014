package com.playhaven.src.publishersdk.purchases;

import v2.com.playhaven.requests.purchases.*;
import java.lang.ref.*;
import android.content.*;
import java.util.*;
import v2.com.playhaven.model.*;
import com.playhaven.src.publishersdk.content.*;
import v2.com.playhaven.listeners.*;
import com.playhaven.src.utils.*;
import v2.com.playhaven.configuration.*;
import com.playhaven.src.common.*;

public class PHPublisherIAPTrackingRequest extends PHIAPTrackingRequest implements PHAPIRequest
{
    private static Hashtable<String, String> cookies;
    private WeakReference<Context> context;
    public Currency currencyLocale;
    public PHError error;
    public double price;
    public String product;
    public int quantity;
    public PHPurchase.Resolution resolution;
    public PHPurchaseOrigin store;
    
    static {
        PHPublisherIAPTrackingRequest.cookies = new Hashtable<String, String>();
    }
    
    public PHPublisherIAPTrackingRequest(final Context referent) {
        super();
        this.quantity = 0;
        this.store = PHPurchaseOrigin.Google;
        this.product = "";
        this.price = 0.0;
        this.resolution = PHPurchase.Resolution.Cancel;
        this.context = new WeakReference<Context>(referent);
    }
    
    public PHPublisherIAPTrackingRequest(final Context context, final Delegate delegate) {
        super(new TrackingDelegateAdapter(delegate));
        this.quantity = 0;
        this.store = PHPurchaseOrigin.Google;
        this.product = "";
        this.price = 0.0;
        this.resolution = PHPurchase.Resolution.Cancel;
    }
    
    public PHPublisherIAPTrackingRequest(final Context context, final PHPurchase phPurchase) {
        this(context, phPurchase.product, phPurchase.quantity, phPurchase.resolution);
    }
    
    public PHPublisherIAPTrackingRequest(final Context context, final String s, final int n, final PHPurchase.Resolution resolution) {
        this(context);
        final v2.com.playhaven.model.PHPurchase purchase = new v2.com.playhaven.model.PHPurchase();
        purchase.product = s;
        purchase.resolution = EnumConversion.convertToNewBillingResult(resolution);
        purchase.quantity = n;
        this.resolution = resolution;
        this.product = s;
        this.quantity = n;
        super.setPurchase(purchase);
    }
    
    public PHPublisherIAPTrackingRequest(final Context context, final PHError error) {
        this(context);
        final v2.com.playhaven.model.PHPurchase purchase = new v2.com.playhaven.model.PHPurchase();
        purchase.error = error;
        super.setPurchase(purchase);
    }
    
    @Override
    public Hashtable<String, String> getAdditionalParams(final Context context) {
        final v2.com.playhaven.model.PHPurchase purchase = new v2.com.playhaven.model.PHPurchase();
        purchase.error = this.error;
        purchase.product = this.product;
        purchase.price = this.price;
        purchase.currencyLocale = this.currencyLocale;
        purchase.resolution = EnumConversion.convertToNewBillingResult(this.resolution);
        super.setPurchase(purchase);
        return super.getAdditionalParams(context);
    }
    
    @Override
    public void send() {
        new PHConfiguration().setCredentials(this.context.get(), PHConfig.token, PHConfig.secret);
        super.send(this.context.get());
    }
    
    @Override
    public void setDelegate(final Delegate delegate) {
        super.setIAPListener(new TrackingDelegateAdapter(delegate));
    }
    
    public enum PHPurchaseOrigin
    {
        Amazon("Amazon", 1, "AmazonAppstore"), 
        Crossmo("Crossmo", 3, "Crossmo"), 
        Google("Google", 0, "GoogleMarketplace"), 
        Motorola("Motorola", 4, "MotorolaAppstore"), 
        Paypal("Paypal", 2, "Paypal");
        
        private String originStr;
        
        private PHPurchaseOrigin(final String name, final int ordinal, final String originStr) {
            this.originStr = originStr;
        }
        
        public String getOrigin() {
            return this.originStr;
        }
    }
}
