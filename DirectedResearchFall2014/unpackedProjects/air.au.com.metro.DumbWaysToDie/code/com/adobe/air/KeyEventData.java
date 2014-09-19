package com.adobe.air;

public class KeyEventData
{
    boolean mAlt;
    int mKeyAction;
    int mKeyCode;
    boolean mShift;
    boolean mSym;
    int mUnicode;
    
    public KeyEventData(final int mKeyAction, final int mKeyCode, final int mUnicode, final boolean mAlt, final boolean mShift, final boolean mSym) {
        super();
        this.mKeyAction = mKeyAction;
        this.mKeyCode = mKeyCode;
        this.mUnicode = mUnicode;
        this.mAlt = mAlt;
        this.mShift = mShift;
        this.mSym = mSym;
    }
}
