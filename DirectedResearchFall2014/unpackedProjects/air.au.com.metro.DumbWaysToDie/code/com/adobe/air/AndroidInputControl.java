package com.adobe.air;

class AndroidInputControl
{
    private int mCode;
    private long mInternalReference;
    private float mMaxValue;
    private float mMinValue;
    private ControlType mType;
    private float mValue;
    
    public AndroidInputControl(final ControlType mType, final int mCode, final float mMinValue, final float mMaxValue) {
        super();
        this.mCode = 0;
        this.mValue = 0.0f;
        this.mMinValue = 0.0f;
        this.mMaxValue = 0.0f;
        this.mType = mType;
        this.mCode = mCode;
        this.mMinValue = mMinValue;
        this.mMaxValue = mMaxValue;
    }
    
    private native void OnValueChange(final long p0, final float p1);
    
    public int getCode() {
        return this.mCode;
    }
    
    public String getId() {
        return this.mType.name() + "_" + this.mCode;
    }
    
    public float getMaxValue() {
        return this.mMaxValue;
    }
    
    public float getMinValue() {
        return this.mMinValue;
    }
    
    public int getType() {
        return this.mType.ordinal();
    }
    
    public float getValue() {
        return this.mValue;
    }
    
    public void setData(final float mValue) {
        if (this.mValue != mValue) {
            this.mValue = mValue;
            this.OnValueChange(this.mInternalReference, this.mValue);
        }
    }
    
    public void setInternalReference(final long mInternalReference) {
        this.mInternalReference = mInternalReference;
    }
}
