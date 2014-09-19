package com.adobe.air;

public class TouchEventData
{
    public float mContactX;
    public float mContactY;
    public float[] mHistory;
    public boolean mIsPrimaryPoint;
    public int mMetaState;
    public int mPointerID;
    public float mPressure;
    public int mTouchEventType;
    public float mXCoord;
    public float mYCoord;
    
    public TouchEventData(final int mTouchEventType, final float mxCoord, final float myCoord, final float mPressure, final int mPointerID, final float mContactX, final float mContactY, final boolean mIsPrimaryPoint, final float[] mHistory, final int mMetaState) {
        super();
        this.mTouchEventType = mTouchEventType;
        this.mXCoord = mxCoord;
        this.mYCoord = myCoord;
        this.mPressure = mPressure;
        this.mPointerID = mPointerID;
        this.mContactX = mContactX;
        this.mContactY = mContactY;
        this.mIsPrimaryPoint = mIsPrimaryPoint;
        this.mHistory = mHistory;
        this.mMetaState = mMetaState;
    }
}
