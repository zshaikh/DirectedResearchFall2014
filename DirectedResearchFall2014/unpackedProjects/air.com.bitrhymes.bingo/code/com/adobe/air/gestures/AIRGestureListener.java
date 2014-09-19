package com.adobe.air.gestures;

import android.content.*;
import com.adobe.air.*;
import android.view.*;
import android.os.*;

public class AIRGestureListener implements GestureDetector$OnGestureListener, GestureDetector$OnDoubleTapListener, ScaleGestureDetector$OnScaleGestureListener
{
    private static final String LOG_TAG = "AIRGestureListener";
    private static final int MAX_TOUCH_POINTS = 2;
    private static final float MM_PER_INCH = 25.4f;
    private static final float _FP_GESTURE_PAN_THRESHOLD_MM = 3.0f;
    private static final float _FP_GESTURE_ROTATION_THRESHOLD_DEGREES = 15.0f;
    private static final float _FP_GESTURE_SWIPE_PRIMARY_AXIS_MIN_MM = 10.0f;
    private static final float _FP_GESTURE_SWIPE_SECONDARY_AXIS_MAX_MM = 5.0f;
    private static final float _FP_GESTURE_ZOOM_PER_AXIS_THRESHOLD_MM = 3.0f;
    private static final float _FP_GESTURE_ZOOM_THRESHOLD_MM = 8.0f;
    private static final int kGestureAll = 8;
    private static final int kGestureBegin = 2;
    private static final int kGestureEnd = 4;
    private static final int kGesturePan = 1;
    private static final int kGestureRotate = 2;
    private static final int kGestureSwipe = 5;
    private static final int kGestureTwoFingerTap = 3;
    private static final int kGestureUpdate = 1;
    private static final int kGestureZoom;
    private static int screenPPI;
    private boolean mCheckForSwipe;
    private int mCouldBeTwoFingerTap;
    private TouchPoint[] mDownTouchPoints;
    private boolean mInPanTransformGesture;
    private boolean mInRotateTransformGesture;
    private boolean mInZoomTransformGesture;
    private boolean mInZoomTransformGestureX;
    private boolean mInZoomTransformGestureY;
    private float mPreviousAbsoluteRotation;
    private float mPreviousPanLocX;
    private float mPreviousPanLocY;
    private float mPreviousRotateLocX;
    private float mPreviousRotateLocY;
    private float mPreviousZoomLocX;
    private float mPreviousZoomLocY;
    private TouchPoint mSecondaryPointOfTwoFingerTap;
    private AIRWindowSurfaceView mSurfaceView;
    
    static {
        AIRGestureListener.screenPPI = 0;
    }
    
    public AIRGestureListener(final Context context, final AIRWindowSurfaceView mSurfaceView) {
        super();
        this.mPreviousAbsoluteRotation = 0.0f;
        this.mInRotateTransformGesture = false;
        this.mInZoomTransformGesture = false;
        this.mInZoomTransformGestureX = false;
        this.mInZoomTransformGestureY = false;
        this.mInPanTransformGesture = false;
        this.mPreviousRotateLocX = 0.0f;
        this.mPreviousRotateLocY = 0.0f;
        this.mPreviousZoomLocX = 0.0f;
        this.mPreviousZoomLocY = 0.0f;
        this.mPreviousPanLocX = 0.0f;
        this.mPreviousPanLocY = 0.0f;
        this.mCouldBeTwoFingerTap = 0;
        this.mCheckForSwipe = true;
        this.mSurfaceView = mSurfaceView;
        this.mDownTouchPoints = new TouchPoint[2];
        for (int i = 0; i < 2; ++i) {
            this.mDownTouchPoints[i] = new TouchPoint();
        }
        this.mSecondaryPointOfTwoFingerTap = new TouchPoint();
        AIRGestureListener.screenPPI = SystemCapabilities.GetScreenDPI(context);
    }
    
    private double distanceBetweenPoints(final TouchPoint touchPoint, final TouchPoint touchPoint2) {
        return Math.sqrt(Math.pow(touchPoint2.x - touchPoint.x, 2.0) + Math.pow(touchPoint2.y - touchPoint.y, 2.0));
    }
    
    private void endPanGesture() {
        final int multitouchMode = this.mSurfaceView.getMultitouchMode();
        this.mSurfaceView.getClass();
        if (multitouchMode == 2 && this.mInPanTransformGesture) {
            this.nativeOnGestureListener(4, 1, true, this.mPreviousPanLocX, this.mPreviousPanLocY, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f);
            this.mInPanTransformGesture = false;
        }
    }
    
    private void endRotateGesture() {
        final int multitouchMode = this.mSurfaceView.getMultitouchMode();
        this.mSurfaceView.getClass();
        if (multitouchMode == 2 && this.mInRotateTransformGesture) {
            this.nativeOnGestureListener(4, 2, true, this.mPreviousRotateLocX, this.mPreviousRotateLocY, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f);
            this.mInRotateTransformGesture = false;
        }
    }
    
    private void endZoomGesture() {
        final int multitouchMode = this.mSurfaceView.getMultitouchMode();
        this.mSurfaceView.getClass();
        if (multitouchMode == 2 && this.mInZoomTransformGesture) {
            this.nativeOnGestureListener(4, 0, true, this.mPreviousZoomLocX, this.mPreviousZoomLocY, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f);
            this.mInZoomTransformGesture = false;
            this.mInZoomTransformGestureX = false;
            this.mInZoomTransformGestureY = false;
        }
    }
    
    private float getRotation(final TouchPoint touchPoint, final TouchPoint touchPoint2, final TouchPoint touchPoint3, final TouchPoint touchPoint4) {
        final int access$100 = touchPoint.pid;
        final int access$2 = touchPoint3.pid;
        float n = 0.0f;
        if (access$100 == access$2) {
            final int access$3 = touchPoint2.pid;
            final int access$4 = touchPoint4.pid;
            n = 0.0f;
            if (access$3 == access$4) {
                n = (float)(180.0 * Math.atan2(touchPoint4.y - touchPoint3.y, touchPoint4.x - touchPoint3.x) / 3.141592653589793 - 180.0 * Math.atan2(touchPoint2.y - touchPoint.y, touchPoint2.x - touchPoint.x) / 3.141592653589793);
            }
        }
        return n;
    }
    
    private boolean isPanGesture(final TouchPoint touchPoint, final TouchPoint touchPoint2, final TouchPoint touchPoint3, final TouchPoint touchPoint4) {
        final float a = touchPoint3.x - touchPoint.x;
        final float a2 = touchPoint3.y - touchPoint.y;
        final float a3 = touchPoint4.x - touchPoint2.x;
        final float a4 = touchPoint4.y - touchPoint2.y;
        final float min = Math.min(Math.abs(a), Math.abs(a3));
        final float min2 = Math.min(Math.abs(a2), Math.abs(a4));
        final double sqrt = Math.sqrt(min * min + min2 * min2);
        return ((a >= 0.0f && a3 >= 0.0f) || (a <= 0.0f && a3 <= 0.0f)) && ((a2 >= 0.0f && a4 >= 0.0f) || (a2 <= 0.0f && a4 <= 0.0f)) && (this.mInPanTransformGesture || sqrt > 3.0f * AIRGestureListener.screenPPI / 25.4f);
    }
    
    private native boolean nativeOnGestureListener(final int p0, final int p1, final boolean p2, final float p3, final float p4, final float p5, final float p6, final float p7, final float p8, final float p9);
    
    public boolean endTwoFingerGesture() {
        final int multitouchMode = this.mSurfaceView.getMultitouchMode();
        this.mSurfaceView.getClass();
        if (multitouchMode != 2) {
            return true;
        }
        this.endRotateGesture();
        this.endPanGesture();
        return true;
    }
    
    public boolean getCheckForSwipe() {
        return this.mCheckForSwipe;
    }
    
    public int getCouldBeTwoFingerTap() {
        return this.mCouldBeTwoFingerTap;
    }
    
    public TouchPoint getDownTouchPoint(final int n) {
        if (n >= 0 && n < 2) {
            return this.mDownTouchPoints[n];
        }
        return null;
    }
    
    public void mayStartNewTransformGesture() {
        this.mInRotateTransformGesture = false;
        this.mInZoomTransformGesture = false;
        this.mInZoomTransformGestureX = false;
        this.mInZoomTransformGestureY = false;
        this.mInPanTransformGesture = false;
    }
    
    public boolean onDoubleTap(final MotionEvent motionEvent) {
        return motionEvent.getPointerCount() != 1 || (1 != 0 && this.mSurfaceView.nativeOnDoubleClickListener(motionEvent.getX(0), motionEvent.getY(0)));
    }
    
    public boolean onDoubleTapEvent(final MotionEvent motionEvent) {
        return true;
    }
    
    public boolean onDown(final MotionEvent motionEvent) {
        return true;
    }
    
    public boolean onFling(final MotionEvent motionEvent, final MotionEvent motionEvent2, final float n, final float n2) {
        return true;
    }
    
    public void onLongPress(final MotionEvent motionEvent) {
    }
    
    public boolean onScale(final ScaleGestureDetector scaleGestureDetector) {
        final int multitouchMode = this.mSurfaceView.getMultitouchMode();
        this.mSurfaceView.getClass();
        if (multitouchMode != 2) {
            return true;
        }
        final float focusX = scaleGestureDetector.getFocusX();
        final float focusY = scaleGestureDetector.getFocusY();
        final double n = scaleGestureDetector.getPreviousSpan();
        final double abs = Math.abs(scaleGestureDetector.getCurrentSpan() - n);
        double n4;
        double n5;
        if (Build$VERSION.SDK_INT >= 11) {
            final double n2 = Math.abs(scaleGestureDetector.getCurrentSpanX() - scaleGestureDetector.getPreviousSpanX());
            final double n3 = Math.abs(scaleGestureDetector.getCurrentSpanY() - scaleGestureDetector.getPreviousSpanY());
            n4 = n2;
            n5 = n3;
        }
        else {
            n4 = 0.0;
            n5 = 0.0;
        }
        if (n == 0.0) {
            return false;
        }
        if (this.mInZoomTransformGesture || 25.399999618530273 * abs / AIRGestureListener.screenPPI > 8.0) {
            int n6;
            if (!this.mInZoomTransformGesture) {
                this.mInZoomTransformGesture = true;
                n6 = 2;
            }
            else {
                n6 = 1;
            }
            float n7;
            float scaleFactor;
            if (Build$VERSION.SDK_INT >= 11) {
                float abs2;
                if (scaleGestureDetector.getPreviousSpanX() != 0.0f && scaleGestureDetector.getCurrentSpanX() != 0.0f && (this.mInZoomTransformGestureX || 25.399999618530273 * n4 / AIRGestureListener.screenPPI > 3.0)) {
                    abs2 = Math.abs(scaleGestureDetector.getCurrentSpanX() / scaleGestureDetector.getPreviousSpanX());
                    this.mInZoomTransformGestureX = true;
                }
                else {
                    abs2 = 1.0f;
                }
                if (scaleGestureDetector.getPreviousSpanY() != 0.0f && scaleGestureDetector.getCurrentSpanY() != 0.0f && (this.mInZoomTransformGestureY || 25.399999618530273 * n5 / AIRGestureListener.screenPPI > 3.0)) {
                    final float abs3 = Math.abs(scaleGestureDetector.getCurrentSpanY() / scaleGestureDetector.getPreviousSpanY());
                    this.mInZoomTransformGestureY = true;
                    n7 = abs3;
                    scaleFactor = abs2;
                }
                else {
                    n7 = 1.0f;
                    scaleFactor = abs2;
                }
            }
            else {
                n7 = (scaleFactor = scaleGestureDetector.getScaleFactor());
            }
            this.nativeOnGestureListener(n6, 0, true, this.mPreviousZoomLocX = focusX, this.mPreviousZoomLocY = focusY, scaleFactor, n7, 0.0f, 0.0f, 0.0f);
            return true;
        }
        return false;
    }
    
    public boolean onScaleBegin(final ScaleGestureDetector scaleGestureDetector) {
        if (this.mInZoomTransformGesture) {
            this.endZoomGesture();
        }
        return true;
    }
    
    public void onScaleEnd(final ScaleGestureDetector scaleGestureDetector) {
        final int multitouchMode = this.mSurfaceView.getMultitouchMode();
        this.mSurfaceView.getClass();
        if (multitouchMode == 2 && this.mInZoomTransformGesture) {
            final float scaleFactor = scaleGestureDetector.getScaleFactor();
            this.nativeOnGestureListener(4, 0, true, this.mPreviousZoomLocX, this.mPreviousZoomLocY, scaleFactor, scaleFactor, 0.0f, 0.0f, 0.0f);
        }
    }
    
    public boolean onScroll(final MotionEvent motionEvent, final MotionEvent motionEvent2, final float n, final float n2) {
        final int multitouchMode = this.mSurfaceView.getMultitouchMode();
        this.mSurfaceView.getClass();
        if (multitouchMode != 2) {
            return true;
        }
        if (motionEvent2.getPointerCount() == 2) {
            int n3 = 1;
            final float n4 = (motionEvent2.getX(0) + motionEvent2.getX(1)) / 2.0f;
            final float n5 = (motionEvent2.getY(0) + motionEvent2.getY(1)) / 2.0f;
            final TouchPoint[] array = new TouchPoint[2];
            for (int i = 0; i < 2; ++i) {
                array[i] = new TouchPoint(motionEvent2.getX(i), motionEvent2.getY(i), motionEvent2.getPointerId(i));
            }
            final int access$100 = array[0].pid;
            final int access$2 = array[1].pid;
            if (access$100 >= 0 && access$100 < 2 && access$2 >= 0 && access$2 < 2) {
                if (!this.mInPanTransformGesture) {
                    final float rotation = this.getRotation(this.mDownTouchPoints[access$100], this.mDownTouchPoints[access$2], array[0], array[1]);
                    float n7;
                    if (Math.abs(rotation) > 180.0f) {
                        float n6;
                        if (rotation > 0.0f) {
                            n6 = -1.0f * (360.0f - rotation);
                        }
                        else {
                            n6 = rotation + 360.0f;
                        }
                        n7 = n6;
                    }
                    else {
                        n7 = rotation;
                    }
                    if (this.mInRotateTransformGesture || Math.abs(n7) > 15.0f) {
                        if (!this.mInRotateTransformGesture) {
                            n3 = 2;
                            this.mInRotateTransformGesture = true;
                            this.mPreviousAbsoluteRotation = 0.0f;
                        }
                        final int n8 = n3;
                        final float a = n7 - this.mPreviousAbsoluteRotation;
                        float n10;
                        if (Math.abs(a) > 180.0f) {
                            float n9;
                            if (a > 0.0f) {
                                n9 = -1.0f * (360.0f - a);
                            }
                            else {
                                n9 = a + 360.0f;
                            }
                            n10 = n9;
                        }
                        else {
                            n10 = a;
                        }
                        this.mPreviousAbsoluteRotation = n7;
                        this.nativeOnGestureListener(n8, 2, true, this.mPreviousRotateLocX = n4, this.mPreviousRotateLocY = n5, 1.0f, 1.0f, n10, 0.0f, 0.0f);
                        n3 = n8;
                    }
                }
                if (!this.mInZoomTransformGesture && !this.mInRotateTransformGesture) {
                    if (this.isPanGesture(this.mDownTouchPoints[access$100], this.mDownTouchPoints[access$2], array[0], array[1])) {
                        if (!this.mInPanTransformGesture) {
                            n3 = 2;
                            this.mInPanTransformGesture = true;
                        }
                        this.nativeOnGestureListener(n3, 1, true, this.mPreviousPanLocX = n4, this.mPreviousPanLocY = n5, 1.0f, 1.0f, 0.0f, -1.0f * n, -1.0f * n2);
                    }
                    else if (this.mInPanTransformGesture) {
                        this.endPanGesture();
                        this.setDownTouchPoint(array[0].x, array[0].y, array[0].pid);
                        this.setDownTouchPoint(array[1].x, array[1].y, array[1].pid);
                    }
                }
            }
        }
        else if (motionEvent2.getPointerCount() == 1) {
            final int pointerId = motionEvent2.getPointerId(0);
            if (pointerId >= 0 && pointerId < 2 && this.mCheckForSwipe && motionEvent.getPointerCount() == 1) {
                final float n11 = motionEvent2.getX(0) - this.mDownTouchPoints[pointerId].x;
                final float n12 = motionEvent2.getY(0) - this.mDownTouchPoints[pointerId].y;
                int n13;
                float n15;
                float n16;
                if (25.4f * Math.abs(n11) / AIRGestureListener.screenPPI >= 10.0f && 25.4f * Math.abs(n12) / AIRGestureListener.screenPPI <= 5.0f) {
                    n13 = 1;
                    float n14;
                    if (n11 > 0.0f) {
                        n14 = 1.0f;
                    }
                    else {
                        n14 = -1.0f;
                    }
                    n15 = 0.0f;
                    n16 = n14;
                }
                else if (25.4f * Math.abs(n12) / AIRGestureListener.screenPPI >= 10.0f && 25.4f * Math.abs(n11) / AIRGestureListener.screenPPI <= 5.0f) {
                    float n17;
                    if (n12 > 0.0f) {
                        n17 = 1.0f;
                    }
                    else {
                        n17 = -1.0f;
                    }
                    n15 = n17;
                    n13 = 1;
                    n16 = 0.0f;
                }
                else {
                    n13 = 0;
                    n16 = 0.0f;
                    n15 = 0.0f;
                }
                if (n13 != 0) {
                    this.nativeOnGestureListener(8, 5, true, motionEvent.getX(0), motionEvent2.getY(0), 1.0f, 1.0f, 0.0f, n16, n15);
                    this.mCheckForSwipe = false;
                }
            }
        }
        return true;
    }
    
    public void onShowPress(final MotionEvent motionEvent) {
    }
    
    public boolean onSingleTapConfirmed(final MotionEvent motionEvent) {
        final int multitouchMode = this.mSurfaceView.getMultitouchMode();
        this.mSurfaceView.getClass();
        if (multitouchMode != 2) {
            return true;
        }
        if (this.mCouldBeTwoFingerTap == 3 && motionEvent.getPointerCount() == 1 && (0xFF & motionEvent.getAction()) == 0x0) {
            final float n = (this.mSecondaryPointOfTwoFingerTap.x + motionEvent.getX(0)) / 2.0f;
            final float n2 = (this.mSecondaryPointOfTwoFingerTap.y + motionEvent.getY(0)) / 2.0f;
            final boolean b = 1 != 0 && this.nativeOnGestureListener(8, 3, false, n, n2, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f);
            this.mCouldBeTwoFingerTap = 0;
            return b;
        }
        return true;
    }
    
    public boolean onSingleTapUp(final MotionEvent motionEvent) {
        return true;
    }
    
    public void setCheckForSwipe(final boolean mCheckForSwipe) {
        this.mCheckForSwipe = mCheckForSwipe;
    }
    
    public void setCouldBeTwoFingerTap(final int mCouldBeTwoFingerTap) {
        this.mCouldBeTwoFingerTap = mCouldBeTwoFingerTap;
    }
    
    public void setDownTouchPoint(final float n, final float n2, final int n3) {
        if (n3 >= 0 && n3 < 2) {
            this.mDownTouchPoints[n3].assign(n, n2, n3);
        }
    }
    
    public void setSecondaryPointOfTwoFingerTap(final TouchPoint mSecondaryPointOfTwoFingerTap) {
        this.mSecondaryPointOfTwoFingerTap = mSecondaryPointOfTwoFingerTap;
    }
    
    private class TouchPoint
    {
        private int pid;
        private float x;
        private float y;
        
        TouchPoint() {
            super();
            this.x = 0.0f;
            this.y = 0.0f;
            this.pid = 0;
        }
        
        TouchPoint(final float x, final float y, final int pid) {
            super();
            this.x = x;
            this.y = y;
            this.pid = pid;
        }
        
        private void assign(final float x, final float y, final int pid) {
            this.x = x;
            this.y = y;
            this.pid = pid;
        }
    }
}
