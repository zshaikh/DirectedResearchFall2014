package com.bitrhymes.iab.util;

import org.json.*;

public class SkuDetails
{
    String mDescription;
    String mItemType;
    String mJson;
    String mPrice;
    String mSku;
    String mTitle;
    String mType;
    
    public SkuDetails(final String s) throws JSONException {
        this("inapp", s);
    }
    
    public SkuDetails(final String mItemType, final String mJson) throws JSONException {
        super();
        this.mItemType = mItemType;
        this.mJson = mJson;
        final JSONObject jsonObject = new JSONObject(this.mJson);
        this.mSku = jsonObject.optString("productId");
        this.mType = jsonObject.optString("type");
        this.mPrice = jsonObject.optString("price");
        this.mTitle = jsonObject.optString("title");
        this.mDescription = jsonObject.optString("description");
    }
    
    public String getDescription() {
        return this.mDescription;
    }
    
    public String getPrice() {
        return this.mPrice;
    }
    
    public String getSku() {
        return this.mSku;
    }
    
    public String getTitle() {
        return this.mTitle;
    }
    
    public String getType() {
        return this.mType;
    }
    
    @Override
    public String toString() {
        return "SkuDetails:" + this.mJson;
    }
}
