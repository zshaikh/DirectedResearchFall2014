package com.fusepowered.m2.m2l;

import android.view.*;

public class AdAlertGestureListener extends GestureDetector$SimpleOnGestureListener
{
    private static final float MAXIMUM_THRESHOLD_X_IN_DIPS = 100.0f;
    private static final float MAXIMUM_THRESHOLD_Y_IN_DIPS = 50.0f;
    private static final int MINIMUM_NUMBER_OF_ZIGZAGS_TO_FLAG = 4;
    private AdAlertReporter mAdAlertReporter;
    private AdConfiguration mAdConfiguration;
    private float mCurrentThresholdInDips;
    private ZigZagState mCurrentZigZagState;
    private boolean mHasCrossedLeftThreshold;
    private boolean mHasCrossedRightThreshold;
    private int mNumberOfZigZags;
    private float mPivotPositionX;
    private float mPreviousPositionX;
    private View mView;
    
    static /* synthetic */ int[] $SWITCH_TABLE$com$mopub$mobileads$AdAlertGestureListener$ZigZagState() {
        final int[] $switch_TABLE$com$mopub$mobileads$AdAlertGestureListener$ZigZagState = AdAlertGestureListener.$SWITCH_TABLE$com$mopub$mobileads$AdAlertGestureListener$ZigZagState;
        if ($switch_TABLE$com$mopub$mobileads$AdAlertGestureListener$ZigZagState != null) {
            return $switch_TABLE$com$mopub$mobileads$AdAlertGestureListener$ZigZagState;
        }
        final int[] $switch_TABLE$com$mopub$mobileads$AdAlertGestureListener$ZigZagState2 = new int[ZigZagState.values().length];
        while (true) {
            try {
                $switch_TABLE$com$mopub$mobileads$AdAlertGestureListener$ZigZagState2[ZigZagState.FAILED.ordinal()] = 5;
                try {
                    $switch_TABLE$com$mopub$mobileads$AdAlertGestureListener$ZigZagState2[ZigZagState.FINISHED.ordinal()] = 4;
                    try {
                        $switch_TABLE$com$mopub$mobileads$AdAlertGestureListener$ZigZagState2[ZigZagState.GOING_LEFT.ordinal()] = 3;
                        try {
                            $switch_TABLE$com$mopub$mobileads$AdAlertGestureListener$ZigZagState2[ZigZagState.GOING_RIGHT.ordinal()] = 2;
                            try {
                                $switch_TABLE$com$mopub$mobileads$AdAlertGestureListener$ZigZagState2[ZigZagState.UNSET.ordinal()] = 1;
                                return AdAlertGestureListener.$SWITCH_TABLE$com$mopub$mobileads$AdAlertGestureListener$ZigZagState = $switch_TABLE$com$mopub$mobileads$AdAlertGestureListener$ZigZagState2;
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
    
    AdAlertGestureListener(final View mView, final AdConfiguration mAdConfiguration) {
        super();
        this.mCurrentThresholdInDips = 100.0f;
        this.mCurrentZigZagState = ZigZagState.UNSET;
        if (mView != null && mView.getWidth() > 0) {
            this.mCurrentThresholdInDips = Math.min(100.0f, mView.getWidth() / 3.0f);
        }
        this.mView = mView;
        this.mAdConfiguration = mAdConfiguration;
    }
    
    private void incrementNumberOfZigZags() {
        ++this.mNumberOfZigZags;
        if (this.mNumberOfZigZags >= 4) {
            this.mCurrentZigZagState = ZigZagState.FINISHED;
        }
    }
    
    private boolean isMovingLeft(final float n) {
        return n < this.mPreviousPositionX;
    }
    
    private boolean isMovingRight(final float n) {
        return n > this.mPreviousPositionX;
    }
    
    private boolean isTouchOutOfBoundsOnYAxis(final float n, final float n2) {
        return Math.abs(n2 - n) > 50.0f;
    }
    
    private boolean leftThresholdReached(final float n) {
        if (this.mHasCrossedLeftThreshold) {
            return true;
        }
        if (n <= this.mPivotPositionX - this.mCurrentThresholdInDips) {
            this.mHasCrossedRightThreshold = false;
            this.mHasCrossedLeftThreshold = true;
            this.incrementNumberOfZigZags();
            return true;
        }
        return false;
    }
    
    private boolean rightThresholdReached(final float n) {
        if (this.mHasCrossedRightThreshold) {
            return true;
        }
        if (n >= this.mPivotPositionX + this.mCurrentThresholdInDips) {
            this.mHasCrossedLeftThreshold = false;
            return this.mHasCrossedRightThreshold = true;
        }
        return false;
    }
    
    private void updateInitialState(final float n) {
        if (n > this.mPivotPositionX) {
            this.mCurrentZigZagState = ZigZagState.GOING_RIGHT;
        }
    }
    
    private void updateZag(final float mPivotPositionX) {
        if (this.leftThresholdReached(mPivotPositionX) && this.isMovingRight(mPivotPositionX)) {
            this.mCurrentZigZagState = ZigZagState.GOING_RIGHT;
            this.mPivotPositionX = mPivotPositionX;
        }
    }
    
    private void updateZig(final float mPivotPositionX) {
        if (this.rightThresholdReached(mPivotPositionX) && this.isMovingLeft(mPivotPositionX)) {
            this.mCurrentZigZagState = ZigZagState.GOING_LEFT;
            this.mPivotPositionX = mPivotPositionX;
        }
    }
    
    void finishGestureDetection() {
        if (this.mCurrentZigZagState == ZigZagState.FINISHED) {
            (this.mAdAlertReporter = new AdAlertReporter(this.mView.getContext(), this.mView, this.mAdConfiguration)).send();
        }
        this.reset();
    }
    
    @Deprecated
    AdAlertReporter getAdAlertReporter() {
        return this.mAdAlertReporter;
    }
    
    @Deprecated
    ZigZagState getCurrentZigZagState() {
        return this.mCurrentZigZagState;
    }
    
    @Deprecated
    float getMinimumDipsInZigZag() {
        return this.mCurrentThresholdInDips;
    }
    
    @Deprecated
    int getNumberOfZigzags() {
        return this.mNumberOfZigZags;
    }
    
    public boolean onScroll(final MotionEvent motionEvent, final MotionEvent motionEvent2, final float n, final float n2) {
        if (this.mCurrentZigZagState == ZigZagState.FINISHED) {
            return super.onScroll(motionEvent, motionEvent2, n, n2);
        }
        if (this.isTouchOutOfBoundsOnYAxis(motionEvent.getY(), motionEvent2.getY())) {
            this.mCurrentZigZagState = ZigZagState.FAILED;
            return super.onScroll(motionEvent, motionEvent2, n, n2);
        }
        switch ($SWITCH_TABLE$com$mopub$mobileads$AdAlertGestureListener$ZigZagState()[this.mCurrentZigZagState.ordinal()]) {
            case 1: {
                this.mPivotPositionX = motionEvent.getX();
                this.updateInitialState(motionEvent2.getX());
                break;
            }
            case 2: {
                this.updateZig(motionEvent2.getX());
                break;
            }
            case 3: {
                this.updateZag(motionEvent2.getX());
                break;
            }
        }
        this.mPreviousPositionX = motionEvent2.getX();
        return super.onScroll(motionEvent, motionEvent2, n, n2);
    }
    
    void reset() {
        this.mNumberOfZigZags = 0;
        this.mCurrentZigZagState = ZigZagState.UNSET;
    }
    
    enum ZigZagState
    {
        FAILED("FAILED", 4), 
        FINISHED("FINISHED", 3), 
        GOING_LEFT("GOING_LEFT", 2), 
        GOING_RIGHT("GOING_RIGHT", 1), 
        UNSET("UNSET", 0);
    }
}
