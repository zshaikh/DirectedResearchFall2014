package com.adobe.air;

import android.content.*;
import android.os.*;
import android.content.res.*;
import android.text.method.*;
import android.util.*;
import android.view.*;
import android.widget.*;
import android.graphics.drawable.*;
import android.graphics.drawable.shapes.*;
import android.graphics.*;
import android.text.*;

public class AndroidStageText implements StateChangeCallback
{
    private static final int ALIGN_Center = 2;
    private static final int ALIGN_End = 5;
    private static final int ALIGN_Justify = 3;
    private static final int ALIGN_Left = 0;
    private static final int ALIGN_Right = 1;
    private static final int ALIGN_Start = 4;
    private static final int AUTO_CAP_All = 3;
    private static final int AUTO_CAP_None = 0;
    private static final int AUTO_CAP_Sentence = 2;
    private static final int AUTO_CAP_Word = 1;
    private static final int FOCUS_DOWN = 3;
    private static final int FOCUS_NONE = 1;
    private static final int FOCUS_UP = 2;
    private static final int KEYBOARDTYPE_Contact = 4;
    private static final int KEYBOARDTYPE_Default = 0;
    private static final int KEYBOARDTYPE_Email = 5;
    private static final int KEYBOARDTYPE_Number = 3;
    private static final int KEYBOARDTYPE_Punctuation = 1;
    private static final int KEYBOARDTYPE_Url = 2;
    private static final String LOG_TAG = "AndroidStageText";
    private static final int RETURN_KEY_Default = 0;
    private static final int RETURN_KEY_Done = 1;
    private static final int RETURN_KEY_Go = 2;
    private static final int RETURN_KEY_Next = 3;
    private static final int RETURN_KEY_Search = 4;
    private boolean enterKeyDispatched;
    private AIRWindowSurfaceView mAIRSurface;
    private int mAlign;
    private int mAutoCapitalize;
    private boolean mAutoCorrect;
    private BackgroundBorderDrawable mBBDrawable;
    private int mBackgroundColor;
    private boolean mBold;
    private int mBorderColor;
    private Rect mBounds;
    private ViewGroup mClip;
    private Rect mClipBounds;
    private Context mContext;
    private boolean mDisableInteraction;
    private boolean mDisplayAsPassword;
    private boolean mEditable;
    private String mFont;
    private int mFontSize;
    private Rect mGlobalBounds;
    private boolean mInContentMenu;
    private long mInternalReference;
    private boolean mItalic;
    private int mKeyboardType;
    private RelativeLayout mLayout;
    private String mLocale;
    private int mMaxChars;
    private boolean mMenuInvoked;
    private boolean mMultiline;
    private boolean mNotifyLayoutComplete;
    private String mRestrict;
    private int mReturnKeyLabel;
    private KeyListener mSavedKeyListener;
    private double mScaleFactor;
    private boolean mSelectionChanged;
    private int mTextColor;
    private AndroidStageTextEditText mTextView;
    private AndroidStageTextImpl mView;
    private Rect mViewBounds;
    
    public AndroidStageText(final boolean mMultiline) {
        super();
        this.enterKeyDispatched = false;
        this.mClip = null;
        this.mKeyboardType = 0;
        this.mDisplayAsPassword = false;
        this.mMultiline = false;
        this.mAutoCapitalize = 0;
        this.mReturnKeyLabel = 0;
        this.mAutoCorrect = false;
        this.mBold = false;
        this.mItalic = false;
        this.mEditable = true;
        this.mDisableInteraction = false;
        this.mAlign = 4;
        this.mTextColor = -16777216;
        this.mBackgroundColor = -1;
        this.mBorderColor = -16777216;
        this.mMaxChars = 0;
        this.mRestrict = null;
        this.mLocale = null;
        this.mBounds = new Rect();
        this.mViewBounds = null;
        this.mClipBounds = null;
        this.mGlobalBounds = new Rect();
        this.mSavedKeyListener = null;
        this.mMenuInvoked = false;
        this.mSelectionChanged = false;
        this.mInContentMenu = false;
        this.mNotifyLayoutComplete = false;
        this.mScaleFactor = 1.0;
        this.mMultiline = mMultiline;
        this.mDisplayAsPassword = false;
        this.mInternalReference = 0L;
        this.mContext = (Context)AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity();
        (this.mView = new AndroidStageTextImpl(this.mContext)).setFillViewport(true);
        if (Build$VERSION.SDK_INT >= 11) {
            this.mView.setLayerType(1, (Paint)null);
        }
        this.mTextView = new AndroidStageTextEditText(this.mContext);
        this.mSavedKeyListener = this.mTextView.getKeyListener();
        this.setFontSize(12);
        this.mView.addView((View)this.mTextView, new ViewGroup$LayoutParams(-1, -2));
        if (!mMultiline) {
            this.mTextView.setSingleLine(true);
        }
        else {
            this.mTextView.setTransformationMethod((TransformationMethod)null);
            this.mTextView.setHorizontallyScrolling(false);
        }
        this.mTextView.setGravity(3);
    }
    
    private void applyFilters() {
        int n;
        if (this.mMaxChars != 0) {
            n = 0 + 1;
        }
        else {
            n = 0;
        }
        if (this.mRestrict != null) {
            ++n;
        }
        final InputFilter[] filters = new InputFilter[n];
        int n2;
        if (this.mMaxChars != 0) {
            filters[0] = (InputFilter)new InputFilter$LengthFilter(this.mMaxChars);
            n2 = 0 + 1;
        }
        else {
            n2 = 0;
        }
        if (this.mRestrict != null) {
            filters[n2] = (InputFilter)new RestrictFilter(this.mRestrict);
        }
        this.mTextView.setFilters(filters);
    }
    
    private native void dispatchChangeEvent(final long p0);
    
    private native void dispatchCompleteEvent(final long p0);
    
    private native void dispatchFocusIn(final long p0, final int p1);
    
    private native void dispatchFocusOut(final long p0, final int p1);
    
    private RectShape getShapeForBounds(final Rect rect) {
        final RectShape rectShape = new RectShape();
        rectShape.resize((float)rect.width(), (float)rect.height());
        return rectShape;
    }
    
    private native boolean handleKeyEvent(final long p0, final int p1, final int p2);
    
    private native void invokeSoftKeyboard(final long p0);
    
    private void refreshGlobalBounds(final boolean b) {
        if (this.mView == null) {
            return;
        }
        this.mView.post((Runnable)new Runnable() {
            @Override
            public void run() {
                if (AndroidStageText.this.mView != null) {
                    final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(AndroidStageText.this.mGlobalBounds.width(), AndroidStageText.this.mGlobalBounds.height());
                    layoutParams.leftMargin = AndroidStageText.this.mGlobalBounds.left;
                    layoutParams.topMargin = AndroidStageText.this.mGlobalBounds.top;
                    AndroidStageText.this.mView.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
                    AndroidStageText.this.mView.requestLayout();
                    if (b) {
                        AndroidStageText.this.mNotifyLayoutComplete = true;
                    }
                }
            }
        });
    }
    
    private void setInputType() {
        int rawInputType = 0;
        if (this.mDisplayAsPassword) {
            if (this.mKeyboardType == 3) {
                rawInputType = 18;
            }
            else {
                rawInputType = 145;
            }
        }
        else {
            switch (this.mKeyboardType) {
                default: {
                    rawInputType = 1;
                    break;
                }
                case 1:
                case 4: {
                    rawInputType = 1;
                    break;
                }
                case 3: {
                    rawInputType = 2;
                    break;
                }
                case 5: {
                    rawInputType = 33;
                    break;
                }
                case 2: {
                    rawInputType = 17;
                    break;
                }
            }
        }
        if ((rawInputType & 0xF) == 0x1) {
            if (this.mAutoCorrect) {
                rawInputType |= 0x8000;
            }
            if (this.mAutoCapitalize != 0) {
                switch (this.mAutoCapitalize) {
                    case 1: {
                        rawInputType |= 0x2000;
                        break;
                    }
                    case 2: {
                        rawInputType |= 0x4000;
                        break;
                    }
                    case 3: {
                        rawInputType |= 0x1000;
                        break;
                    }
                }
            }
        }
        if (this.mMultiline) {
            rawInputType |= 0x20000;
        }
        this.mTextView.setRawInputType(rawInputType);
        this.mTextView.invalidate();
    }
    
    public void addToStage(final AIRWindowSurfaceView mairSurface) {
        if (this.mLayout != null) {
            this.removeFromStage();
        }
        this.mAIRSurface = mairSurface;
        final AndroidActivityWrapper activityWrapper = mairSurface.getActivityWrapper();
        activityWrapper.addActivityStateChangeListner((AndroidActivityWrapper.StateChangeCallback)this);
        (this.mLayout = activityWrapper.getOverlaysLayout(true)).addView((View)this.mView, (ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(this.mGlobalBounds.width(), this.mGlobalBounds.height()));
        this.mTextView.setOnEditorActionListener((TextView$OnEditorActionListener)new TextView$OnEditorActionListener() {
            public boolean onEditorAction(final TextView textView, final int n, final KeyEvent keyEvent) {
                switch (n) {
                    case 5: {
                        final boolean access$1500 = AndroidStageText.this.handleKeyEvent(AndroidStageText.this.mInternalReference, 0, 87);
                        AndroidStageText.this.handleKeyEvent(AndroidStageText.this.mInternalReference, 1, 87);
                        return access$1500;
                    }
                    case 2:
                    case 3: {
                        AndroidStageText.this.enterKeyDispatched = true;
                        final boolean access$2 = AndroidStageText.this.handleKeyEvent(AndroidStageText.this.mInternalReference, 0, 66);
                        AndroidStageText.this.handleKeyEvent(AndroidStageText.this.mInternalReference, 1, 66);
                        return access$2;
                    }
                    case 6: {
                        AndroidStageText.this.mAIRSurface.DispatchSoftKeyboardEventOnBackKey();
                        break;
                    }
                }
                return false;
            }
        });
    }
    
    public void adjustViewBounds(final double n, final double n2, final double n3, final double n4, final double mScaleFactor) {
        this.mViewBounds = new Rect((int)n, (int)n2, (int)(n + n3), (int)(n2 + n4));
        if (mScaleFactor != this.mScaleFactor) {
            this.mScaleFactor = mScaleFactor;
            this.setFontSize(this.mFontSize);
        }
        this.mBounds = this.mViewBounds;
        if (this.mClip != null) {
            this.mBounds.intersect(this.mClipBounds);
        }
        this.mGlobalBounds = this.mBounds;
        this.refreshGlobalBounds(true);
    }
    
    public void assignFocus() {
        this.mTextView.requestFocus();
        this.mAIRSurface.showSoftKeyboard(true, (View)this.mTextView);
        this.invokeSoftKeyboard(this.mInternalReference);
    }
    
    public Bitmap captureSnapshot(final int n, final int n2) {
        if (n < 0 || n2 < 0) {
            return null;
        }
        if (n == 0 && n2 == 0) {
            return null;
        }
        Bitmap bitmap = Bitmap.createBitmap(n, n2, Bitmap$Config.ARGB_8888);
        final Canvas canvas = new Canvas(bitmap);
        canvas.translate((float)(-this.mView.getScrollX()), (float)(-this.mView.getScrollY()));
        if (this.mScaleFactor != 0.0) {
            canvas.scale((float)(1.0 / this.mScaleFactor), (float)(1.0 / this.mScaleFactor));
        }
        final boolean horizontalScrollBarEnabled = this.mView.isHorizontalScrollBarEnabled();
        final boolean verticalScrollBarEnabled = this.mView.isVerticalScrollBarEnabled();
        this.mView.setHorizontalScrollBarEnabled(false);
        this.mView.setVerticalScrollBarEnabled(false);
        while (true) {
            try {
                this.mView.draw(canvas);
                this.mView.setHorizontalScrollBarEnabled(horizontalScrollBarEnabled);
                this.mView.setVerticalScrollBarEnabled(verticalScrollBarEnabled);
                return bitmap;
            }
            catch (Exception ex) {
                bitmap = null;
                continue;
            }
            break;
        }
    }
    
    public void clearFocus() {
        if (this.mTextView.hasFocus()) {
            this.mTextView.clearFocus();
            this.mAIRSurface.requestFocus();
        }
        if (this.mMenuInvoked && this.mDisableInteraction) {
            this.mAIRSurface.showSoftKeyboard(false, (View)this.mTextView);
        }
    }
    
    public void clearRestrict() {
        this.mRestrict = null;
        this.applyFilters();
    }
    
    public void destroyInternals() {
        this.removeFromStage();
        this.mInternalReference = 0L;
        this.mView = null;
        this.mClipBounds = null;
        this.mTextView = null;
    }
    
    public int getAlign() {
        return this.mAlign;
    }
    
    public int getAutoCapitalize() {
        return this.mAutoCapitalize;
    }
    
    public int getBackgroundColor() {
        return this.mBBDrawable.mBkgColor;
    }
    
    public int getBorderColor() {
        return this.mBBDrawable.mBorderColor;
    }
    
    public int getFontSize() {
        return this.mFontSize;
    }
    
    public int getKeyboardType() {
        return this.mKeyboardType;
    }
    
    public String getLocale() {
        return this.mLocale;
    }
    
    public int getMaxChars() {
        return this.mMaxChars;
    }
    
    public String getRestrict() {
        return this.mRestrict;
    }
    
    public int getReturnKeyLabel() {
        return this.mReturnKeyLabel;
    }
    
    public int getSelectionActiveIndex() {
        return this.mTextView.getSelectionEnd();
    }
    
    public int getSelectionAnchorIndex() {
        return this.mTextView.getSelectionStart();
    }
    
    public String getText() {
        return this.mTextView.getText().toString();
    }
    
    public int getTextColor() {
        return this.mTextColor;
    }
    
    @Override
    public void onActivityStateChanged(final ActivityState activityState) {
    }
    
    @Override
    public void onConfigurationChanged(final Configuration configuration) {
    }
    
    public void removeClip() {
        final AIRWindowSurfaceView mairSurface = this.mAIRSurface;
        this.mBounds = this.mViewBounds;
        this.mClipBounds = null;
        this.mTextView.invalidate();
        this.refreshGlobalBounds(true);
    }
    
    public void removeFromStage() {
        if (this.mLayout != null) {
            this.mLayout.removeView((View)this.mView);
            this.mLayout = null;
        }
        if (this.mAIRSurface != null) {
            final AndroidActivityWrapper activityWrapper = this.mAIRSurface.getActivityWrapper();
            activityWrapper.didRemoveOverlay();
            activityWrapper.removeActivityStateChangeListner((AndroidActivityWrapper.StateChangeCallback)this);
            this.mAIRSurface.updateFocusedStageText(this, false);
        }
        this.mAIRSurface = null;
    }
    
    public void resetGlobalBounds() {
        this.mGlobalBounds = this.mBounds;
        this.refreshGlobalBounds(false);
    }
    
    public void selectRange(final int n, final int n2) {
        int length = this.mTextView.length();
        int n3;
        if (n < 0) {
            n3 = 0;
        }
        else if (n > length) {
            n3 = length;
        }
        else {
            n3 = n;
        }
        if (n2 < 0) {
            length = 0;
        }
        else if (n2 <= length) {
            length = n2;
        }
        this.mTextView.setSelection(n3, length);
        this.mTextView.invalidate();
    }
    
    public void setAlign(final int mAlign) {
        switch (this.mAlign = mAlign) {
            case 0:
            case 4: {
                this.mTextView.setGravity(3);
                break;
            }
            case 1:
            case 5: {
                this.mTextView.setGravity(5);
                break;
            }
            case 2: {
                this.mTextView.setGravity(1);
                break;
            }
        }
        this.mTextView.invalidate();
    }
    
    public void setAutoCapitalize(final int mAutoCapitalize) {
        if (this.mAutoCapitalize != mAutoCapitalize) {
            this.mAutoCapitalize = mAutoCapitalize;
            this.setInputType();
        }
    }
    
    public void setAutoCorrect(final boolean mAutoCorrect) {
        if (this.mAutoCorrect != mAutoCorrect) {
            this.mAutoCorrect = mAutoCorrect;
            this.setInputType();
        }
    }
    
    public void setBackground(final boolean mHaveBkg) {
        if (this.mBBDrawable.mHaveBkg != mHaveBkg) {
            this.mBBDrawable.mHaveBkg = mHaveBkg;
            this.mTextView.invalidate();
        }
    }
    
    public void setBackgroundColor(final int n, final int n2, final int n3, final int n4) {
        this.mBBDrawable.setBkgColor(Color.argb(n4, n, n2, n3));
        this.mTextView.invalidate();
    }
    
    public void setBold(final boolean mBold) {
        this.mBold = mBold;
        this.updateTypeface();
    }
    
    public void setBorder(final boolean mHaveBorder) {
        if (this.mBBDrawable.mHaveBorder != mHaveBorder) {
            this.mBBDrawable.mHaveBorder = mHaveBorder;
            this.mTextView.invalidate();
        }
    }
    
    public void setBorderColor(final int n, final int n2, final int n3, final int n4) {
        this.mBBDrawable.setBorderColor(Color.argb(n4, n, n2, n3));
        this.mTextView.invalidate();
    }
    
    public void setClipBounds(final double n, final double n2, final double n3, final double n4) {
        this.mClipBounds = new Rect((int)n, (int)n2, (int)(n + n3), (int)(n2 + n4));
        this.mBounds = this.mViewBounds;
        this.mTextView.invalidate();
        this.refreshGlobalBounds(true);
    }
    
    public void setDisableInteraction(final boolean mDisableInteraction) {
        this.mDisableInteraction = mDisableInteraction;
        if (mDisableInteraction) {
            this.mTextView.setText((CharSequence)this.mTextView.getText(), TextView$BufferType.NORMAL);
            this.mTextView.setKeyListener((KeyListener)null);
            return;
        }
        final AndroidStageTextEditText mTextView = this.mTextView;
        final Editable text = this.mTextView.getText();
        TextView$BufferType textView$BufferType;
        if (this.mEditable) {
            textView$BufferType = TextView$BufferType.EDITABLE;
        }
        else {
            textView$BufferType = TextView$BufferType.NORMAL;
        }
        mTextView.setText((CharSequence)text, textView$BufferType);
        final AndroidStageTextEditText mTextView2 = this.mTextView;
        KeyListener mSavedKeyListener;
        if (this.mEditable) {
            mSavedKeyListener = this.mSavedKeyListener;
        }
        else {
            mSavedKeyListener = null;
        }
        mTextView2.setKeyListener(mSavedKeyListener);
    }
    
    public void setDisplayAsPassword(final boolean mDisplayAsPassword) {
        this.mDisplayAsPassword = mDisplayAsPassword;
        if (mDisplayAsPassword) {
            this.mTextView.setTransformationMethod((TransformationMethod)PasswordTransformationMethod.getInstance());
        }
        else if (!this.mMultiline) {
            this.mTextView.setTransformationMethod((TransformationMethod)SingleLineTransformationMethod.getInstance());
        }
        else {
            this.mTextView.setTransformationMethod((TransformationMethod)null);
        }
        this.setInputType();
    }
    
    public void setEditable(final boolean mEditable) {
        if (mEditable != this.mEditable) {
            this.mEditable = mEditable;
            if (!this.mDisableInteraction) {
                final AndroidStageTextEditText mTextView = this.mTextView;
                final Editable text = this.mTextView.getText();
                TextView$BufferType textView$BufferType;
                if (this.mEditable) {
                    textView$BufferType = TextView$BufferType.EDITABLE;
                }
                else {
                    textView$BufferType = TextView$BufferType.NORMAL;
                }
                mTextView.setText((CharSequence)text, textView$BufferType);
                final AndroidStageTextEditText mTextView2 = this.mTextView;
                KeyListener mSavedKeyListener;
                if (this.mEditable) {
                    mSavedKeyListener = this.mSavedKeyListener;
                }
                else {
                    mSavedKeyListener = null;
                }
                mTextView2.setKeyListener(mSavedKeyListener);
            }
        }
    }
    
    public void setFontFamily(final String mFont) {
        this.mFont = mFont;
        this.updateTypeface();
    }
    
    public void setFontSize(final int mFontSize) {
        this.mFontSize = mFontSize;
        this.mTextView.setTextSize(0, (float)(int)(0.5 + mFontSize * this.mScaleFactor));
        this.mTextView.invalidate();
    }
    
    public void setInternalReference(final long mInternalReference) {
        this.mInternalReference = mInternalReference;
    }
    
    public void setItalic(final boolean mItalic) {
        this.mItalic = mItalic;
        this.updateTypeface();
    }
    
    public void setKeyboardType(final int mKeyboardType) {
        this.mKeyboardType = mKeyboardType;
        this.setInputType();
    }
    
    public void setLocale(final String mLocale) {
        this.mLocale = mLocale;
    }
    
    public void setMaxChars(final int mMaxChars) {
        if (mMaxChars != this.mMaxChars) {
            this.mMaxChars = mMaxChars;
            this.applyFilters();
        }
    }
    
    public void setRestrict(final String mRestrict) {
        this.mRestrict = mRestrict;
        this.applyFilters();
    }
    
    public void setReturnKeyLabel(final int mReturnKeyLabel) {
        this.mReturnKeyLabel = mReturnKeyLabel;
        int imeOptions = 0;
        switch (mReturnKeyLabel) {
            case 1: {
                imeOptions = 6;
                break;
            }
            case 2: {
                imeOptions = 2;
                break;
            }
            case 3: {
                imeOptions = 5;
                break;
            }
            case 4: {
                imeOptions = 3;
                break;
            }
        }
        this.mTextView.setImeOptions(imeOptions);
    }
    
    public void setText(final String s) {
        final InputFilter[] filters = this.mTextView.getFilters();
        this.mTextView.setFilters(new InputFilter[0]);
        final AndroidStageTextEditText mTextView = this.mTextView;
        TextView$BufferType textView$BufferType;
        if (this.mEditable && !this.mDisableInteraction) {
            textView$BufferType = TextView$BufferType.EDITABLE;
        }
        else {
            textView$BufferType = TextView$BufferType.NORMAL;
        }
        mTextView.setText((CharSequence)s, textView$BufferType);
        this.mTextView.setFilters(filters);
    }
    
    public void setTextColor(final int n, final int n2, final int n3, final int n4) {
        this.mTextColor = Color.argb(n4, n, n2, n3);
        this.mTextView.setTextColor(this.mTextColor);
        this.mTextView.invalidate();
    }
    
    public void setVisibility(final boolean b) {
        int visibility;
        if (b) {
            visibility = 0;
        }
        else {
            visibility = 4;
        }
        if (this.mView.getVisibility() != visibility) {
            this.mView.setVisibility(visibility);
            if (b) {
                this.mTextView.invalidate();
            }
        }
    }
    
    public void updateTypeface() {
        final boolean mBold = this.mBold;
        int n = 0;
        if (mBold) {
            n = (0x0 | 0x1);
        }
        if (this.mItalic) {
            n |= 0x2;
        }
        final Typeface create = Typeface.create(this.mFont, n);
        if (create != null) {
            this.mTextView.setTypeface(create, n);
        }
        else {
            switch (n) {
                case 0: {
                    this.mTextView.setTypeface(Typeface.DEFAULT);
                    break;
                }
                case 1: {
                    this.mTextView.setTypeface(Typeface.DEFAULT_BOLD);
                    break;
                }
            }
        }
        this.mTextView.invalidate();
    }
    
    public long updateViewBoundsWithKeyboard(final int n) {
        this.mGlobalBounds = this.mBounds;
        while (true) {
            Label_0162: {
                if (this.mAIRSurface == null) {
                    break Label_0162;
                }
                final Rect rect = new Rect(0, 0, this.mAIRSurface.getVisibleBoundWidth(), this.mAIRSurface.getVisibleBoundHeight());
                if (rect.contains(this.mBounds)) {
                    break Label_0162;
                }
                final int min = Math.min(Math.max(0, this.mBounds.top), n);
                final int min2 = Math.min(Math.max(0, this.mBounds.bottom), n);
                if (min == min2) {
                    return 0L;
                }
                final int n2 = min2 - rect.bottom;
                if (n2 <= 0) {
                    return 0L;
                }
                int n3;
                if (n2 <= min) {
                    n3 = n2;
                }
                else {
                    this.mGlobalBounds = new Rect(this.mBounds);
                    this.mGlobalBounds.bottom = min + rect.bottom;
                    n3 = min;
                }
                this.refreshGlobalBounds(false);
                return n3;
            }
            int n3 = 0;
            continue;
        }
    }
    
    public class AndroidStageTextEditText extends EditText
    {
        private int mLastFocusDirection;
        private View m_focusedChildView;
        private boolean m_hasFocus;
        private boolean m_inRequestChildFocus;
        
        public AndroidStageTextEditText(final Context context) {
            super(context);
            this.m_inRequestChildFocus = false;
            this.m_focusedChildView = null;
            this.m_hasFocus = false;
            this.mLastFocusDirection = 0;
            this.setBackgroundDrawable((Drawable)null);
            this.setCompoundDrawablePadding(0);
            this.setPadding(0, 0, 0, 0);
        }
        
        public AndroidStageTextEditText(final Context context, final AttributeSet set) {
            super(context, set);
            this.m_inRequestChildFocus = false;
            this.m_focusedChildView = null;
            this.m_hasFocus = false;
            this.mLastFocusDirection = 0;
        }
        
        public AndroidStageTextEditText(final Context context, final AttributeSet set, final int n) {
            super(context, set, n);
            this.m_inRequestChildFocus = false;
            this.m_focusedChildView = null;
            this.m_hasFocus = false;
            this.mLastFocusDirection = 0;
        }
        
        private void dispatchFocusEvent(final boolean hasFocus, final int n) {
            if (this.m_hasFocus != hasFocus) {
                this.m_hasFocus = hasFocus;
                final AndroidStageText this$0 = AndroidStageText.this;
                if (this$0.mInternalReference != 0L) {
                    if (this$0.mAIRSurface != null) {
                        this$0.mAIRSurface.updateFocusedStageText(this$0, this.m_hasFocus);
                    }
                    if (hasFocus) {
                        this$0.dispatchFocusIn(this$0.mInternalReference, n);
                    }
                }
            }
        }
        
        public boolean dispatchTouchEvent(final MotionEvent motionEvent) {
            if (!this.m_hasFocus) {
                this.requestFocus();
            }
            return super.dispatchTouchEvent(motionEvent);
        }
        
        public void onCreateContextMenu(final ContextMenu contextMenu) {
            AndroidStageText.this.mMenuInvoked = true;
            AndroidStageText.this.mSelectionChanged = false;
            super.onCreateContextMenu(contextMenu);
        }
        
        protected void onDraw(final Canvas canvas) {
            if (AndroidStageText.this.mClipBounds != null) {
                canvas.save();
                final int n = -AndroidStageText.this.mViewBounds.left;
                final int n2 = -AndroidStageText.this.mViewBounds.top;
                canvas.clipRect(new Rect(n + AndroidStageText.this.mClipBounds.left, n2 + AndroidStageText.this.mClipBounds.top, n + AndroidStageText.this.mClipBounds.right, n2 + AndroidStageText.this.mClipBounds.bottom));
                super.onDraw(canvas);
                canvas.restore();
                return;
            }
            super.onDraw(canvas);
        }
        
        protected void onFocusChanged(final boolean b, final int n, final Rect rect) {
            super.onFocusChanged(b, n, rect);
            int mLastFocusDirection;
            if (n == 0) {
                mLastFocusDirection = this.mLastFocusDirection;
            }
            else {
                mLastFocusDirection = n;
            }
            this.mLastFocusDirection = 0;
            this.dispatchFocusEvent(b, mLastFocusDirection);
        }
        
        public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
            boolean b = false;
            switch (n) {
                case 4:
                case 66:
                case 82: {
                    final boolean access$1400 = AndroidStageText.this.enterKeyDispatched;
                    b = false;
                    if (!access$1400) {
                        b = AndroidStageText.this.handleKeyEvent(AndroidStageText.this.mInternalReference, keyEvent.getAction(), n);
                        break;
                    }
                    break;
                }
            }
            if (!b) {
                b = super.onKeyDown(n, keyEvent);
            }
            return b;
        }
        
        public boolean onKeyPreIme(final int n, final KeyEvent keyEvent) {
            if (AndroidStageText.this.mAIRSurface != null && n == 4 && keyEvent.getAction() == 0) {
                AndroidStageText.this.mAIRSurface.DispatchSoftKeyboardEventOnBackKey();
            }
            return super.onKeyPreIme(n, keyEvent);
        }
        
        public boolean onKeyUp(final int n, final KeyEvent keyEvent) {
            switch (n) {
                case 4:
                case 66:
                case 82: {
                    if (!AndroidStageText.this.enterKeyDispatched) {
                        AndroidStageText.this.handleKeyEvent(AndroidStageText.this.mInternalReference, keyEvent.getAction(), n);
                        break;
                    }
                    break;
                }
            }
            final boolean onKeyUp = super.onKeyUp(n, keyEvent);
            AndroidStageText.this.enterKeyDispatched = false;
            return onKeyUp;
        }
        
        protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
            final AndroidStageText this$0 = AndroidStageText.this;
            super.onLayout(b, n, n2, n3, n4);
            if (this$0.mNotifyLayoutComplete) {
                this$0.mNotifyLayoutComplete = false;
                this$0.dispatchCompleteEvent(this$0.mInternalReference);
            }
            AndroidStageText.this.mView.postDelayed((Runnable)new DelayedTransparentRegionUpdate(10, 75, AndroidStageText.this.mView, AndroidStageText.this.mAIRSurface), 75L);
        }
        
        public void onSelectionChanged(final int n, final int n2) {
            super.onSelectionChanged(n, n2);
            AndroidStageText.this.mSelectionChanged = true;
            if (AndroidStageText.this.mAIRSurface != null && AndroidStageText.this.mInContentMenu) {
                AndroidStageText.this.mAIRSurface.showSoftKeyboard(true, (View)AndroidStageText.this.mTextView);
                AndroidStageText.this.invokeSoftKeyboard(AndroidStageText.this.mInternalReference);
            }
        }
        
        protected void onTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
            super.onTextChanged(charSequence, n, n2, n3);
            final AndroidStageText this$0 = AndroidStageText.this;
            if (this$0.mInternalReference == 0L) {
                return;
            }
            this$0.dispatchChangeEvent(this$0.mInternalReference);
        }
        
        public boolean onTextContextMenuItem(final int n) {
            AndroidStageText.this.mInContentMenu = true;
            final boolean onTextContextMenuItem = super.onTextContextMenuItem(n);
            AndroidStageText.this.mInContentMenu = false;
            AndroidStageText.this.mMenuInvoked = false;
            return onTextContextMenuItem;
        }
        
        public boolean onTouchEvent(final MotionEvent motionEvent) {
            while (true) {
                for (int i = 0; i < motionEvent.getPointerCount(); ++i) {
                    final int action = motionEvent.getAction();
                    motionEvent.getPointerId(i);
                    if (motionEvent.getPointerCount() == 1 || motionEvent.getPointerId(i) == motionEvent.getPointerId((0xFF00 & action) >> 8)) {
                        final int n = action & 0xFF;
                        if (n != 6 && n != 1) {
                            final int n2 = 0;
                            if (n2 != 0) {
                                if (Build$VERSION.SDK_INT >= 11 || !AndroidStageText.this.mMenuInvoked) {
                                    AndroidStageText.this.invokeSoftKeyboard(AndroidStageText.this.mInternalReference);
                                }
                                AndroidStageText.this.mMenuInvoked = false;
                            }
                            return super.onTouchEvent(motionEvent);
                        }
                    }
                }
                final int n2 = 1;
                continue;
            }
        }
        
        public ActionMode startActionMode(final ActionMode$Callback actionMode$Callback) {
            if (AndroidStageText.this.mAIRSurface != null && AndroidStageText.this.mSelectionChanged) {
                AndroidStageText.this.mAIRSurface.showSoftKeyboard(true, (View)AndroidStageText.this.mTextView);
                AndroidStageText.this.invokeSoftKeyboard(AndroidStageText.this.mInternalReference);
                AndroidStageText.this.mSelectionChanged = false;
            }
            return super.startActionMode(actionMode$Callback);
        }
        
        private class DelayedTransparentRegionUpdate implements Runnable
        {
            private AIRWindowSurfaceView m_AIRSurface;
            private int m_freqMsecs;
            private int m_nUpdates;
            private AndroidStageTextImpl m_stageText;
            
            public DelayedTransparentRegionUpdate(final int nUpdates, final int freqMsecs, final AndroidStageTextImpl stageText, final AIRWindowSurfaceView airSurface) {
                super();
                this.m_nUpdates = nUpdates;
                this.m_freqMsecs = freqMsecs;
                this.m_stageText = stageText;
                this.m_AIRSurface = airSurface;
            }
            
            @Override
            public void run() {
                if (this.m_stageText != null && this.m_AIRSurface != null) {
                    this.m_stageText.requestTransparentRegion((View)this.m_AIRSurface);
                }
                if (--this.m_nUpdates > 0) {
                    this.m_stageText.postDelayed((Runnable)this, (long)this.m_freqMsecs);
                }
            }
        }
    }
    
    public class AndroidStageTextImpl extends ScrollView
    {
        public AndroidStageTextImpl(final Context context) {
            super(context);
        }
        
        public AndroidStageTextImpl(final Context context, final AttributeSet set) {
            super(context, set);
        }
        
        public AndroidStageTextImpl(final Context context, final AttributeSet set, final int n) {
            super(context, set, n);
        }
        
        protected void onDraw(final Canvas canvas) {
            if (AndroidStageText.this.mClipBounds != null) {
                canvas.save();
                final int n = -AndroidStageText.this.mViewBounds.left;
                final int n2 = -AndroidStageText.this.mViewBounds.top;
                canvas.clipRect(new Rect(n + AndroidStageText.this.mClipBounds.left, n2 + AndroidStageText.this.mClipBounds.top, n + AndroidStageText.this.mClipBounds.right, n2 + AndroidStageText.this.mClipBounds.bottom));
                super.onDraw(canvas);
                canvas.restore();
                return;
            }
            super.onDraw(canvas);
        }
        
        protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
            final AndroidStageText this$0 = AndroidStageText.this;
            super.onLayout(b, n, n2, n3, n4);
            if (this$0.mNotifyLayoutComplete) {
                this$0.mNotifyLayoutComplete = false;
                this$0.dispatchCompleteEvent(this$0.mInternalReference);
            }
        }
        
        protected void onSizeChanged(final int n, final int n2, final int n3, final int n4) {
            super.onSizeChanged(n, n2, n3, n4);
        }
    }
    
    public class BackgroundBorderDrawable extends ShapeDrawable
    {
        public int mBkgColor;
        public Paint mBkgPaint;
        public int mBorderColor;
        public boolean mHaveBkg;
        public boolean mHaveBorder;
        
        public BackgroundBorderDrawable() {
            super();
            this.mHaveBorder = false;
            this.mHaveBkg = false;
            this.mBkgColor = -1;
            this.mBorderColor = -16777216;
            this.init();
        }
        
        public BackgroundBorderDrawable(final Shape shape) {
            super(shape);
            this.mHaveBorder = false;
            this.mHaveBkg = false;
            this.mBkgColor = -1;
            this.mBorderColor = -16777216;
            this.init();
        }
        
        private void init() {
            (this.mBkgPaint = new Paint(this.getPaint())).setStyle(Paint$Style.FILL);
            this.mBkgPaint.setColor(this.mBkgColor);
            this.getPaint().setStyle(Paint$Style.STROKE);
            this.getPaint().setStrokeWidth(3.0f);
            this.getPaint().setColor(this.mBorderColor);
        }
        
        protected void onDraw(final Shape shape, final Canvas canvas, final Paint paint) {
            if (this.mHaveBkg) {
                canvas.drawRect(this.getBounds(), this.mBkgPaint);
            }
            if (this.mHaveBorder) {
                super.onDraw(shape, canvas, paint);
            }
        }
        
        public void setBkgColor(final int n) {
            this.mBkgColor = n;
            this.mBkgPaint.setColor(n);
        }
        
        public void setBorderColor(final int n) {
            this.mBorderColor = n;
            this.getPaint().setColor(n);
        }
    }
    
    private class RestrictFilter implements InputFilter
    {
        private static final int kMapSize = 8192;
        private String mPattern;
        private byte[] m_map;
        
        public RestrictFilter(final String s) {
            super();
            this.mPattern = null;
            this.m_map = null;
            this.mPattern = s;
            if (s != null && !"".equals(s)) {
                this.m_map = new byte[8192];
                this.SetAll(false);
                if (s.charAt(0) == '^') {
                    this.SetAll(true);
                }
                int i = 0;
                char c = '\0';
                boolean b = true;
                int n = 0;
                int n2 = 0;
                while (i < s.length()) {
                    final char char1 = s.charAt(i);
                    int n3 = 0;
                    int n4 = 0;
                    boolean b2 = false;
                    int n5 = 0;
                    if (n2 == 0) {
                        switch (char1) {
                            default: {
                                n3 = n2;
                                n4 = n;
                                b2 = b;
                                n5 = 1;
                                break;
                            }
                            case 45: {
                                b2 = b;
                                n3 = n2;
                                n4 = 1;
                                n5 = 0;
                                break;
                            }
                            case 94: {
                                final boolean b3 = !b;
                                n3 = n2;
                                n4 = n;
                                b2 = b3;
                                n5 = 0;
                                break;
                            }
                            case 92: {
                                n4 = n;
                                n3 = 1;
                                b2 = b;
                                n5 = 0;
                                break;
                            }
                        }
                    }
                    else {
                        n4 = n;
                        b2 = b;
                        n5 = 1;
                        n3 = 0;
                    }
                    int n6;
                    if (n5 != 0) {
                        if (n4 != 0) {
                            while (c <= char1) {
                                this.SetCode(c, b2);
                                ++c;
                            }
                            c = '\0';
                            n6 = 0;
                        }
                        else {
                            this.SetCode(char1, b2);
                            c = char1;
                            n6 = n4;
                        }
                    }
                    else {
                        n6 = n4;
                    }
                    ++i;
                    n2 = n3;
                    final int n7 = n6;
                    b = b2;
                    n = n7;
                }
            }
        }
        
        boolean IsCharAvailable(final char c) {
            if (this.mPattern == null) {
                return this.m_map != null && (this.m_map[c >> 3] & 1 << (c & '\u0007')) != 0x0;
            }
            return this.m_map != null && (this.m_map[c >> 3] & 1 << (c & '\u0007')) != 0x0;
        }
        
        boolean IsEmpty() {
            return this.mPattern != null;
        }
        
        void SetAll(final boolean b) {
            int i = 0;
            int n;
            if (b) {
                n = 255;
            }
            else {
                n = 0;
            }
            final byte b2 = (byte)n;
            while (i < 8192) {
                this.m_map[i] = b2;
                ++i;
            }
        }
        
        void SetCode(final char c, final boolean b) {
            if (b) {
                final byte[] map = this.m_map;
                final char c2 = (char)(c >> 3);
                map[c2] |= (byte)(1 << (c & '\u0007'));
                return;
            }
            final byte[] map2 = this.m_map;
            final char c3 = (char)(c >> 3);
            map2[c3] &= (byte)(-1 ^ 1 << (c & '\u0007'));
        }
        
        public CharSequence filter(final CharSequence charSequence, final int n, final int n2, final Spanned spanned, final int n3, final int n4) {
            if (this.mPattern == null) {
                return null;
            }
            if (this.m_map == null) {
                return "";
            }
            final StringBuffer sb = new StringBuffer(n2 - n);
            for (int i = n; i < n2; ++i) {
                final char char1 = charSequence.charAt(i);
                char c;
                int n5;
                if (!this.IsCharAvailable(char1)) {
                    if (char1 >= 'A' && char1 <= 'Z') {
                        c = (char)(char1 + ' ');
                        n5 = (this.IsCharAvailable(c) ? 1 : 0);
                    }
                    else if (char1 >= 'a' && char1 <= 'z') {
                        c = (char)(char1 - ' ');
                        n5 = (this.IsCharAvailable(c) ? 1 : 0);
                    }
                    else {
                        c = char1;
                        n5 = 0;
                    }
                }
                else {
                    n5 = 1;
                    c = char1;
                }
                if (n5 != 0) {
                    sb.append(c);
                }
            }
            return sb.toString();
        }
    }
}
