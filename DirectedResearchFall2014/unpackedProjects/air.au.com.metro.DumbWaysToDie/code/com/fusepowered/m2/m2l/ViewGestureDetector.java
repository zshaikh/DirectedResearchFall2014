package com.fusepowered.m2.m2l;

import android.content.*;
import android.view.*;
import android.util.*;

public class ViewGestureDetector extends GestureDetector
{
    private AdAlertGestureListener mAdAlertGestureListener;
    private UserClickListener mUserClickListener;
    private final View mView;
    
    private ViewGestureDetector(final Context context, final View mView, final AdAlertGestureListener mAdAlertGestureListener) {
        super(context, (GestureDetector$OnGestureListener)mAdAlertGestureListener);
        this.mAdAlertGestureListener = mAdAlertGestureListener;
        this.mView = mView;
        this.setIsLongpressEnabled(false);
    }
    
    public ViewGestureDetector(final Context context, final View view, final AdConfiguration adConfiguration) {
        this(context, view, new AdAlertGestureListener(view, adConfiguration));
    }
    
    private boolean isMotionEventInView(final MotionEvent motionEvent, final View view) {
        if (motionEvent == null || view == null) {
            return false;
        }
        final float x = motionEvent.getX();
        final float y = motionEvent.getY();
        return x >= 0.0f && x <= view.getWidth() && y >= 0.0f && y <= view.getHeight();
    }
    
    void resetAdFlaggingGesture() {
        this.mAdAlertGestureListener.reset();
    }
    
    void sendTouchEvent(final MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            default: {}
            case 1: {
                if (this.mUserClickListener != null) {
                    this.mUserClickListener.onUserClick();
                }
                else {
                    Log.d("MoPub", "View's onUserClick() is not registered.");
                }
                this.mAdAlertGestureListener.finishGestureDetection();
            }
            case 0: {
                this.onTouchEvent(motionEvent);
            }
            case 2: {
                if (this.isMotionEventInView(motionEvent, this.mView)) {
                    this.onTouchEvent(motionEvent);
                    return;
                }
                this.resetAdFlaggingGesture();
            }
        }
    }
    
    @Deprecated
    void setAdAlertGestureListener(final AdAlertGestureListener mAdAlertGestureListener) {
        this.mAdAlertGestureListener = mAdAlertGestureListener;
    }
    
    void setUserClickListener(final UserClickListener mUserClickListener) {
        this.mUserClickListener = mUserClickListener;
    }
    
    interface UserClickListener
    {
        void onResetUserClick();
        
        void onUserClick();
        
        boolean wasClicked();
    }
}
