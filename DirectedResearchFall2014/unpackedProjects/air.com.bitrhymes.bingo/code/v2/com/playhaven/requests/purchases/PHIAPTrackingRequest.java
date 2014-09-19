package v2.com.playhaven.requests.purchases;

import v2.com.playhaven.requests.base.*;
import v2.com.playhaven.listeners.*;
import org.json.*;
import android.content.*;
import java.util.*;
import v2.com.playhaven.model.*;

public class PHIAPTrackingRequest extends PHAPIRequest
{
    private static Hashtable<String, String> cookies;
    private PHIAPRequestListener listener;
    private PHPurchase purchase;
    
    static {
        PHIAPTrackingRequest.cookies = new Hashtable<String, String>();
    }
    
    public PHIAPTrackingRequest() {
        super();
    }
    
    public PHIAPTrackingRequest(final PHIAPRequestListener iapListener) {
        super();
        this.setIAPListener(iapListener);
    }
    
    public PHIAPTrackingRequest(final PHIAPRequestListener iapListener, final PHPurchase purchase) {
        super();
        this.purchase = purchase;
        this.setIAPListener(iapListener);
    }
    
    public PHIAPTrackingRequest(final PHPurchase purchase) {
        super();
        this.purchase = purchase;
    }
    
    public static String getAndExpireCookie(final String s) {
        synchronized (PHIAPTrackingRequest.cookies) {
            final String s2 = PHIAPTrackingRequest.cookies.get(s);
            PHIAPTrackingRequest.cookies.remove(s);
            return s2;
        }
    }
    
    public static void setConversionCookie(final String key, final String s) {
        synchronized (PHIAPTrackingRequest.cookies) {
            if (JSONObject.NULL.equals(s) || s.length() == 0) {
                return;
            }
            PHIAPTrackingRequest.cookies.put(key, s);
        }
    }
    
    @Override
    public String baseURL(final Context context) {
        return super.createAPIURL(context, "/v3/publisher/iap/");
    }
    
    @Override
    public Hashtable<String, String> getAdditionalParams(final Context context) {
        if (this.purchase == null) {
            return new Hashtable<String, String>();
        }
        this.purchase.currencyLocale = Currency.getInstance(Locale.getDefault());
        final Hashtable<String, String> hashtable = new Hashtable<String, String>();
        String product;
        if (this.purchase.product != null) {
            product = this.purchase.product;
        }
        else {
            product = "";
        }
        hashtable.put("product", product);
        String type;
        if (this.purchase.resolution != null) {
            type = this.purchase.resolution.getType();
        }
        else {
            type = "";
        }
        hashtable.put("resolution", type);
        hashtable.put("price", Double.toString(this.purchase.price));
        hashtable.put("quantity", String.valueOf(1));
        if (this.purchase.hasError() && this.purchase.error.getErrorCode() != 0) {
            hashtable.put("error", Integer.toString(this.purchase.error.getErrorCode()));
        }
        String currencyCode;
        if (this.purchase.currencyLocale != null) {
            currencyCode = this.purchase.currencyLocale.getCurrencyCode();
        }
        else {
            currencyCode = "";
        }
        hashtable.put("price_locale", currencyCode);
        String origin;
        if (this.purchase.marketplace != null) {
            origin = this.purchase.marketplace.getOrigin();
        }
        else {
            origin = null;
        }
        hashtable.put("store", origin);
        String product2;
        if (this.purchase.product != null) {
            product2 = this.purchase.product;
        }
        else {
            product2 = null;
        }
        final String andExpireCookie = getAndExpireCookie(product2);
        String value;
        if (andExpireCookie != null) {
            value = andExpireCookie;
        }
        else {
            value = "";
        }
        hashtable.put("cookie", value);
        return hashtable;
    }
    
    public PHIAPRequestListener getIAPListener() {
        return this.listener;
    }
    
    @Override
    public void handleRequestFailure(final PHError phError) {
        if (this.listener != null) {
            this.listener.onIAPRequestFailed(this, phError);
        }
    }
    
    @Override
    public void handleRequestSuccess(final JSONObject jsonObject) {
        if (this.listener != null) {
            this.listener.onIAPRequestSucceeded(this);
        }
    }
    
    public void setIAPListener(final PHIAPRequestListener listener) {
        this.listener = listener;
    }
    
    public void setPurchase(final PHPurchase purchase) {
        this.purchase = purchase;
    }
}
