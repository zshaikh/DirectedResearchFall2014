package android.support.v4.widget;

import java.util.*;
import android.graphics.drawable.*;
import android.content.*;
import android.util.*;
import android.graphics.*;
import android.support.v4.view.*;
import android.support.v4.view.accessibility.*;
import android.view.accessibility.*;
import android.content.res.*;
import android.view.*;
import android.os.*;
import java.lang.reflect.*;

public class SlidingPaneLayout extends ViewGroup
{
    private static final int DEFAULT_FADE_COLOR = -858993460;
    private static final int DEFAULT_OVERHANG_SIZE = 32;
    static final SlidingPanelLayoutImpl IMPL;
    private static final int MIN_FLING_VELOCITY = 400;
    private static final String TAG = "SlidingPaneLayout";
    private boolean mCanSlide;
    private int mCoveredFadeColor;
    private final ViewDragHelper mDragHelper;
    private boolean mFirstLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private boolean mIsUnableToDrag;
    private final int mOverhangSize;
    private PanelSlideListener mPanelSlideListener;
    private int mParallaxBy;
    private float mParallaxOffset;
    private final ArrayList<DisableLayerRunnable> mPostedRunnables;
    private boolean mPreservedOpenState;
    private Drawable mShadowDrawable;
    private float mSlideOffset;
    private int mSlideRange;
    private View mSlideableView;
    private int mSliderFadeColor;
    private final Rect mTmpRect;
    
    static {
        final int sdk_INT = Build$VERSION.SDK_INT;
        if (sdk_INT >= 17) {
            IMPL = (SlidingPanelLayoutImpl)new SlidingPanelLayoutImplJBMR1();
            return;
        }
        if (sdk_INT >= 16) {
            IMPL = (SlidingPanelLayoutImpl)new SlidingPanelLayoutImplJB();
            return;
        }
        IMPL = (SlidingPanelLayoutImpl)new SlidingPanelLayoutImplBase();
    }
    
    public SlidingPaneLayout(final Context context) {
        this(context, null);
    }
    
    public SlidingPaneLayout(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public SlidingPaneLayout(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mSliderFadeColor = -858993460;
        this.mFirstLayout = true;
        this.mTmpRect = new Rect();
        this.mPostedRunnables = new ArrayList<DisableLayerRunnable>();
        final float density = context.getResources().getDisplayMetrics().density;
        this.mOverhangSize = (int)(0.5f + 32.0f * density);
        ViewConfiguration.get(context);
        this.setWillNotDraw(false);
        ViewCompat.setAccessibilityDelegate((View)this, new AccessibilityDelegate());
        ViewCompat.setImportantForAccessibility((View)this, 1);
        (this.mDragHelper = ViewDragHelper.create(this, 0.5f, (ViewDragHelper.Callback)new DragHelperCallback())).setEdgeTrackingEnabled(1);
        this.mDragHelper.setMinVelocity(400.0f * density);
    }
    
    private boolean closePane(final View view, final int n) {
        if (!this.mFirstLayout) {
            final boolean smoothSlideTo = this.smoothSlideTo(0.0f, n);
            final boolean b = false;
            if (!smoothSlideTo) {
                return b;
            }
        }
        this.mPreservedOpenState = false;
        return true;
    }
    
    private void dimChildView(final View view, final float n, final int n2) {
        final LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        if (n > 0.0f && n2 != 0) {
            final int n3 = (int)(n * ((0xFF000000 & n2) >>> 24)) << 24 | (0xFFFFFF & n2);
            if (layoutParams.dimPaint == null) {
                layoutParams.dimPaint = new Paint();
            }
            layoutParams.dimPaint.setColorFilter((ColorFilter)new PorterDuffColorFilter(n3, PorterDuff$Mode.SRC_OVER));
            if (ViewCompat.getLayerType(view) != 2) {
                ViewCompat.setLayerType(view, 2, layoutParams.dimPaint);
            }
            this.invalidateChildRegion(view);
        }
        else if (ViewCompat.getLayerType(view) != 0) {
            if (layoutParams.dimPaint != null) {
                layoutParams.dimPaint.setColorFilter((ColorFilter)null);
            }
            final DisableLayerRunnable e = new DisableLayerRunnable(view);
            this.mPostedRunnables.add(e);
            ViewCompat.postOnAnimation((View)this, e);
        }
    }
    
    private void invalidateChildRegion(final View view) {
        SlidingPaneLayout.IMPL.invalidateChildRegion(this, view);
    }
    
    private void onPanelDragged(final int n) {
        final LayoutParams layoutParams = (LayoutParams)this.mSlideableView.getLayoutParams();
        this.mSlideOffset = (n - (this.getPaddingLeft() + layoutParams.leftMargin)) / this.mSlideRange;
        if (this.mParallaxBy != 0) {
            this.parallaxOtherViews(this.mSlideOffset);
        }
        if (layoutParams.dimWhenOffset) {
            this.dimChildView(this.mSlideableView, this.mSlideOffset, this.mSliderFadeColor);
        }
        this.dispatchOnPanelSlide(this.mSlideableView);
    }
    
    private boolean openPane(final View view, final int n) {
        return (this.mFirstLayout || this.smoothSlideTo(1.0f, n)) && (this.mPreservedOpenState = true);
    }
    
    private void parallaxOtherViews(final float mParallaxOffset) {
        final LayoutParams layoutParams = (LayoutParams)this.mSlideableView.getLayoutParams();
        final boolean b = layoutParams.dimWhenOffset && layoutParams.leftMargin <= 0;
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.getChildAt(i);
            if (child != this.mSlideableView) {
                final int n = (int)((1.0f - this.mParallaxOffset) * this.mParallaxBy);
                this.mParallaxOffset = mParallaxOffset;
                child.offsetLeftAndRight(n - (int)((1.0f - mParallaxOffset) * this.mParallaxBy));
                if (b) {
                    this.dimChildView(child, 1.0f - this.mParallaxOffset, this.mCoveredFadeColor);
                }
            }
        }
    }
    
    private static boolean viewIsOpaque(final View view) {
        if (!ViewCompat.isOpaque(view)) {
            if (Build$VERSION.SDK_INT >= 18) {
                return false;
            }
            final Drawable background = view.getBackground();
            if (background == null) {
                return false;
            }
            if (background.getOpacity() != -1) {
                return false;
            }
        }
        return true;
    }
    
    protected boolean canScroll(final View view, final boolean b, final int n, final int n2, final int n3) {
        if (view instanceof ViewGroup) {
            final ViewGroup viewGroup = (ViewGroup)view;
            final int scrollX = view.getScrollX();
            final int scrollY = view.getScrollY();
            for (int i = -1 + viewGroup.getChildCount(); i >= 0; --i) {
                final View child = viewGroup.getChildAt(i);
                if (n2 + scrollX >= child.getLeft() && n2 + scrollX < child.getRight() && n3 + scrollY >= child.getTop() && n3 + scrollY < child.getBottom() && this.canScroll(child, true, n, n2 + scrollX - child.getLeft(), n3 + scrollY - child.getTop())) {
                    return true;
                }
            }
        }
        return b && ViewCompat.canScrollHorizontally(view, -n);
    }
    
    @Deprecated
    public boolean canSlide() {
        return this.mCanSlide;
    }
    
    protected boolean checkLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof LayoutParams && super.checkLayoutParams(viewGroup$LayoutParams);
    }
    
    public boolean closePane() {
        return this.closePane(this.mSlideableView, 0);
    }
    
    public void computeScroll() {
        if (this.mDragHelper.continueSettling(true)) {
            if (this.mCanSlide) {
                ViewCompat.postInvalidateOnAnimation((View)this);
                return;
            }
            this.mDragHelper.abort();
        }
    }
    
    void dispatchOnPanelClosed(final View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelClosed(view);
        }
        this.sendAccessibilityEvent(32);
    }
    
    void dispatchOnPanelOpened(final View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelOpened(view);
        }
        this.sendAccessibilityEvent(32);
    }
    
    void dispatchOnPanelSlide(final View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelSlide(view, this.mSlideOffset);
        }
    }
    
    public void draw(final Canvas canvas) {
        super.draw(canvas);
        View child;
        if (this.getChildCount() > 1) {
            child = this.getChildAt(1);
        }
        else {
            child = null;
        }
        if (child == null || this.mShadowDrawable == null) {
            return;
        }
        final int intrinsicWidth = this.mShadowDrawable.getIntrinsicWidth();
        final int left = child.getLeft();
        this.mShadowDrawable.setBounds(left - intrinsicWidth, child.getTop(), left, child.getBottom());
        this.mShadowDrawable.draw(canvas);
    }
    
    protected boolean drawChild(final Canvas canvas, final View obj, final long n) {
        final LayoutParams layoutParams = (LayoutParams)obj.getLayoutParams();
        final int save = canvas.save(2);
        if (this.mCanSlide && !layoutParams.slideable && this.mSlideableView != null) {
            canvas.getClipBounds(this.mTmpRect);
            this.mTmpRect.right = Math.min(this.mTmpRect.right, this.mSlideableView.getLeft());
            canvas.clipRect(this.mTmpRect);
        }
        boolean b;
        if (Build$VERSION.SDK_INT >= 11) {
            b = super.drawChild(canvas, obj, n);
        }
        else if (layoutParams.dimWhenOffset && this.mSlideOffset > 0.0f) {
            if (!obj.isDrawingCacheEnabled()) {
                obj.setDrawingCacheEnabled(true);
            }
            final Bitmap drawingCache = obj.getDrawingCache();
            if (drawingCache != null) {
                canvas.drawBitmap(drawingCache, (float)obj.getLeft(), (float)obj.getTop(), layoutParams.dimPaint);
                b = false;
            }
            else {
                Log.e("SlidingPaneLayout", "drawChild: child view " + obj + " returned null drawing cache");
                b = super.drawChild(canvas, obj, n);
            }
        }
        else {
            if (obj.isDrawingCacheEnabled()) {
                obj.setDrawingCacheEnabled(false);
            }
            b = super.drawChild(canvas, obj, n);
        }
        canvas.restoreToCount(save);
        return b;
    }
    
    protected ViewGroup$LayoutParams generateDefaultLayoutParams() {
        return (ViewGroup$LayoutParams)new LayoutParams();
    }
    
    public ViewGroup$LayoutParams generateLayoutParams(final AttributeSet set) {
        return (ViewGroup$LayoutParams)new LayoutParams(this.getContext(), set);
    }
    
    protected ViewGroup$LayoutParams generateLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams) {
            return (ViewGroup$LayoutParams)new LayoutParams((ViewGroup$MarginLayoutParams)viewGroup$LayoutParams);
        }
        return (ViewGroup$LayoutParams)new LayoutParams(viewGroup$LayoutParams);
    }
    
    public int getCoveredFadeColor() {
        return this.mCoveredFadeColor;
    }
    
    public int getParallaxDistance() {
        return this.mParallaxBy;
    }
    
    public int getSliderFadeColor() {
        return this.mSliderFadeColor;
    }
    
    boolean isDimmed(final View view) {
        if (view != null) {
            final LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
            if (this.mCanSlide && layoutParams.dimWhenOffset && this.mSlideOffset > 0.0f) {
                return true;
            }
        }
        return false;
    }
    
    public boolean isOpen() {
        return !this.mCanSlide || this.mSlideOffset == 1.0f;
    }
    
    public boolean isSlideable() {
        return this.mCanSlide;
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }
    
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mFirstLayout = true;
        for (int i = 0; i < this.mPostedRunnables.size(); ++i) {
            this.mPostedRunnables.get(i).run();
        }
        this.mPostedRunnables.clear();
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        final int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (!this.mCanSlide && actionMasked == 0 && this.getChildCount() > 1) {
            final View child = this.getChildAt(1);
            if (child != null) {
                this.mPreservedOpenState = !this.mDragHelper.isViewUnder(child, (int)motionEvent.getX(), (int)motionEvent.getY());
            }
        }
        if (!this.mCanSlide || (this.mIsUnableToDrag && actionMasked != 0)) {
            this.mDragHelper.cancel();
            return super.onInterceptTouchEvent(motionEvent);
        }
        if (actionMasked == 3 || actionMasked == 1) {
            this.mDragHelper.cancel();
            return false;
        }
        boolean b = false;
        switch (actionMasked) {
            case 0: {
                this.mIsUnableToDrag = false;
                final float x = motionEvent.getX();
                final float y = motionEvent.getY();
                this.mInitialMotionX = x;
                this.mInitialMotionY = y;
                final boolean viewUnder = this.mDragHelper.isViewUnder(this.mSlideableView, (int)x, (int)y);
                b = false;
                if (!viewUnder) {
                    break;
                }
                final boolean dimmed = this.isDimmed(this.mSlideableView);
                b = false;
                if (dimmed) {
                    b = true;
                    break;
                }
                break;
            }
            case 2: {
                final float x2 = motionEvent.getX();
                final float y2 = motionEvent.getY();
                final float abs = Math.abs(x2 - this.mInitialMotionX);
                final float abs2 = Math.abs(y2 - this.mInitialMotionY);
                final float n = fcmpl(abs, (float)this.mDragHelper.getTouchSlop());
                b = false;
                if (n <= 0) {
                    break;
                }
                final float n2 = fcmpl(abs2, abs);
                b = false;
                if (n2 > 0) {
                    this.mDragHelper.cancel();
                    this.mIsUnableToDrag = true;
                    return false;
                }
                break;
            }
        }
        return this.mDragHelper.shouldInterceptTouchEvent(motionEvent) || b;
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        final int n5 = n3 - n;
        final int paddingLeft = this.getPaddingLeft();
        final int paddingRight = this.getPaddingRight();
        final int paddingTop = this.getPaddingTop();
        final int childCount = this.getChildCount();
        int a;
        int n6 = a = paddingLeft;
        if (this.mFirstLayout) {
            float mSlideOffset;
            if (this.mCanSlide && this.mPreservedOpenState) {
                mSlideOffset = 1.0f;
            }
            else {
                mSlideOffset = 0.0f;
            }
            this.mSlideOffset = mSlideOffset;
        }
        for (int i = 0; i < childCount; ++i) {
            final View child = this.getChildAt(i);
            if (child.getVisibility() != 8) {
                final LayoutParams layoutParams = (LayoutParams)child.getLayoutParams();
                final int measuredWidth = child.getMeasuredWidth();
                int n7 = 0;
                if (layoutParams.slideable) {
                    final int mSlideRange = Math.min(a, n5 - paddingRight - this.mOverhangSize) - n6 - (layoutParams.leftMargin + layoutParams.rightMargin);
                    this.mSlideRange = mSlideRange;
                    layoutParams.dimWhenOffset = (mSlideRange + (n6 + layoutParams.leftMargin) + measuredWidth / 2 > n5 - paddingRight);
                    n6 += (int)(mSlideRange * this.mSlideOffset) + layoutParams.leftMargin;
                }
                else if (this.mCanSlide && this.mParallaxBy != 0) {
                    n7 = (int)((1.0f - this.mSlideOffset) * this.mParallaxBy);
                    n6 = a;
                }
                else {
                    n6 = a;
                    n7 = 0;
                }
                final int n8 = n6 - n7;
                child.layout(n8, paddingTop, n8 + measuredWidth, paddingTop + child.getMeasuredHeight());
                a += child.getWidth();
            }
        }
        if (this.mFirstLayout) {
            if (this.mCanSlide) {
                if (this.mParallaxBy != 0) {
                    this.parallaxOtherViews(this.mSlideOffset);
                }
                if (((LayoutParams)this.mSlideableView.getLayoutParams()).dimWhenOffset) {
                    this.dimChildView(this.mSlideableView, this.mSlideOffset, this.mSliderFadeColor);
                }
            }
            else {
                for (int j = 0; j < childCount; ++j) {
                    this.dimChildView(this.getChildAt(j), 0.0f, this.mSliderFadeColor);
                }
            }
            this.updateObscuredViewsVisibility(this.mSlideableView);
        }
        this.mFirstLayout = false;
    }
    
    protected void onMeasure(final int n, final int n2) {
        final int mode = View$MeasureSpec.getMode(n);
        int size = View$MeasureSpec.getSize(n);
        int mode2 = View$MeasureSpec.getMode(n2);
        int size2 = View$MeasureSpec.getSize(n2);
        if (mode != 1073741824) {
            if (!this.isInEditMode()) {
                throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
            }
            if (mode != Integer.MIN_VALUE && mode == 0) {
                size = 300;
            }
        }
        else if (mode2 == 0) {
            if (!this.isInEditMode()) {
                throw new IllegalStateException("Height must not be UNSPECIFIED");
            }
            if (mode2 == 0) {
                mode2 = Integer.MIN_VALUE;
                size2 = 300;
            }
        }
        int b = -1;
        int min = 0;
        switch (mode2) {
            case 1073741824: {
                b = (min = size2 - this.getPaddingTop() - this.getPaddingBottom());
                break;
            }
            case Integer.MIN_VALUE: {
                b = size2 - this.getPaddingTop() - this.getPaddingBottom();
                min = 0;
                break;
            }
        }
        float n3 = 0.0f;
        boolean mCanSlide = false;
        int b2 = size - this.getPaddingLeft() - this.getPaddingRight();
        final int childCount = this.getChildCount();
        if (childCount > 2) {
            Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
        }
        this.mSlideableView = null;
        for (int i = 0; i < childCount; ++i) {
            final View child = this.getChildAt(i);
            final LayoutParams layoutParams = (LayoutParams)child.getLayoutParams();
            if (child.getVisibility() == 8) {
                layoutParams.dimWhenOffset = false;
            }
            else {
                if (layoutParams.weight > 0.0f) {
                    n3 += layoutParams.weight;
                    if (layoutParams.width == 0) {
                        continue;
                    }
                }
                final int n4 = layoutParams.leftMargin + layoutParams.rightMargin;
                int n5;
                if (layoutParams.width == -2) {
                    n5 = View$MeasureSpec.makeMeasureSpec(size - n4, Integer.MIN_VALUE);
                }
                else if (layoutParams.width == -1) {
                    n5 = View$MeasureSpec.makeMeasureSpec(size - n4, 1073741824);
                }
                else {
                    n5 = View$MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824);
                }
                int n6;
                if (layoutParams.height == -2) {
                    n6 = View$MeasureSpec.makeMeasureSpec(b, Integer.MIN_VALUE);
                }
                else if (layoutParams.height == -1) {
                    n6 = View$MeasureSpec.makeMeasureSpec(b, 1073741824);
                }
                else {
                    n6 = View$MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824);
                }
                child.measure(n5, n6);
                final int measuredWidth = child.getMeasuredWidth();
                final int measuredHeight = child.getMeasuredHeight();
                if (mode2 == Integer.MIN_VALUE && measuredHeight > min) {
                    min = Math.min(measuredHeight, b);
                }
                b2 -= measuredWidth;
                final boolean slideable = b2 < 0;
                layoutParams.slideable = slideable;
                mCanSlide |= slideable;
                if (layoutParams.slideable) {
                    this.mSlideableView = child;
                }
            }
        }
        if (mCanSlide || n3 > 0.0f) {
            final int n7 = size - this.mOverhangSize;
            for (int j = 0; j < childCount; ++j) {
                final View child2 = this.getChildAt(j);
                if (child2.getVisibility() != 8) {
                    final LayoutParams layoutParams2 = (LayoutParams)child2.getLayoutParams();
                    if (child2.getVisibility() != 8) {
                        boolean b3;
                        if (layoutParams2.width == 0 && layoutParams2.weight > 0.0f) {
                            b3 = true;
                        }
                        else {
                            b3 = false;
                        }
                        int measuredWidth2;
                        if (b3) {
                            measuredWidth2 = 0;
                        }
                        else {
                            measuredWidth2 = child2.getMeasuredWidth();
                        }
                        if (mCanSlide && child2 != this.mSlideableView) {
                            if (layoutParams2.width < 0 && (measuredWidth2 > n7 || layoutParams2.weight > 0.0f)) {
                                int n8;
                                if (b3) {
                                    if (layoutParams2.height == -2) {
                                        n8 = View$MeasureSpec.makeMeasureSpec(b, Integer.MIN_VALUE);
                                    }
                                    else if (layoutParams2.height == -1) {
                                        n8 = View$MeasureSpec.makeMeasureSpec(b, 1073741824);
                                    }
                                    else {
                                        n8 = View$MeasureSpec.makeMeasureSpec(layoutParams2.height, 1073741824);
                                    }
                                }
                                else {
                                    n8 = View$MeasureSpec.makeMeasureSpec(child2.getMeasuredHeight(), 1073741824);
                                }
                                child2.measure(View$MeasureSpec.makeMeasureSpec(n7, 1073741824), n8);
                            }
                        }
                        else if (layoutParams2.weight > 0.0f) {
                            int n9;
                            if (layoutParams2.width == 0) {
                                if (layoutParams2.height == -2) {
                                    n9 = View$MeasureSpec.makeMeasureSpec(b, Integer.MIN_VALUE);
                                }
                                else if (layoutParams2.height == -1) {
                                    n9 = View$MeasureSpec.makeMeasureSpec(b, 1073741824);
                                }
                                else {
                                    n9 = View$MeasureSpec.makeMeasureSpec(layoutParams2.height, 1073741824);
                                }
                            }
                            else {
                                n9 = View$MeasureSpec.makeMeasureSpec(child2.getMeasuredHeight(), 1073741824);
                            }
                            if (mCanSlide) {
                                final int n10 = size - (layoutParams2.leftMargin + layoutParams2.rightMargin);
                                final int measureSpec = View$MeasureSpec.makeMeasureSpec(n10, 1073741824);
                                if (measuredWidth2 != n10) {
                                    child2.measure(measureSpec, n9);
                                }
                            }
                            else {
                                child2.measure(View$MeasureSpec.makeMeasureSpec(measuredWidth2 + (int)(layoutParams2.weight * Math.max(0, b2) / n3), 1073741824), n9);
                            }
                        }
                    }
                }
            }
        }
        this.setMeasuredDimension(size, min);
        this.mCanSlide = mCanSlide;
        if (this.mDragHelper.getViewDragState() != 0 && !mCanSlide) {
            this.mDragHelper.abort();
        }
    }
    
    protected void onRestoreInstanceState(final Parcelable parcelable) {
        final SavedState savedState = (SavedState)parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.isOpen) {
            this.openPane();
        }
        else {
            this.closePane();
        }
        this.mPreservedOpenState = savedState.isOpen;
    }
    
    protected Parcelable onSaveInstanceState() {
        final SavedState savedState = new SavedState(super.onSaveInstanceState());
        boolean isOpen;
        if (this.isSlideable()) {
            isOpen = this.isOpen();
        }
        else {
            isOpen = this.mPreservedOpenState;
        }
        savedState.isOpen = isOpen;
        return (Parcelable)savedState;
    }
    
    protected void onSizeChanged(final int n, final int n2, final int n3, final int n4) {
        super.onSizeChanged(n, n2, n3, n4);
        if (n != n3) {
            this.mFirstLayout = true;
        }
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        boolean onTouchEvent;
        if (!this.mCanSlide) {
            onTouchEvent = super.onTouchEvent(motionEvent);
        }
        else {
            this.mDragHelper.processTouchEvent(motionEvent);
            final int action = motionEvent.getAction();
            onTouchEvent = true;
            switch (action & 0xFF) {
                default: {
                    return onTouchEvent;
                }
                case 0: {
                    final float x = motionEvent.getX();
                    final float y = motionEvent.getY();
                    this.mInitialMotionX = x;
                    this.mInitialMotionY = y;
                    return onTouchEvent;
                }
                case 1: {
                    if (!this.isDimmed(this.mSlideableView)) {
                        break;
                    }
                    final float x2 = motionEvent.getX();
                    final float y2 = motionEvent.getY();
                    final float n = x2 - this.mInitialMotionX;
                    final float n2 = y2 - this.mInitialMotionY;
                    final int touchSlop = this.mDragHelper.getTouchSlop();
                    if (n * n + n2 * n2 < touchSlop * touchSlop && this.mDragHelper.isViewUnder(this.mSlideableView, (int)x2, (int)y2)) {
                        this.closePane(this.mSlideableView, 0);
                        return onTouchEvent;
                    }
                    break;
                }
            }
        }
        return onTouchEvent;
    }
    
    public boolean openPane() {
        return this.openPane(this.mSlideableView, 0);
    }
    
    public void requestChildFocus(final View view, final View view2) {
        super.requestChildFocus(view, view2);
        if (!this.isInTouchMode() && !this.mCanSlide) {
            this.mPreservedOpenState = (view == this.mSlideableView);
        }
    }
    
    void setAllChildrenVisible() {
        for (int i = 0; i < this.getChildCount(); ++i) {
            final View child = this.getChildAt(i);
            if (child.getVisibility() == 4) {
                child.setVisibility(0);
            }
        }
    }
    
    public void setCoveredFadeColor(final int mCoveredFadeColor) {
        this.mCoveredFadeColor = mCoveredFadeColor;
    }
    
    public void setPanelSlideListener(final PanelSlideListener mPanelSlideListener) {
        this.mPanelSlideListener = mPanelSlideListener;
    }
    
    public void setParallaxDistance(final int mParallaxBy) {
        this.mParallaxBy = mParallaxBy;
        this.requestLayout();
    }
    
    public void setShadowDrawable(final Drawable mShadowDrawable) {
        this.mShadowDrawable = mShadowDrawable;
    }
    
    public void setShadowResource(final int n) {
        this.setShadowDrawable(this.getResources().getDrawable(n));
    }
    
    public void setSliderFadeColor(final int mSliderFadeColor) {
        this.mSliderFadeColor = mSliderFadeColor;
    }
    
    @Deprecated
    public void smoothSlideClosed() {
        this.closePane();
    }
    
    @Deprecated
    public void smoothSlideOpen() {
        this.openPane();
    }
    
    boolean smoothSlideTo(final float n, final int n2) {
        if (this.mCanSlide && this.mDragHelper.smoothSlideViewTo(this.mSlideableView, (int)(this.getPaddingLeft() + ((LayoutParams)this.mSlideableView.getLayoutParams()).leftMargin + n * this.mSlideRange), this.mSlideableView.getTop())) {
            this.setAllChildrenVisible();
            ViewCompat.postInvalidateOnAnimation((View)this);
            return true;
        }
        return false;
    }
    
    void updateObscuredViewsVisibility(final View view) {
        final int paddingLeft = this.getPaddingLeft();
        final int a = this.getWidth() - this.getPaddingRight();
        final int paddingTop = this.getPaddingTop();
        final int a2 = this.getHeight() - this.getPaddingBottom();
        int left;
        int right;
        int top;
        int bottom;
        if (view != null && viewIsOpaque(view)) {
            left = view.getLeft();
            right = view.getRight();
            top = view.getTop();
            bottom = view.getBottom();
        }
        else {
            bottom = 0;
            left = 0;
            right = 0;
            top = 0;
        }
        for (int i = 0; i < this.getChildCount(); ++i) {
            final View child = this.getChildAt(i);
            if (child == view) {
                break;
            }
            final int max = Math.max(paddingLeft, child.getLeft());
            final int max2 = Math.max(paddingTop, child.getTop());
            final int min = Math.min(a, child.getRight());
            final int min2 = Math.min(a2, child.getBottom());
            int visibility;
            if (max >= left && max2 >= top && min <= right && min2 <= bottom) {
                visibility = 4;
            }
            else {
                visibility = 0;
            }
            child.setVisibility(visibility);
        }
    }
    
    class AccessibilityDelegate extends AccessibilityDelegateCompat
    {
        private final Rect mTmpRect;
        
        AccessibilityDelegate() {
            super();
            this.mTmpRect = new Rect();
        }
        
        private void copyNodeInfoNoChildren(final AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, final AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2) {
            final Rect mTmpRect = this.mTmpRect;
            accessibilityNodeInfoCompat2.getBoundsInParent(mTmpRect);
            accessibilityNodeInfoCompat.setBoundsInParent(mTmpRect);
            accessibilityNodeInfoCompat2.getBoundsInScreen(mTmpRect);
            accessibilityNodeInfoCompat.setBoundsInScreen(mTmpRect);
            accessibilityNodeInfoCompat.setVisibleToUser(accessibilityNodeInfoCompat2.isVisibleToUser());
            accessibilityNodeInfoCompat.setPackageName(accessibilityNodeInfoCompat2.getPackageName());
            accessibilityNodeInfoCompat.setClassName(accessibilityNodeInfoCompat2.getClassName());
            accessibilityNodeInfoCompat.setContentDescription(accessibilityNodeInfoCompat2.getContentDescription());
            accessibilityNodeInfoCompat.setEnabled(accessibilityNodeInfoCompat2.isEnabled());
            accessibilityNodeInfoCompat.setClickable(accessibilityNodeInfoCompat2.isClickable());
            accessibilityNodeInfoCompat.setFocusable(accessibilityNodeInfoCompat2.isFocusable());
            accessibilityNodeInfoCompat.setFocused(accessibilityNodeInfoCompat2.isFocused());
            accessibilityNodeInfoCompat.setAccessibilityFocused(accessibilityNodeInfoCompat2.isAccessibilityFocused());
            accessibilityNodeInfoCompat.setSelected(accessibilityNodeInfoCompat2.isSelected());
            accessibilityNodeInfoCompat.setLongClickable(accessibilityNodeInfoCompat2.isLongClickable());
            accessibilityNodeInfoCompat.addAction(accessibilityNodeInfoCompat2.getActions());
            accessibilityNodeInfoCompat.setMovementGranularities(accessibilityNodeInfoCompat2.getMovementGranularities());
        }
        
        public boolean filter(final View view) {
            return SlidingPaneLayout.this.isDimmed(view);
        }
        
        @Override
        public void onInitializeAccessibilityEvent(final View view, final AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName((CharSequence)SlidingPaneLayout.class.getName());
        }
        
        @Override
        public void onInitializeAccessibilityNodeInfo(final View source, final AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            final AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
            super.onInitializeAccessibilityNodeInfo(source, obtain);
            this.copyNodeInfoNoChildren(accessibilityNodeInfoCompat, obtain);
            obtain.recycle();
            accessibilityNodeInfoCompat.setClassName(SlidingPaneLayout.class.getName());
            accessibilityNodeInfoCompat.setSource(source);
            final ViewParent parentForAccessibility = ViewCompat.getParentForAccessibility(source);
            if (parentForAccessibility instanceof View) {
                accessibilityNodeInfoCompat.setParent((View)parentForAccessibility);
            }
            for (int childCount = SlidingPaneLayout.this.getChildCount(), i = 0; i < childCount; ++i) {
                final View child = SlidingPaneLayout.this.getChildAt(i);
                if (!this.filter(child) && child.getVisibility() == 0) {
                    ViewCompat.setImportantForAccessibility(child, 1);
                    accessibilityNodeInfoCompat.addChild(child);
                }
            }
        }
        
        @Override
        public boolean onRequestSendAccessibilityEvent(final ViewGroup viewGroup, final View view, final AccessibilityEvent accessibilityEvent) {
            return !this.filter(view) && super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
    }
    
    private class DisableLayerRunnable implements Runnable
    {
        final View mChildView;
        
        DisableLayerRunnable(final View mChildView) {
            super();
            this.mChildView = mChildView;
        }
        
        @Override
        public void run() {
            if (this.mChildView.getParent() == SlidingPaneLayout.this) {
                ViewCompat.setLayerType(this.mChildView, 0, null);
                SlidingPaneLayout.this.invalidateChildRegion(this.mChildView);
            }
            SlidingPaneLayout.this.mPostedRunnables.remove(this);
        }
    }
    
    private class DragHelperCallback extends Callback
    {
        @Override
        public int clampViewPositionHorizontal(final View view, final int a, final int n) {
            final int b = SlidingPaneLayout.this.getPaddingLeft() + ((LayoutParams)SlidingPaneLayout.this.mSlideableView.getLayoutParams()).leftMargin;
            return Math.min(Math.max(a, b), b + SlidingPaneLayout.this.mSlideRange);
        }
        
        @Override
        public int getViewHorizontalDragRange(final View view) {
            return SlidingPaneLayout.this.mSlideRange;
        }
        
        @Override
        public void onEdgeDragStarted(final int n, final int n2) {
            SlidingPaneLayout.this.mDragHelper.captureChildView(SlidingPaneLayout.this.mSlideableView, n2);
        }
        
        @Override
        public void onViewCaptured(final View view, final int n) {
            SlidingPaneLayout.this.setAllChildrenVisible();
        }
        
        @Override
        public void onViewDragStateChanged(final int n) {
            if (SlidingPaneLayout.this.mDragHelper.getViewDragState() == 0) {
                if (SlidingPaneLayout.this.mSlideOffset != 0.0f) {
                    SlidingPaneLayout.this.dispatchOnPanelOpened(SlidingPaneLayout.this.mSlideableView);
                    SlidingPaneLayout.this.mPreservedOpenState = true;
                    return;
                }
                SlidingPaneLayout.this.updateObscuredViewsVisibility(SlidingPaneLayout.this.mSlideableView);
                SlidingPaneLayout.this.dispatchOnPanelClosed(SlidingPaneLayout.this.mSlideableView);
                SlidingPaneLayout.this.mPreservedOpenState = false;
            }
        }
        
        @Override
        public void onViewPositionChanged(final View view, final int n, final int n2, final int n3, final int n4) {
            SlidingPaneLayout.this.onPanelDragged(n);
            SlidingPaneLayout.this.invalidate();
        }
        
        @Override
        public void onViewReleased(final View view, final float n, final float n2) {
            int n3 = SlidingPaneLayout.this.getPaddingLeft() + ((LayoutParams)view.getLayoutParams()).leftMargin;
            if (n > 0.0f || (n == 0.0f && SlidingPaneLayout.this.mSlideOffset > 0.5f)) {
                n3 += SlidingPaneLayout.this.mSlideRange;
            }
            SlidingPaneLayout.this.mDragHelper.settleCapturedViewAt(n3, view.getTop());
            SlidingPaneLayout.this.invalidate();
        }
        
        @Override
        public boolean tryCaptureView(final View view, final int n) {
            return !SlidingPaneLayout.this.mIsUnableToDrag && ((LayoutParams)view.getLayoutParams()).slideable;
        }
    }
    
    public static class LayoutParams extends ViewGroup$MarginLayoutParams
    {
        private static final int[] ATTRS;
        Paint dimPaint;
        boolean dimWhenOffset;
        boolean slideable;
        public float weight;
        
        static {
            ATTRS = new int[] { 16843137 };
        }
        
        public LayoutParams() {
            super(-1, -1);
            this.weight = 0.0f;
        }
        
        public LayoutParams(final int n, final int n2) {
            super(n, n2);
            this.weight = 0.0f;
        }
        
        public LayoutParams(final Context context, final AttributeSet set) {
            super(context, set);
            this.weight = 0.0f;
            final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, LayoutParams.ATTRS);
            this.weight = obtainStyledAttributes.getFloat(0, 0.0f);
            obtainStyledAttributes.recycle();
        }
        
        public LayoutParams(final LayoutParams layoutParams) {
            super((ViewGroup$MarginLayoutParams)layoutParams);
            this.weight = 0.0f;
            this.weight = layoutParams.weight;
        }
        
        public LayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
            super(viewGroup$LayoutParams);
            this.weight = 0.0f;
        }
        
        public LayoutParams(final ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
            super(viewGroup$MarginLayoutParams);
            this.weight = 0.0f;
        }
    }
    
    public interface PanelSlideListener
    {
        void onPanelClosed(View p0);
        
        void onPanelOpened(View p0);
        
        void onPanelSlide(View p0, float p1);
    }
    
    static class SavedState extends View$BaseSavedState
    {
        public static final Parcelable$Creator<SavedState> CREATOR;
        boolean isOpen;
        
        static {
            CREATOR = (Parcelable$Creator)new Parcelable$Creator<SavedState>() {
                public SavedState createFromParcel(final Parcel parcel) {
                    return new SavedState(parcel);
                }
                
                public SavedState[] newArray(final int n) {
                    return new SavedState[n];
                }
            };
        }
        
        private SavedState(final Parcel parcel) {
            super(parcel);
            this.isOpen = (parcel.readInt() != 0);
        }
        
        SavedState(final Parcelable parcelable) {
            super(parcelable);
        }
        
        public void writeToParcel(final Parcel parcel, final int n) {
            super.writeToParcel(parcel, n);
            int n2;
            if (this.isOpen) {
                n2 = 1;
            }
            else {
                n2 = 0;
            }
            parcel.writeInt(n2);
        }
    }
    
    public static class SimplePanelSlideListener implements PanelSlideListener
    {
        @Override
        public void onPanelClosed(final View view) {
        }
        
        @Override
        public void onPanelOpened(final View view) {
        }
        
        @Override
        public void onPanelSlide(final View view, final float n) {
        }
    }
    
    interface SlidingPanelLayoutImpl
    {
        void invalidateChildRegion(SlidingPaneLayout p0, View p1);
    }
    
    static class SlidingPanelLayoutImplBase implements SlidingPanelLayoutImpl
    {
        @Override
        public void invalidateChildRegion(final SlidingPaneLayout slidingPaneLayout, final View view) {
            ViewCompat.postInvalidateOnAnimation((View)slidingPaneLayout, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }
    
    static class SlidingPanelLayoutImplJB extends SlidingPanelLayoutImplBase
    {
        private Method mGetDisplayList;
        private Field mRecreateDisplayList;
        
        SlidingPanelLayoutImplJB() {
            // 
            // This method could not be decompiled.
            // 
            // Original Bytecode:
            // 
            //     1: invokespecial   android/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase.<init>:()V
            //     4: aload_0        
            //     5: ldc             Landroid/view/View;.class
            //     7: ldc             "getDisplayList"
            //     9: aconst_null    
            //    10: checkcast       [Ljava/lang/Class;
            //    13: invokevirtual   java/lang/Class.getDeclaredMethod:(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
            //    16: putfield        android/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB.mGetDisplayList:Ljava/lang/reflect/Method;
            //    19: aload_0        
            //    20: ldc             Landroid/view/View;.class
            //    22: ldc             "mRecreateDisplayList"
            //    24: invokevirtual   java/lang/Class.getDeclaredField:(Ljava/lang/String;)Ljava/lang/reflect/Field;
            //    27: putfield        android/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB.mRecreateDisplayList:Ljava/lang/reflect/Field;
            //    30: aload_0        
            //    31: getfield        android/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB.mRecreateDisplayList:Ljava/lang/reflect/Field;
            //    34: iconst_1       
            //    35: invokevirtual   java/lang/reflect/Field.setAccessible:(Z)V
            //    38: return         
            //    39: astore_1       
            //    40: ldc             "SlidingPaneLayout"
            //    42: ldc             "Couldn't fetch getDisplayList method; dimming won't work right."
            //    44: aload_1        
            //    45: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
            //    48: pop            
            //    49: goto            19
            //    52: astore_3       
            //    53: ldc             "SlidingPaneLayout"
            //    55: ldc             "Couldn't fetch mRecreateDisplayList field; dimming will be slow."
            //    57: aload_3        
            //    58: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
            //    61: pop            
            //    62: return         
            //    Exceptions:
            //  Try           Handler
            //  Start  End    Start  End    Type                             
            //  -----  -----  -----  -----  ---------------------------------
            //  4      19     39     52     Ljava/lang/NoSuchMethodException;
            //  19     38     52     63     Ljava/lang/NoSuchFieldException;
            // 
            // The error that occurred was:
            // 
            // java.lang.IllegalStateException: Expression is linked from several locations: Label_0019:
            //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
            //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
            //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
            //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
            //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
            //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createConstructor(AstBuilder.java:692)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:529)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:556)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
            //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
            //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
            //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
            //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
            //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
            // 
            throw new IllegalStateException("An error occurred while decompiling this method.");
        }
        
        @Override
        public void invalidateChildRegion(final SlidingPaneLayout slidingPaneLayout, final View view) {
            if (this.mGetDisplayList != null && this.mRecreateDisplayList != null) {
                while (true) {
                    try {
                        this.mRecreateDisplayList.setBoolean(view, true);
                        this.mGetDisplayList.invoke(view, (Object[])null);
                        super.invalidateChildRegion(slidingPaneLayout, view);
                        return;
                    }
                    catch (Exception ex) {
                        Log.e("SlidingPaneLayout", "Error refreshing display list state", (Throwable)ex);
                        continue;
                    }
                    break;
                }
            }
            view.invalidate();
        }
    }
    
    static class SlidingPanelLayoutImplJBMR1 extends SlidingPanelLayoutImplBase
    {
        @Override
        public void invalidateChildRegion(final SlidingPaneLayout slidingPaneLayout, final View view) {
            ViewCompat.setLayerPaint(view, ((LayoutParams)view.getLayoutParams()).dimPaint);
        }
    }
}
