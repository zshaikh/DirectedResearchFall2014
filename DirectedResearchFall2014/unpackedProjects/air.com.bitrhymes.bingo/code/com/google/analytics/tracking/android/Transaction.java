package com.google.analytics.tracking.android;

import java.util.*;
import android.text.*;

public final class Transaction
{
    private final String mAffiliation;
    private final String mCurrencyCode;
    private final Map<String, Item> mItems;
    private final long mShippingCostInMicros;
    private final long mTotalCostInMicros;
    private final long mTotalTaxInMicros;
    private final String mTransactionId;
    
    private Transaction(final Builder builder) {
        super();
        this.mTransactionId = builder.mTransactionId;
        this.mTotalCostInMicros = builder.mTotalCostInMicros;
        this.mAffiliation = builder.mAffiliation;
        this.mTotalTaxInMicros = builder.mTotalTaxInMicros;
        this.mShippingCostInMicros = builder.mShippingCostInMicros;
        this.mCurrencyCode = builder.mCurrencyCode;
        this.mItems = new HashMap<String, Item>();
    }
    
    public void addItem(final Item item) {
        this.mItems.put(item.getSKU(), item);
    }
    
    public String getAffiliation() {
        return this.mAffiliation;
    }
    
    public String getCurrencyCode() {
        return this.mCurrencyCode;
    }
    
    public List<Item> getItems() {
        return new ArrayList<Item>(this.mItems.values());
    }
    
    public long getShippingCostInMicros() {
        return this.mShippingCostInMicros;
    }
    
    public long getTotalCostInMicros() {
        return this.mTotalCostInMicros;
    }
    
    public long getTotalTaxInMicros() {
        return this.mTotalTaxInMicros;
    }
    
    public String getTransactionId() {
        return this.mTransactionId;
    }
    
    public static final class Builder
    {
        private String mAffiliation;
        private String mCurrencyCode;
        private long mShippingCostInMicros;
        private final long mTotalCostInMicros;
        private long mTotalTaxInMicros;
        private final String mTransactionId;
        
        public Builder(final String mTransactionId, final long mTotalCostInMicros) {
            super();
            this.mAffiliation = null;
            this.mTotalTaxInMicros = 0L;
            this.mShippingCostInMicros = 0L;
            this.mCurrencyCode = null;
            if (TextUtils.isEmpty((CharSequence)mTransactionId)) {
                throw new IllegalArgumentException("orderId must not be empty or null");
            }
            this.mTransactionId = mTransactionId;
            this.mTotalCostInMicros = mTotalCostInMicros;
        }
        
        public Transaction build() {
            return new Transaction(this, null);
        }
        
        public Builder setAffiliation(final String mAffiliation) {
            this.mAffiliation = mAffiliation;
            return this;
        }
        
        public Builder setCurrencyCode(final String mCurrencyCode) {
            this.mCurrencyCode = mCurrencyCode;
            return this;
        }
        
        public Builder setShippingCostInMicros(final long mShippingCostInMicros) {
            this.mShippingCostInMicros = mShippingCostInMicros;
            return this;
        }
        
        public Builder setTotalTaxInMicros(final long mTotalTaxInMicros) {
            this.mTotalTaxInMicros = mTotalTaxInMicros;
            return this;
        }
    }
    
    public static final class Item
    {
        private final String mCategory;
        private final String mName;
        private final long mPriceInMicros;
        private final long mQuantity;
        private final String mSKU;
        
        private Item(final Builder builder) {
            super();
            this.mSKU = builder.mSKU;
            this.mPriceInMicros = builder.mPriceInMicros;
            this.mQuantity = builder.mQuantity;
            this.mName = builder.mName;
            this.mCategory = builder.mCategory;
        }
        
        public String getCategory() {
            return this.mCategory;
        }
        
        public String getName() {
            return this.mName;
        }
        
        public long getPriceInMicros() {
            return this.mPriceInMicros;
        }
        
        public long getQuantity() {
            return this.mQuantity;
        }
        
        public String getSKU() {
            return this.mSKU;
        }
        
        public static final class Builder
        {
            private String mCategory;
            private final String mName;
            private final long mPriceInMicros;
            private final long mQuantity;
            private final String mSKU;
            
            public Builder(final String msku, final String mName, final long mPriceInMicros, final long mQuantity) {
                super();
                this.mCategory = null;
                if (TextUtils.isEmpty((CharSequence)msku)) {
                    throw new IllegalArgumentException("SKU must not be empty or null");
                }
                if (TextUtils.isEmpty((CharSequence)mName)) {
                    throw new IllegalArgumentException("name must not be empty or null");
                }
                this.mSKU = msku;
                this.mName = mName;
                this.mPriceInMicros = mPriceInMicros;
                this.mQuantity = mQuantity;
            }
            
            public Item build() {
                return new Item(this);
            }
            
            public Builder setProductCategory(final String mCategory) {
                this.mCategory = mCategory;
                return this;
            }
        }
    }
}
