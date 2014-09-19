package v2.com.playhaven.model;

import java.util.*;
import android.content.*;
import android.os.*;
import v2.com.playhaven.interstitial.requestbridge.bridges.*;
import v2.com.playhaven.interstitial.requestbridge.*;

public class PHPurchase implements Parcelable
{
    public static final Parcelable$Creator<PHPurchase> CREATOR;
    public static final int DEFAULT_QUANTITY = 1;
    public static final String NO_CONTENTVIEW_INTENT = "v2.com.playhaven.null";
    public String callback;
    public String contentview_intent;
    public Currency currencyLocale;
    public PHError error;
    public PHMarketplaceOrigin marketplace;
    public String name;
    public double price;
    public String product;
    public int quantity;
    public String receipt;
    public AndroidBillingResult resolution;
    private String tag;
    
    static {
        CREATOR = (Parcelable$Creator)new Parcelable$Creator<PHPurchase>() {
            public PHPurchase createFromParcel(final Parcel parcel) {
                return new PHPurchase(parcel);
            }
            
            public PHPurchase[] newArray(final int n) {
                return new PHPurchase[n];
            }
        };
    }
    
    public PHPurchase() {
        super();
        this.quantity = 1;
        this.price = 0.0;
        this.marketplace = PHMarketplaceOrigin.Google;
    }
    
    public PHPurchase(final Parcel parcel) {
        super();
        this.quantity = 1;
        this.price = 0.0;
        this.marketplace = PHMarketplaceOrigin.Google;
        this.product = parcel.readString();
        if (this.product != null && this.product.equals("null")) {
            this.product = null;
        }
        this.name = parcel.readString();
        if (this.name != null && this.name.equals("null")) {
            this.name = null;
        }
        this.receipt = parcel.readString();
        if (this.receipt != null && this.receipt.equals("null")) {
            this.receipt = null;
        }
        this.callback = parcel.readString();
        if (this.callback != null && this.callback.equals("null")) {
            this.callback = null;
        }
        this.tag = parcel.readString();
        if (this.tag != null && this.tag.equals("null")) {
            this.tag = null;
        }
        final String string = parcel.readString();
        AndroidBillingResult value;
        if (string.equals("null")) {
            value = null;
        }
        else {
            value = AndroidBillingResult.valueOf(string);
        }
        this.resolution = value;
        if (this.resolution != null && this.resolution.equals("null")) {
            this.resolution = null;
        }
    }
    
    public PHPurchase(final String tag) {
        super();
        this.quantity = 1;
        this.price = 0.0;
        this.marketplace = PHMarketplaceOrigin.Google;
        this.tag = tag;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public String getTag() {
        return this.tag;
    }
    
    public boolean hasError() {
        return this.error != null;
    }
    
    public void reportAndroidBillingResult(final AndroidBillingResult resolution, final Context context) {
        this.resolution = resolution;
        final Bundle bundle = new Bundle();
        bundle.putParcelable(ContentRequestToInterstitialBridge.InterstitialEventArgument.Purchase.getKey(), (Parcelable)this);
        BridgeManager.sendMessageFromRequester(this.tag, ContentRequestToInterstitialBridge.InterstitialEvent.PurchaseResolved.toString(), bundle, context);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        String product;
        if (this.product == null) {
            product = "null";
        }
        else {
            product = this.product;
        }
        parcel.writeString(product);
        String name;
        if (this.name == null) {
            name = "null";
        }
        else {
            name = this.name;
        }
        parcel.writeString(name);
        String receipt;
        if (this.receipt == null) {
            receipt = "null";
        }
        else {
            receipt = this.receipt;
        }
        parcel.writeString(receipt);
        String callback;
        if (this.callback == null) {
            callback = "null";
        }
        else {
            callback = this.callback;
        }
        parcel.writeString(callback);
        String tag;
        if (this.tag == null) {
            tag = "null";
        }
        else {
            tag = this.tag;
        }
        parcel.writeString(tag);
        String string;
        if (this.resolution == null) {
            string = "null";
        }
        else {
            string = this.resolution.toString();
        }
        parcel.writeString(string);
    }
    
    public enum AndroidBillingResult
    {
        Bought("Bought", 0, "buy"), 
        Cancelled("Cancelled", 1, "cancel"), 
        Failed("Failed", 2, "error");
        
        private String type;
        
        private AndroidBillingResult(final String name, final int ordinal, final String type) {
            this.type = type;
        }
        
        public String getType() {
            return this.type;
        }
    }
    
    public enum PHMarketplaceOrigin
    {
        Amazon("Amazon", 1, "AmazonAppstore"), 
        Crossmo("Crossmo", 3, "Crossmo"), 
        Google("Google", 0, "GoogleMarketplace"), 
        Motorola("Motorola", 4, "MotorolaAppstore"), 
        Paypal("Paypal", 2, "Paypal");
        
        private String originStr;
        
        private PHMarketplaceOrigin(final String name, final int ordinal, final String originStr) {
            this.originStr = originStr;
        }
        
        public String getOrigin() {
            return this.originStr;
        }
    }
}
