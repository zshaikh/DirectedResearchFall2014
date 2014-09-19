package com.adobe.air;

import com.adobe.air.gestures.*;
import com.adobe.flashruntime.shared.*;
import android.provider.*;
import android.graphics.*;
import com.adobe.flashruntime.air.*;
import android.text.*;
import android.view.inputmethod.*;
import com.adobe.air.utils.*;
import android.app.*;
import android.widget.*;
import android.text.util.*;
import android.content.*;
import android.os.*;
import android.view.*;

public class AIRWindowSurfaceView extends SurfaceView implements SurfaceHolder$Callback
{
    static final int CURSOR_POS_END_DOCUMENT = 3;
    static final int CURSOR_POS_END_LINE = 1;
    static final int CURSOR_POS_START_DOCUMENT = 2;
    static final int CURSOR_POS_START_LINE = 0;
    static final int ID_COPY = 3;
    static final int ID_COPY_ALL = 4;
    static final int ID_CUT = 1;
    static final int ID_CUT_ALL = 2;
    static final int ID_PASTE = 5;
    static final int ID_SELECT_ALL = 0;
    static final int ID_START_SELECTING = 7;
    static final int ID_STOP_SELECTING = 8;
    static final int ID_SWITCH_INPUT_METHOD = 6;
    private static final String LOG_TAG = "AIRWindowSurfaceView";
    static final int LONG_PRESS_DELAY = 500;
    static final int MAX_MOVE_ACTION_ALLOWED = 4;
    static final int POST_TOUCH_MESSAGE_AFTER_DELAY = 0;
    private static final int kDefaultBitsPerPixel = 32;
    private static final int kMotionEventButtonSecondary = 2;
    private static final int kMotionEventToolTypeEraser = 4;
    private static final int kMotionEventToolTypeStylus = 2;
    private static final int kTouchActionBegin = 2;
    private static final int kTouchActionEnd = 4;
    private static final int kTouchActionHoverBegin = 16;
    private static final int kTouchActionHoverEnd = 32;
    private static final int kTouchActionHoverMove = 8;
    private static final int kTouchActionMove = 1;
    private static final int kTouchMetaStateIsEraser = 67108864;
    private static final int kTouchMetaStateIsPen = 33554432;
    private static final int kTouchMetaStateMask = 234881024;
    private static final int kTouchMetaStateSideButton1 = 134217728;
    private boolean inTouch;
    public final int kMultitouchGesture;
    public final int kMultitouchNone;
    public final int kMultitouchRaw;
    private final float kSampleSize;
    private AndroidActivityWrapper mActivityWrapper;
    private int mBoundHeight;
    private int mBoundWidth;
    private boolean mContextMenuVisible;
    private int mCurrentOrientation;
    private int mCurrentSurfaceFormat;
    private boolean mDispatchUserTriggeredSkDeactivate;
    private float mDownX;
    private float mDownY;
    private boolean mEatTouchRelease;
    protected FlashEGL mFlashEGL;
    private AndroidStageText mFocusedStageText;
    private AndroidWebView mFocusedWebView;
    private GestureDetector mGestureDetector;
    private AIRGestureListener mGestureListener;
    private boolean mHideSoftKeyboardOnWindowFocusChange;
    private boolean mHoverInProgress;
    private int mHoverMetaState;
    private HoverTimeoutHandler mHoverTimeoutHandler;
    private int mHt;
    private AndroidInputConnection mInputConnection;
    InputMethodReceiver mInputMethodReceiver;
    private boolean mIsFullScreen;
    private float mLastTouchedXCoord;
    private float mLastTouchedYCoord;
    private CheckLongPress mLongPressCheck;
    private boolean mMaliWorkaround;
    private MetaKeyState mMetaAltState;
    private MetaKeyState mMetaShiftState;
    private int mMultitouchMode;
    private boolean mNeedsCompositingSurface;
    private Paint mPaint;
    private Paint mPaintScaled;
    private AndroidStageText mResizedStageText;
    private AndroidWebView mResizedWebView;
    private ScaleGestureDetector mScaleGestureDetector;
    private int mScaledTouchSlop;
    private int mSkipHeightFromTop;
    private boolean mSurfaceChangedForSoftKeyboard;
    protected SurfaceHolder mSurfaceHolder;
    private boolean mSurfaceValid;
    private Rect mTextBoxBounds;
    private boolean mTrackBallPressed;
    private VideoView mVideoView;
    private int mVisibleBoundHeight;
    private int mVisibleBoundWidth;
    private int mWd;
    private boolean mWindowHasFocus;
    
    public AIRWindowSurfaceView(final Context context, final AndroidActivityWrapper mActivityWrapper) {
        super(context);
        this.kMultitouchNone = 0;
        this.kMultitouchRaw = 1;
        this.kMultitouchGesture = 2;
        this.kSampleSize = 4.0f;
        this.mWd = 0;
        this.mHt = 0;
        this.mSurfaceValid = false;
        this.mSkipHeightFromTop = 0;
        this.mSurfaceHolder = null;
        this.mFlashEGL = null;
        this.mBoundHeight = 0;
        this.mBoundWidth = 0;
        this.mVisibleBoundWidth = 0;
        this.mVisibleBoundHeight = 0;
        this.mMultitouchMode = 0;
        this.mPaint = null;
        this.mPaintScaled = null;
        this.mMaliWorkaround = false;
        this.mHoverInProgress = false;
        this.mHoverMetaState = 0;
        this.mCurrentOrientation = 0;
        this.mEatTouchRelease = false;
        this.mContextMenuVisible = false;
        this.mLongPressCheck = null;
        this.mIsFullScreen = false;
        this.mSurfaceChangedForSoftKeyboard = false;
        this.mDispatchUserTriggeredSkDeactivate = true;
        this.mHideSoftKeyboardOnWindowFocusChange = false;
        this.mTrackBallPressed = false;
        this.mWindowHasFocus = true;
        this.mNeedsCompositingSurface = false;
        this.mCurrentSurfaceFormat = -1;
        this.mFocusedWebView = null;
        this.mResizedWebView = null;
        this.mFocusedStageText = null;
        this.mResizedStageText = null;
        this.inTouch = false;
        this.mMetaShiftState = MetaKeyState.INACTIVE;
        this.mMetaAltState = MetaKeyState.INACTIVE;
        this.mHoverTimeoutHandler = new HoverTimeoutHandler(this);
        this.mInputMethodReceiver = new InputMethodReceiver();
        this.mSurfaceHolder = this.getHolder();
        this.mActivityWrapper = mActivityWrapper;
        this.setSurfaceFormat(false);
        this.mGestureListener = new AIRGestureListener(context, this);
        this.mGestureDetector = new GestureDetector(context, (GestureDetector$OnGestureListener)this.mGestureListener, (Handler)null, false);
        this.mScaleGestureDetector = new ScaleGestureDetector(context, (ScaleGestureDetector$OnScaleGestureListener)this.mGestureListener);
        this.setWillNotDraw(false);
        this.setClickable(true);
        this.setEnabled(true);
        this.setFocusable(true);
        this.setFocusableInTouchMode(true);
        this.mScaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.mSurfaceHolder.addCallback((SurfaceHolder$Callback)this);
        this.setZOrderMediaOverlay(true);
        this.mActivityWrapper.registerPlane(this, 3);
    }
    
    private boolean AllowOSToHandleKeys(final int n) {
        switch (n) {
            default: {
                return false;
            }
            case 24:
            case 25:
            case 26: {
                return true;
            }
        }
    }
    
    private void DoSetOnSystemUiVisibilityChangeListener() {
        this.setOnSystemUiVisibilityChangeListener((View$OnSystemUiVisibilityChangeListener)new View$OnSystemUiVisibilityChangeListener() {
            public void onSystemUiVisibilityChange(final int n) {
                AIRWindowSurfaceView.this.setOnSystemUiVisibilityChangeListener((View$OnSystemUiVisibilityChangeListener)null);
                if (AIRWindowSurfaceView.this.getIsFullScreen()) {
                    AIRWindowSurfaceView.this.nativeDispatchFullScreenEvent(true);
                    return;
                }
                AIRWindowSurfaceView.this.nativeDispatchFullScreenEvent(false);
            }
        });
    }
    
    private MetaKeyState GetMetaKeyState(final MetaKeyState metaKeyState, final boolean b, final boolean b2) {
        if (b2) {
            switch (metaKeyState) {
                default: {
                    return MetaKeyState.INACTIVE;
                }
                case INACTIVE:
                case PRESSED: {
                    if (b) {
                        return MetaKeyState.PRESSED;
                    }
                    return MetaKeyState.INACTIVE;
                }
                case ACTIVE: {
                    if (b) {
                        return MetaKeyState.PRESSED;
                    }
                    return MetaKeyState.INACTIVE;
                }
                case LOCKED: {
                    return MetaKeyState.LOCKED;
                }
            }
        }
        else {
            if (!b) {
                return MetaKeyState.INACTIVE;
            }
            switch (metaKeyState) {
                default: {
                    return MetaKeyState.INACTIVE;
                }
                case INACTIVE:
                case PRESSED: {
                    return MetaKeyState.ACTIVE;
                }
                case ACTIVE: {
                    return MetaKeyState.LOCKED;
                }
            }
        }
    }
    
    private void HandleMetaKeyAction(final KeyEvent keyEvent) {
        switch (keyEvent.getKeyCode()) {
            default: {
                this.mMetaShiftState = this.GetMetaKeyState(this.mMetaShiftState, keyEvent.isShiftPressed(), true);
                this.mMetaAltState = this.GetMetaKeyState(this.mMetaAltState, keyEvent.isAltPressed(), true);
                break;
            }
            case 59:
            case 60: {
                if (keyEvent.getRepeatCount() == 0) {
                    this.mMetaShiftState = this.GetMetaKeyState(this.mMetaShiftState, keyEvent.isShiftPressed(), false);
                    return;
                }
                break;
            }
            case 57:
            case 58: {
                if (keyEvent.getRepeatCount() == 0) {
                    this.mMetaAltState = this.GetMetaKeyState(this.mMetaAltState, keyEvent.isAltPressed(), false);
                    return;
                }
                break;
            }
        }
    }
    
    private boolean HandleShortCuts(final int n, final KeyEvent keyEvent) {
        if (n == 23) {
            if (!this.mTrackBallPressed && !this.mContextMenuVisible) {
                this.mTrackBallPressed = true;
                this.postCheckLongPress();
                return false;
            }
            return true;
        }
        else {
            if (!keyEvent.isAltPressed()) {
                return false;
            }
            switch (n) {
                default: {
                    return false;
                }
                case 67: {
                    this.nativeDeleteTextLine();
                    return true;
                }
                case 21: {
                    this.nativeMoveCursor(0);
                    return true;
                }
                case 22: {
                    this.nativeMoveCursor(1);
                    return true;
                }
                case 19: {
                    this.nativeMoveCursor(2);
                    return true;
                }
                case 20: {
                    this.nativeMoveCursor(3);
                    return true;
                }
            }
        }
    }
    
    private boolean IsIMEInFullScreen() {
        return this.getInputMethodManager().isFullscreenMode();
    }
    
    private boolean IsPointInTextBox(final float n, final float n2, final int n3) {
        if (n3 == 2) {
            this.mTextBoxBounds = this.nativeGetTextBoxBounds();
        }
        final boolean b = this.mTextBoxBounds != null && (int)n > this.mTextBoxBounds.left && (int)n < this.mTextBoxBounds.right && (int)n2 > this.mTextBoxBounds.top && (int)n2 < this.mTextBoxBounds.bottom;
        if (n3 == 4) {
            this.mTextBoxBounds = null;
        }
        return b;
    }
    
    private boolean IsTouchEventHandlingAllowed(final int n, final float mDownX, final float mDownY) {
        final boolean isPointInTextBox = this.IsPointInTextBox(mDownX, mDownY, n);
        if (n == 2) {
            this.mDownX = mDownX;
            this.mDownY = mDownY;
            this.mEatTouchRelease = false;
            if (isPointInTextBox) {
                this.postCheckLongPress();
                return true;
            }
        }
        else if (n == 1) {
            if (isPointInTextBox) {
                if (!this.IsTouchMove(mDownX, mDownY)) {
                    return false;
                }
                if (this.mLongPressCheck != null) {
                    this.removeCallbacks((Runnable)this.mLongPressCheck);
                    return true;
                }
            }
        }
        else if (n == 4 && this.mLongPressCheck != null) {
            this.removeCallbacks((Runnable)this.mLongPressCheck);
        }
        return true;
    }
    
    private boolean IsTouchMove(final float n, final float n2) {
        final float n3 = this.mDownX - n;
        final float n4 = this.mDownY - n2;
        return (float)Math.sqrt(n3 * n3 + n4 * n4) >= this.mScaledTouchSlop;
    }
    
    private boolean hasStatusBar(final Window window) {
        final Rect rect = new Rect();
        window.getDecorView().getWindowVisibleDisplayFrame(rect);
        return rect.top > 0;
    }
    
    private native void nativeCutText(final boolean p0);
    
    private native void nativeDeleteTextLine();
    
    private native void nativeDispatchFullScreenEvent(final boolean p0);
    
    private native void nativeDispatchSelectionChangeEvent(final boolean p0);
    
    private native void nativeForceReDraw();
    
    private native int nativeGetMultitouchMode();
    
    private native String nativeGetSelectedText();
    
    private native Rect nativeGetTextBoxBounds();
    
    private native void nativeInsertText(final String p0);
    
    private native boolean nativeIsEditable();
    
    private native boolean nativeIsFullScreenInteractive();
    
    private native boolean nativeIsMultiLineTextField();
    
    private native boolean nativeIsPasswordField();
    
    private native boolean nativeIsTextFieldInSelectionMode();
    
    private native boolean nativeIsTextFieldSelectable();
    
    private native void nativeMoveCursor(final int p0);
    
    private native void nativeOnFormatChangeListener(final int p0);
    
    private native void nativeOnSizeChangedListener(final int p0, final int p1, final boolean p2);
    
    private native boolean nativePerformWindowPanning(final int p0, final int p1);
    
    private native void nativeSelectAllText();
    
    private native void nativeSetKeyboardVisible(final boolean p0);
    
    private native void nativeSurfaceCreated();
    
    private void postCheckLongPress() {
        if (this.mLongPressCheck == null) {
            this.mLongPressCheck = new CheckLongPress();
        }
        this.postDelayed((Runnable)this.mLongPressCheck, 500L);
    }
    
    private void setSurfaceFormatImpl(final boolean b, final int n) {
        if (b) {
            this.post((Runnable)new Runnable() {
                @Override
                public void run() {
                    AIRWindowSurfaceView.this.mSurfaceHolder.setFormat(n);
                    AIRWindowSurfaceView.this.mCurrentSurfaceFormat = n;
                }
            });
            return;
        }
        this.mSurfaceHolder.setFormat(n);
        this.mCurrentSurfaceFormat = n;
    }
    
    private static boolean supportsSystemUiFlags() {
        return Build$VERSION.SDK_INT >= 14;
    }
    
    private static boolean supportsSystemUiVisibilityAPI() {
        return Build$VERSION.SDK_INT >= 11;
    }
    
    public void DispatchSoftKeyboardEventOnBackKey() {
        if ((this.mIsFullScreen && !this.mSurfaceChangedForSoftKeyboard) || this.mFlashEGL != null || this.IsIMEInFullScreen() || (!this.mSurfaceChangedForSoftKeyboard && !this.nativeIsEditable())) {
            this.nativeDispatchUserTriggeredSkDeactivateEvent();
            if (!this.mSurfaceChangedForSoftKeyboard && !this.nativeIsEditable()) {
                this.nativeShowOriginalRect();
            }
        }
    }
    
    int GetMetaKeyCharacter(final KeyEvent keyEvent) {
        int n = 0;
        Label_0032: {
            if (this.mMetaShiftState != MetaKeyState.LOCKED) {
                final MetaKeyState mMetaShiftState = this.mMetaShiftState;
                final MetaKeyState active = MetaKeyState.ACTIVE;
                n = 0;
                if (mMetaShiftState != active) {
                    break Label_0032;
                }
            }
            n = (0x0 | 0x1);
        }
        if (this.mMetaAltState == MetaKeyState.LOCKED || this.mMetaAltState == MetaKeyState.ACTIVE) {
            n |= 0x2;
        }
        return keyEvent.getUnicodeChar(n);
    }
    
    public void HideSoftKeyboardOnWindowFocusChange() {
        this.mHideSoftKeyboardOnWindowFocusChange = true;
    }
    
    public boolean IsLandScape() {
        return this.mCurrentOrientation == 2;
    }
    
    public boolean IsPasswordVisibleSettingEnabled() {
        try {
            return Settings$System.getInt(this.getContext().getContentResolver(), "show_password") == 1;
        }
        catch (Exception ex) {
            return false;
        }
    }
    
    public boolean IsSurfaceChangedForSoftKeyboard() {
        return this.mSurfaceChangedForSoftKeyboard;
    }
    
    public boolean IsTouchUpHandlingAllowed() {
        return !this.mEatTouchRelease;
    }
    
    public void RestartInput() {
        this.mMetaShiftState = MetaKeyState.INACTIVE;
        this.mMetaAltState = MetaKeyState.INACTIVE;
        final InputMethodManager inputMethodManager = this.getInputMethodManager();
        if (inputMethodManager != null) {
            inputMethodManager.restartInput((View)this);
        }
        if (this.mInputConnection != null) {
            this.mInputConnection.Reset();
        }
    }
    
    public void SetSelectionMode(final boolean b) {
        this.nativeDispatchSelectionChangeEvent(b);
    }
    
    public void SetSurfaceChangedForSoftKeyboard(final boolean mSurfaceChangedForSoftKeyboard) {
        this.mSurfaceChangedForSoftKeyboard = mSurfaceChangedForSoftKeyboard;
    }
    
    public void clearFullScreen() {
        this.mIsFullScreen = false;
        this.mActivityWrapper.setIsFullScreen(this.mIsFullScreen);
        if (supportsSystemUiVisibilityAPI()) {
            if (supportsSystemUiFlags()) {}
            this.DoSetOnSystemUiVisibilityChangeListener();
            ((View)this).setSystemUiVisibility(0);
        }
        final Activity activity = this.mActivityWrapper.getActivity();
        if (activity != null) {
            activity.getWindow().clearFlags(1024);
        }
        this.mActivityWrapper.planeBreakCascade();
    }
    
    protected void draw(final int n, final int n2, final int n3, final int n4, final Bitmap bitmap) {
        if (this.mSurfaceValid) {
            final Rect rect = new Rect(n, n2, n + n3, n2 + n4);
            final int mSkipHeightFromTop = this.mSkipHeightFromTop;
            Label_0304: {
                if (mSkipHeightFromTop == 0) {
                    break Label_0304;
                }
                final Rect rect2 = new Rect(0, mSkipHeightFromTop, this.mWd, this.mHt);
                if (!Rect.intersects(rect, rect2)) {
                    return;
                }
                final Rect rect3 = new Rect(rect);
                rect3.intersect(rect2);
                rect3.top -= mSkipHeightFromTop;
                rect3.bottom -= mSkipHeightFromTop;
                if (this.mIsFullScreen) {
                    rect3.union(new Rect(0, rect3.bottom, this.mWd, this.mHt));
                }
                Canvas lockCanvas = this.mSurfaceHolder.lockCanvas(rect3);
                if (!this.mIsFullScreen && rect3.bottom > this.mHt - mSkipHeightFromTop) {
                    rect3.bottom = this.mHt - mSkipHeightFromTop;
                }
                Rect rect4 = rect3;
                while (true) {
                    try {
                        while (true) {
                            synchronized (this.mSurfaceHolder) {
                                lockCanvas.clipRect(rect4);
                                if (mSkipHeightFromTop != 0 && this.mIsFullScreen) {
                                    lockCanvas.drawColor(-16777216);
                                }
                                if (this.mMaliWorkaround) {
                                    this.mPaint = null;
                                    lockCanvas.drawColor(0, PorterDuff$Mode.CLEAR);
                                }
                                else if (this.mPaint == null && this.mCurrentSurfaceFormat != 4) {
                                    (this.mPaint = new Paint()).setXfermode((Xfermode)new PorterDuffXfermode(PorterDuff$Mode.SRC));
                                    this.mPaint.setFilterBitmap(false);
                                }
                                lockCanvas.drawBitmap(bitmap, 0.0f, (float)(-mSkipHeightFromTop), this.mPaint);
                                // monitorexit(this.mSurfaceHolder)
                                if (lockCanvas != null) {
                                    this.mSurfaceHolder.unlockCanvasAndPost(lockCanvas);
                                }
                                if (this.mInputConnection != null) {
                                    this.mInputConnection.updateIMEText();
                                    return;
                                }
                                break;
                                final Canvas lockCanvas2 = this.mSurfaceHolder.lockCanvas(rect);
                                rect4 = rect;
                                lockCanvas = lockCanvas2;
                            }
                        }
                    }
                    catch (Exception ex) {
                        continue;
                    }
                    finally {
                        if (lockCanvas != null) {
                            this.mSurfaceHolder.unlockCanvasAndPost(lockCanvas);
                        }
                    }
                    break;
                }
            }
        }
    }
    
    public void drawBitmap(final int n, final int n2, final int n3, final int n4, final Bitmap bitmap) {
        this.draw(n, n2, n3, n4, bitmap);
    }
    
    public void drawBitmap(final int n, final int n2, final int n3, final int n4, final Bitmap bitmap, final int n5, final int n6, final int n7, final int n8, final boolean b, final int n9) {
        this.drawScaled(n, n2, n3, n4, bitmap, n5, n6, n7, n8, b, n9);
    }
    
    protected void drawScaled(final int n, final int n2, final int n3, final int n4, final Bitmap bitmap, final int n5, final int n6, final int n7, final int n8, final boolean b, final int n9) {
        if (this.mSurfaceValid) {
            Canvas canvas;
            Rect rect = null;
            Rect rect2 = null;
            int mSkipHeightFromTop;
            int mSkipHeightFromTop2 = 0;
            Rect rect3 = null;
            Rect rect4 = null;
            Rect rect5;
            Throwable t = null;
            Canvas canvas2 = null;
            Rect rect6;
            Canvas lockCanvas;
            SurfaceHolder mSurfaceHolder;
            Rect rect7;
            final Throwable t2;
            final Throwable t3;
            Rect rect8;
            Label_0251_Outer:Label_0300_Outer:
            while (true) {
                canvas = null;
                while (true) {
                    Label_0549: {
                        Label_0534: {
                            while (true) {
                                Label_0527: {
                                    while (true) {
                                        try {
                                            // iftrue(Label_0512:, canvas2 == null)
                                            Block_8: {
                                                while (true) {
                                                    Label_0197: {
                                                        try {
                                                            rect = new Rect(n5, n6, n5 + n7, n6 + n8);
                                                            canvas = null;
                                                            if (b) {
                                                                rect2 = new Rect(0, 0, this.mWd, this.mHt);
                                                            }
                                                            else {
                                                                rect2 = new Rect(n5, n6, n5 + n7, n6 + n8);
                                                            }
                                                            mSkipHeightFromTop = this.mSkipHeightFromTop;
                                                            canvas = null;
                                                            if (mSkipHeightFromTop == 0) {
                                                                break Label_0534;
                                                            }
                                                            mSkipHeightFromTop2 = this.mSkipHeightFromTop;
                                                            rect3 = new Rect(0, mSkipHeightFromTop2, this.mWd, this.mHt);
                                                            if (Rect.intersects(rect, rect3)) {
                                                                break Label_0197;
                                                            }
                                                            if (0 != 0) {
                                                                this.mSurfaceHolder.unlockCanvasAndPost((Canvas)null);
                                                                return;
                                                            }
                                                            break;
                                                        }
                                                        catch (Exception ex) {
                                                            if (canvas != null) {
                                                                this.mSurfaceHolder.unlockCanvasAndPost(canvas);
                                                            }
                                                        }
                                                        if (this.mInputConnection != null) {
                                                            this.mInputConnection.updateIMEText();
                                                            return;
                                                        }
                                                        break;
                                                    }
                                                    rect4 = new Rect(rect);
                                                    rect4.intersect(rect3);
                                                    rect4.top -= mSkipHeightFromTop2;
                                                    rect4.bottom -= mSkipHeightFromTop2;
                                                    if (b) {
                                                        break Label_0527;
                                                    }
                                                    rect5 = rect4;
                                                    if (!b && rect4.bottom > this.mHt - mSkipHeightFromTop2) {
                                                        rect4.bottom = this.mHt - mSkipHeightFromTop2;
                                                    }
                                                    break Label_0549;
                                                    Label_0512: {
                                                        throw t;
                                                    }
                                                    break Block_8;
                                                    rect6 = new Rect(n, n2, n + n3, n2 + n4);
                                                    lockCanvas = this.mSurfaceHolder.lockCanvas(rect5);
                                                    try {
                                                        mSurfaceHolder = this.mSurfaceHolder;
                                                        // monitorenter(mSurfaceHolder)
                                                        Label_0369: {
                                                            if (!b) {
                                                                break Label_0369;
                                                            }
                                                            try {
                                                                lockCanvas.drawRGB(Color.red(n9), Color.green(n9), Color.blue(n9));
                                                                if (this.mMaliWorkaround) {
                                                                    this.mPaint = null;
                                                                    lockCanvas.drawColor(0, PorterDuff$Mode.CLEAR);
                                                                }
                                                                else if (this.mPaintScaled == null && this.mCurrentSurfaceFormat != 4) {
                                                                    (this.mPaintScaled = new Paint()).setXfermode((Xfermode)new PorterDuffXfermode(PorterDuff$Mode.SRC));
                                                                }
                                                                lockCanvas.drawBitmap(bitmap, rect6, rect7, this.mPaintScaled);
                                                                // monitorexit(mSurfaceHolder)
                                                                if (lockCanvas != null) {
                                                                    this.mSurfaceHolder.unlockCanvasAndPost(lockCanvas);
                                                                }
                                                                continue Label_0251_Outer;
                                                            }
                                                            finally {
                                                            }
                                                            // monitorexit(mSurfaceHolder)
                                                        }
                                                    }
                                                    finally {
                                                        canvas2 = lockCanvas;
                                                        t = t2;
                                                    }
                                                    break;
                                                }
                                                continue Label_0300_Outer;
                                            }
                                            this.mSurfaceHolder.unlockCanvasAndPost(canvas2);
                                            throw t;
                                        }
                                        finally {
                                            t = t3;
                                            canvas2 = null;
                                            continue Label_0300_Outer;
                                        }
                                        break;
                                    }
                                }
                                rect5 = rect2;
                                continue Label_0300_Outer;
                            }
                        }
                        rect8 = rect2;
                        rect7 = rect;
                        rect5 = rect8;
                        continue;
                    }
                    rect7 = rect4;
                    continue;
                }
            }
        }
    }
    
    public void forceSoftKeyboardDown() {
        this.nativeShowOriginalRect();
        this.setScrollTo(0);
        if (this.mDispatchUserTriggeredSkDeactivate && this.mSurfaceChangedForSoftKeyboard) {
            this.nativeDispatchUserTriggeredSkDeactivateEvent();
        }
        this.nativeSetKeyboardVisible(false);
        this.mDispatchUserTriggeredSkDeactivate = true;
        this.mSurfaceChangedForSoftKeyboard = false;
    }
    
    public boolean gatherTransparentRegion(final Region region) {
        final int[] array = new int[2];
        this.getLocationInWindow(array);
        region.op(array[0], array[1], this.mVisibleBoundWidth, this.mVisibleBoundHeight, Region$Op.REPLACE);
        return false;
    }
    
    public AndroidActivityWrapper getActivityWrapper() {
        return this.mActivityWrapper;
    }
    
    public int getAppSpecifiedPixelFormat() {
        if (this.mActivityWrapper.useRGB565()) {
            return 16;
        }
        return 32;
    }
    
    public int getBoundHeight() {
        return this.mBoundHeight;
    }
    
    public int getBoundWidth() {
        return this.mBoundWidth;
    }
    
    public int getColorDepth() {
        int n;
        if (this.mCurrentSurfaceFormat == 4) {
            n = 16;
        }
        else {
            n = 32;
            final Activity activity = this.mActivityWrapper.getActivity();
            if (activity != null) {
                final Display defaultDisplay = ((WindowManager)activity.getSystemService("window")).getDefaultDisplay();
                final PixelFormat pixelFormat = new PixelFormat();
                PixelFormat.getPixelFormatInfo(defaultDisplay.getPixelFormat(), pixelFormat);
                return pixelFormat.bitsPerPixel;
            }
        }
        return n;
    }
    
    public InputMethodManager getInputMethodManager() {
        return (InputMethodManager)this.getContext().getSystemService("input_method");
    }
    
    public boolean getIsFullScreen() {
        return this.mIsFullScreen;
    }
    
    public int getKeyboardHeight() {
        return this.mHt - this.getVisibleBoundHeight();
    }
    
    public int getMultitouchMode() {
        return this.mMultitouchMode;
    }
    
    public VideoView getVideoView() {
        if (this.mVideoView == null) {
            this.mVideoView = new VideoViewAIR(this.getContext(), this.mActivityWrapper);
        }
        return this.mVideoView;
    }
    
    public int getVisibleBoundHeight() {
        return this.mVisibleBoundHeight;
    }
    
    public int getVisibleBoundWidth() {
        return this.mVisibleBoundWidth;
    }
    
    public boolean isStageTextInFocus() {
        return this.mFocusedStageText != null;
    }
    
    public boolean isStageWebViewInFocus() {
        return this.mFocusedWebView != null && this.mFocusedWebView.isInTextEditingMode();
    }
    
    public boolean isSurfaceValid() {
        return this.mSurfaceValid;
    }
    
    public native void nativeDispatchUserTriggeredSkDeactivateEvent();
    
    public native ExtractedText nativeGetTextContent();
    
    public native int nativeGetTextContentLength();
    
    public native boolean nativeIsTextSelected();
    
    public native boolean nativeOnDoubleClickListener(final float p0, final float p1);
    
    public native boolean nativeOnKeyListener(final int p0, final int p1, final int p2, final boolean p3, final boolean p4, final boolean p5);
    
    public native void nativeShowOriginalRect();
    
    public boolean onCheckIsTextEditor() {
        return true;
    }
    
    protected void onCreateContextMenu(final ContextMenu contextMenu) {
        super.onCreateContextMenu(contextMenu);
        if (!this.mIsFullScreen || this.nativeIsFullScreenInteractive()) {
            final ClipboardManager clipboardManager = (ClipboardManager)this.getContext().getSystemService("clipboard");
            final MenuHandler onMenuItemClickListener = new MenuHandler();
            final boolean nativeIsEditable = this.nativeIsEditable();
            final boolean nativeIsTextFieldSelectable = this.nativeIsTextFieldSelectable();
            if (nativeIsTextFieldSelectable || nativeIsEditable) {
                if (nativeIsTextFieldSelectable) {
                    boolean b;
                    if (this.nativeGetTextContentLength() > 0) {
                        b = true;
                    }
                    else {
                        b = false;
                    }
                    if (b) {
                        contextMenu.add(0, 0, 0, (CharSequence)AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_SELECT_ALL)).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)onMenuItemClickListener).setAlphabeticShortcut('a');
                        if (this.nativeIsTextFieldInSelectionMode()) {
                            contextMenu.add(0, 8, 0, (CharSequence)AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_STOP_SELECTING_TEXT)).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)onMenuItemClickListener);
                        }
                        else {
                            contextMenu.add(0, 7, 0, (CharSequence)AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_SELECT_TEXT)).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)onMenuItemClickListener);
                        }
                    }
                    if (!this.nativeIsPasswordField() && b) {
                        final boolean nativeIsTextSelected = this.nativeIsTextSelected();
                        if (nativeIsEditable) {
                            if (nativeIsTextSelected) {
                                contextMenu.add(0, 1, 0, (CharSequence)AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_CUT_STRING)).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)onMenuItemClickListener).setAlphabeticShortcut('x');
                            }
                            else {
                                contextMenu.add(0, 2, 0, (CharSequence)AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_CUT_ALL_STRING)).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)onMenuItemClickListener);
                            }
                        }
                        if (nativeIsTextSelected) {
                            contextMenu.add(0, 3, 0, (CharSequence)AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_COPY_STRING)).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)onMenuItemClickListener).setAlphabeticShortcut('c');
                        }
                        else {
                            contextMenu.add(0, 4, 0, (CharSequence)AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_COPY_ALL_STRING)).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)onMenuItemClickListener);
                        }
                    }
                }
                if (nativeIsEditable) {
                    if (clipboardManager != null && clipboardManager.hasText()) {
                        contextMenu.add(0, 5, 0, (CharSequence)AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_PASTE_STRING)).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)onMenuItemClickListener).setAlphabeticShortcut('v');
                    }
                    contextMenu.add(0, 6, 0, (CharSequence)AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_INPUT_METHOD_STRING)).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)onMenuItemClickListener);
                }
                this.mEatTouchRelease = true;
                this.mContextMenuVisible = true;
                contextMenu.setHeaderTitle((CharSequence)AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_CONTEXT_MENU_TITLE_STRING));
            }
        }
    }
    
    public InputConnection onCreateInputConnection(final EditorInfo editorInfo) {
        if (this.mActivityWrapper.isApplicationLaunched() && this.nativeIsEditable()) {
            editorInfo.imeOptions |= 0x40000000;
            editorInfo.imeOptions |= 0x6;
            editorInfo.inputType |= 0x1;
            if (this.nativeIsPasswordField()) {
                editorInfo.inputType |= 0x80;
            }
            if (this.nativeIsMultiLineTextField()) {
                editorInfo.inputType |= 0x20000;
            }
            this.mInputConnection = new AndroidInputConnection(this);
            editorInfo.initialSelStart = -1;
            editorInfo.initialSelEnd = -1;
            editorInfo.initialCapsMode = 0;
        }
        else {
            this.mInputConnection = null;
        }
        return (InputConnection)this.mInputConnection;
    }
    
    protected void onFocusChanged(final boolean b, final int n, final Rect rect) {
        AIRLogger.d("AIRWindowSurfaceView", "*** *** onFocusChanged: AIR");
        if (b && this.mFocusedStageText != null && !this.inTouch) {
            this.mDispatchUserTriggeredSkDeactivate = true;
            this.forceSoftKeyboardDown();
        }
        super.onFocusChanged(b, n, rect);
    }
    
    public boolean onGenericMotionEvent(final MotionEvent motionEvent) {
        return (motionEvent.getAction() == 9 || motionEvent.getAction() == 10 || motionEvent.getAction() == 7) && this.onTouchEvent(motionEvent);
    }
    
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        boolean nativeOnKeyListener;
        if (this.AllowOSToHandleKeys(n)) {
            nativeOnKeyListener = false;
        }
        else {
            final int unicodeChar = keyEvent.getUnicodeChar();
            int getMetaKeyCharacter;
            if (this.mMetaShiftState == MetaKeyState.ACTIVE || this.mMetaShiftState == MetaKeyState.LOCKED || this.mMetaAltState == MetaKeyState.ACTIVE || this.mMetaAltState == MetaKeyState.LOCKED) {
                getMetaKeyCharacter = this.GetMetaKeyCharacter(keyEvent);
            }
            else {
                getMetaKeyCharacter = unicodeChar;
            }
            this.HandleMetaKeyAction(keyEvent);
            if (!this.mTrackBallPressed && this.mLongPressCheck != null) {
                this.removeCallbacks((Runnable)this.mLongPressCheck);
            }
            if (!this.mActivityWrapper.isApplicationLaunched() || this.HandleShortCuts(n, keyEvent)) {
                return false;
            }
            nativeOnKeyListener = this.nativeOnKeyListener(keyEvent.getAction(), n, getMetaKeyCharacter, keyEvent.isAltPressed(), keyEvent.isShiftPressed(), keyEvent.isSymPressed());
            if (this.mInputConnection != null) {
                this.mInputConnection.updateIMEText();
                return nativeOnKeyListener;
            }
        }
        return nativeOnKeyListener;
    }
    
    public boolean onKeyPreIme(final int n, final KeyEvent keyEvent) {
        if (n == 4 && keyEvent.getAction() == 0) {
            this.DispatchSoftKeyboardEventOnBackKey();
        }
        return false;
    }
    
    public boolean onKeyUp(final int n, final KeyEvent keyEvent) {
        boolean nativeOnKeyListener;
        if (this.AllowOSToHandleKeys(n)) {
            nativeOnKeyListener = false;
        }
        else {
            final int unicodeChar = keyEvent.getUnicodeChar();
            int getMetaKeyCharacter;
            if (this.mMetaShiftState == MetaKeyState.ACTIVE || this.mMetaShiftState == MetaKeyState.LOCKED || this.mMetaAltState == MetaKeyState.ACTIVE || this.mMetaAltState == MetaKeyState.LOCKED) {
                getMetaKeyCharacter = this.GetMetaKeyCharacter(keyEvent);
            }
            else {
                getMetaKeyCharacter = unicodeChar;
            }
            if (this.mLongPressCheck != null) {
                this.removeCallbacks((Runnable)this.mLongPressCheck);
            }
            if (n == 23) {
                this.mTrackBallPressed = false;
            }
            if (!this.mActivityWrapper.isApplicationLaunched()) {
                return false;
            }
            nativeOnKeyListener = this.nativeOnKeyListener(keyEvent.getAction(), n, getMetaKeyCharacter, keyEvent.isAltPressed(), keyEvent.isShiftPressed(), keyEvent.isSymPressed());
            if (this.mInputConnection != null) {
                this.mInputConnection.updateIMEText();
            }
            if (!nativeOnKeyListener && keyEvent.getKeyCode() == 4 && keyEvent.isTracking() && !keyEvent.isCanceled()) {
                this.mActivityWrapper.getActivity().moveTaskToBack(false);
                return true;
            }
        }
        return nativeOnKeyListener;
    }
    
    protected void onSizeChanged(final int n, final int n2, final int n3, final int n4) {
        super.onSizeChanged(n, n2, n3, n4);
    }
    
    public boolean onTextBoxContextMenuItem(final int n) {
        final ClipboardManager clipboardManager = (ClipboardManager)this.getContext().getSystemService("clipboard");
        switch (n) {
            default: {
                return false;
            }
            case 0: {
                this.nativeSelectAllText();
                break;
            }
            case 3: {
                String text = this.nativeGetSelectedText();
                if (text != null) {
                    if (this.nativeIsPasswordField()) {
                        text = Utils.ReplaceTextContentWithStars(text);
                    }
                    clipboardManager.setText((CharSequence)text);
                }
                this.SetSelectionMode(false);
                break;
            }
            case 4: {
                CharSequence text2 = this.nativeGetTextContent().text;
                if (text2 != null) {
                    if (this.nativeIsPasswordField()) {
                        text2 = Utils.ReplaceTextContentWithStars(text2.toString());
                    }
                    clipboardManager.setText(text2);
                    break;
                }
                break;
            }
            case 5: {
                final CharSequence text3 = clipboardManager.getText();
                if (text3 != null) {
                    this.nativeInsertText(text3.toString());
                }
                this.SetSelectionMode(false);
                break;
            }
            case 7: {
                this.SetSelectionMode(true);
                break;
            }
            case 8: {
                this.SetSelectionMode(false);
                break;
            }
            case 1: {
                String text4 = this.nativeGetSelectedText();
                if (text4 != null) {
                    this.nativeCutText(false);
                    if (this.nativeIsPasswordField()) {
                        text4 = Utils.ReplaceTextContentWithStars(text4);
                    }
                    clipboardManager.setText((CharSequence)text4);
                }
                this.SetSelectionMode(false);
                break;
            }
            case 2: {
                CharSequence text5 = this.nativeGetTextContent().text;
                if (text5 != null) {
                    this.nativeCutText(true);
                    if (this.nativeIsPasswordField()) {
                        text5 = Utils.ReplaceTextContentWithStars(text5.toString());
                    }
                    clipboardManager.setText(text5);
                    break;
                }
                break;
            }
            case 6: {
                final InputMethodManager inputMethodManager = this.getInputMethodManager();
                if (inputMethodManager != null) {
                    inputMethodManager.showInputMethodPicker();
                    break;
                }
                break;
            }
        }
        if (this.mInputConnection != null) {
            this.mInputConnection.updateIMEText();
        }
        return true;
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        this.inTouch = true;
        final int n = 0xFF & motionEvent.getAction();
        boolean b;
        if (n == 9 || n == 10 || n == 7) {
            b = true;
        }
        else {
            b = false;
        }
        if (!this.hasFocus() && !b) {
            final RelativeLayout overlaysLayout = this.mActivityWrapper.getOverlaysLayout(false);
            if (overlaysLayout != null) {
                this.requestFocus();
                overlaysLayout.clearFocus();
                for (int childCount = overlaysLayout.getChildCount(), i = 0; i < childCount; ++i) {
                    final View child = overlaysLayout.getChildAt(i);
                    if (child != null) {
                        child.clearFocus();
                    }
                }
            }
        }
        if (n == 5 || n == 0) {
            for (int j = 0; j < motionEvent.getPointerCount(); ++j) {
                this.mGestureListener.setDownTouchPoint(motionEvent.getX(j), motionEvent.getY(j), motionEvent.getPointerId(j));
            }
        }
        if (n == 0) {
            this.mGestureListener.mayStartNewTransformGesture();
        }
        if (n == 5) {
            this.mGestureListener.setCouldBeTwoFingerTap(1);
            this.mGestureListener.setSecondaryPointOfTwoFingerTap(this.mGestureListener.getDownTouchPoint(n >> 8));
        }
        else if (n == 6 && this.mGestureListener.getCouldBeTwoFingerTap() == 1) {
            this.mGestureListener.setCouldBeTwoFingerTap(2);
        }
        else if (n == 1 && this.mGestureListener.getCouldBeTwoFingerTap() == 2) {
            this.mGestureListener.setCouldBeTwoFingerTap(3);
        }
        else if (n != 2) {
            this.mGestureListener.setCouldBeTwoFingerTap(0);
        }
        while (true) {
            int n3 = 0;
            Label_1192: {
                if (!this.mActivityWrapper.isApplicationLaunched()) {
                    break Label_1192;
                }
                final int pointerCount = motionEvent.getPointerCount();
                int n2 = 0;
                n3 = 1;
                int n4 = 0;
            Label_1142:
                while (true) {
                    int n5;
                    while (true) {
                        if (n2 >= pointerCount) {
                            n5 = n3;
                            break Label_1142;
                        }
                        final float x = motionEvent.getX(n2);
                        final float mLastTouchedYCoord = motionEvent.getY(n2) + this.mSkipHeightFromTop;
                        this.mLastTouchedXCoord = x;
                        this.mLastTouchedYCoord = mLastTouchedYCoord;
                        final int action = motionEvent.getAction();
                        final int pointerId = motionEvent.getPointerId(n2);
                        int metaState = motionEvent.getMetaState();
                        if (Build$VERSION.SDK_INT >= 14) {
                            metaState &= 0xF1FFFFFF;
                            final int toolType = motionEvent.getToolType(n2);
                            if (toolType == 4) {
                                metaState |= 0x4000000;
                            }
                            else if (toolType == 2) {
                                metaState |= 0x2000000;
                            }
                            if ((0x2 & motionEvent.getButtonState()) != 0x0) {
                                metaState |= 0x8000000;
                            }
                        }
                        int n6;
                        int n7 = 0;
                        int n8;
                        boolean b2;
                        if (n4 != 0) {
                            n6 = 3;
                            n7 = 4;
                            n8 = n4;
                            b2 = false;
                        }
                        else if (motionEvent.getPointerCount() == 1 || pointerId == motionEvent.getPointerId((0xFF00 & action) >> 8)) {
                            final int n9 = action & 0xFF;
                            switch (n9) {
                                default: {
                                    this.mHoverTimeoutHandler.setLastMove(System.currentTimeMillis());
                                    n6 = n9;
                                    n7 = 1;
                                    n8 = n4;
                                    b2 = false;
                                    break;
                                }
                                case 9: {
                                    n6 = n9;
                                    n7 = 16;
                                    n8 = n4;
                                    b2 = false;
                                    break;
                                }
                                case 10: {
                                    n6 = n9;
                                    n7 = 32;
                                    n8 = n4;
                                    b2 = false;
                                    break;
                                }
                                case 7: {
                                    if (Build$VERSION.SDK_INT < 14) {
                                        this.mHoverTimeoutHandler.setLastMove(System.currentTimeMillis());
                                        this.mHoverMetaState = metaState;
                                        if (!this.mHoverInProgress) {
                                            this.mHoverTimeoutHandler.sendEmptyMessageDelayed(0, 500L);
                                            this.mHoverInProgress = true;
                                            n6 = n9;
                                            n7 = 8;
                                            n8 = n4;
                                            b2 = true;
                                            break;
                                        }
                                    }
                                    n6 = n9;
                                    n7 = 8;
                                    n8 = n4;
                                    b2 = false;
                                    break;
                                }
                                case 0:
                                case 5: {
                                    n6 = n9;
                                    n7 = 2;
                                    n8 = n4;
                                    b2 = false;
                                    break;
                                }
                                case 3: {
                                    n4 = 1;
                                }
                                case 1:
                                case 6: {
                                    this.mGestureListener.endTwoFingerGesture();
                                    this.mGestureListener.setCheckForSwipe(true);
                                    n6 = n9;
                                    n7 = 4;
                                    n8 = n4;
                                    b2 = false;
                                    break;
                                }
                            }
                        }
                        else {
                            n6 = action;
                            n7 = 1;
                            n8 = n4;
                            b2 = false;
                        }
                        if (!this.IsTouchEventHandlingAllowed(n7, x, mLastTouchedYCoord)) {
                            break Label_1192;
                        }
                        final float size = motionEvent.getSize(n2);
                        final boolean b3 = pointerId == 0;
                        final int historySize = motionEvent.getHistorySize();
                        final float[] array = new float[3 * (historySize + 1)];
                        int n10 = 0;
                        int n13;
                        for (int k = 0; k < historySize; ++k, n10 = n13) {
                            final int n11 = n10 + 1;
                            array[n10] = motionEvent.getHistoricalX(n2, k);
                            final int n12 = n11 + 1;
                            array[n11] = motionEvent.getHistoricalY(n2, k);
                            n13 = n12 + 1;
                            array[n12] = motionEvent.getHistoricalPressure(n2, k);
                        }
                        final float pressure = motionEvent.getPressure(n2);
                        array[n10] = x;
                        array[n10 + 1] = mLastTouchedYCoord;
                        array[n10 + 2] = pressure;
                        int n14 = metaState & 0xFFFFFFFE;
                        int n15 = 0;
                        switch (n7) {
                            case 8: {
                                n15 = 8;
                                if (Build$VERSION.SDK_INT < 14 && b2) {
                                    n15 |= 0x10;
                                    break;
                                }
                                break;
                            }
                            case 1:
                            case 2: {
                                n15 = 1;
                                break;
                            }
                        }
                        if (n15 != 0) {
                            final TouchEventData touchEventData = new TouchEventData(n15, x, mLastTouchedYCoord, pressure, pointerId, size, size, b3, array, n14);
                            int n16;
                            if (n3 != 0 && Entrypoints.registerTouchCallback(0, touchEventData, null)) {
                                n16 = 1;
                            }
                            else {
                                n16 = 0;
                            }
                            n3 = n16;
                        }
                        if (n7 == 8 || n7 == 1) {
                            break Label_1192;
                        }
                        if (n6 == 3) {
                            n14 |= 0x1;
                        }
                        final TouchEventData touchEventData2 = new TouchEventData(n7, x, mLastTouchedYCoord, pressure, pointerId, size, size, b3, null, n14);
                        int n17;
                        if (n3 != 0 && Entrypoints.registerTouchCallback(0, touchEventData2, null)) {
                            n17 = 1;
                        }
                        else {
                            n17 = 0;
                        }
                        ++n2;
                        n3 = n17;
                        n4 = n8;
                        continue;
                    }
                    Label_1198: {
                        if (n5 == 0) {
                            break Label_1198;
                        }
                        while (true) {
                            try {
                                if (this.mScaleGestureDetector.onTouchEvent(motionEvent)) {
                                    n5 = 1;
                                }
                                else {
                                    n5 = 0;
                                }
                                final boolean b4 = n5 != 0 && this.mGestureDetector.onTouchEvent(motionEvent);
                                this.inTouch = false;
                                return b4;
                                n5 = 0;
                                continue Label_1142;
                            }
                            catch (Exception ex) {
                                continue;
                            }
                            break;
                        }
                    }
                    break;
                }
            }
            int n17 = n3;
            continue;
        }
    }
    
    public void onWindowFocusChanged(final boolean mWindowHasFocus) {
        this.mWindowHasFocus = mWindowHasFocus;
        if (this.mLongPressCheck != null) {
            this.removeCallbacks((Runnable)this.mLongPressCheck);
        }
        if (this.mHideSoftKeyboardOnWindowFocusChange) {
            final InputMethodManager inputMethodManager = this.getInputMethodManager();
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(this.getWindowToken(), 0);
            }
            this.mHideSoftKeyboardOnWindowFocusChange = false;
        }
        if (mWindowHasFocus) {
            this.mContextMenuVisible = false;
        }
    }
    
    public long panStageTextInFocus() {
        if (this.mFocusedStageText == null) {
            return 0L;
        }
        this.mResizedStageText = this.mFocusedStageText;
        return this.mFocusedStageText.updateViewBoundsWithKeyboard(this.mHt);
    }
    
    public long panStageWebViewInFocus() {
        if (this.mFocusedWebView == null) {
            return 0L;
        }
        this.mResizedWebView = this.mFocusedWebView;
        return this.mFocusedWebView.updateViewBoundsWithKeyboard(this.mHt);
    }
    
    public boolean performLongClick() {
        if (this.mWindowHasFocus) {
            final Rect nativeGetTextBoxBounds = this.nativeGetTextBoxBounds();
            if (nativeGetTextBoxBounds != null && ((this.mLastTouchedXCoord > nativeGetTextBoxBounds.left && this.mLastTouchedXCoord < nativeGetTextBoxBounds.right && this.mLastTouchedYCoord > nativeGetTextBoxBounds.top && this.mLastTouchedYCoord < nativeGetTextBoxBounds.bottom) || this.mTrackBallPressed)) {
                this.mTrackBallPressed = false;
                if (super.performLongClick()) {
                    return true;
                }
            }
        }
        return false;
    }
    
    public View returnThis() {
        return (View)this;
    }
    
    public void setCompositingHint(final boolean mNeedsCompositingSurface) {
        this.mNeedsCompositingSurface = mNeedsCompositingSurface;
        if ((mNeedsCompositingSurface && this.mCurrentSurfaceFormat == 1) || (!mNeedsCompositingSurface && this.mCurrentSurfaceFormat == 2)) {
            return;
        }
        this.setSurfaceFormat(true);
    }
    
    public void setFlashEGL(final FlashEGL mFlashEGL) {
        this.mFlashEGL = mFlashEGL;
    }
    
    public void setFullScreen() {
        if (!this.mIsFullScreen) {
            this.mIsFullScreen = true;
            this.mActivityWrapper.setIsFullScreen(this.mIsFullScreen);
            if (supportsSystemUiVisibilityAPI()) {
                int systemUiVisibility;
                if (supportsSystemUiFlags()) {
                    systemUiVisibility = 1;
                }
                else {
                    systemUiVisibility = 1;
                }
                this.DoSetOnSystemUiVisibilityChangeListener();
                ((View)this).setSystemUiVisibility(systemUiVisibility);
            }
            this.mActivityWrapper.planeBreakCascade();
        }
        final Activity activity = this.mActivityWrapper.getActivity();
        if (activity != null) {
            final Window window = activity.getWindow();
            if (!supportsSystemUiVisibilityAPI() || this.hasStatusBar(window)) {
                window.setFlags(1024, 1024);
            }
        }
    }
    
    public void setInputConnection(final AndroidInputConnection mInputConnection) {
        this.mInputConnection = mInputConnection;
    }
    
    public void setMultitouchMode(final int mMultitouchMode) {
        this.mMultitouchMode = mMultitouchMode;
    }
    
    public boolean setScrollTo(final int mSkipHeightFromTop) {
        this.mSkipHeightFromTop = mSkipHeightFromTop;
        final RelativeLayout overlaysLayout = this.mActivityWrapper.getOverlaysLayout(false);
        if (overlaysLayout != null) {
            this.post((Runnable)new Runnable() {
                @Override
                public void run() {
                    if (mSkipHeightFromTop == 0 && AIRWindowSurfaceView.this.mResizedWebView != null) {
                        AIRWindowSurfaceView.this.mResizedWebView.resetGlobalBounds();
                        AIRWindowSurfaceView.this.mResizedWebView = null;
                    }
                    if (mSkipHeightFromTop == 0 && AIRWindowSurfaceView.this.mResizedStageText != null) {
                        AIRWindowSurfaceView.this.mResizedStageText.resetGlobalBounds();
                        AIRWindowSurfaceView.this.mResizedStageText = null;
                    }
                    overlaysLayout.setPadding(0, -mSkipHeightFromTop, 0, 0);
                    overlaysLayout.requestLayout();
                }
            });
        }
        return true;
    }
    
    public void setSurfaceFormat(final boolean b) {
        if (!this.mActivityWrapper.useRGB565()) {
            if (!this.mNeedsCompositingSurface && !this.mActivityWrapper.needsCompositingSurface()) {
                final AndroidActivityWrapper mActivityWrapper = this.mActivityWrapper;
                if (AndroidActivityWrapper.isGingerbread()) {
                    this.setSurfaceFormatImpl(b, 2);
                    return;
                }
            }
            this.setSurfaceFormatImpl(b, 1);
            return;
        }
        if (this.mNeedsCompositingSurface) {
            this.setSurfaceFormatImpl(b, 1);
            return;
        }
        this.setSurfaceFormatImpl(b, 4);
    }
    
    public void showActionScript2Warning() {
        final Activity activity = this.mActivityWrapper.getActivity();
        if (activity != null) {
            final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder((Context)activity);
            final TextView view = new TextView((Context)activity);
            view.setText((CharSequence)"Your application is attempting to run ActionScript2.0, which is not supported on smart phone profile. \nSee the Adobe Developer Connection for more info www.adobe.com/devnet");
            Linkify.addLinks(view, 1);
            alertDialog$Builder.setView((View)view);
            alertDialog$Builder.setTitle((CharSequence)"Action Script 2.0");
            alertDialog$Builder.setNeutralButton((CharSequence)"OK", (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                public void onClick(final DialogInterface dialogInterface, final int n) {
                }
            });
            alertDialog$Builder.show();
        }
    }
    
    public void showSoftKeyboard(final boolean b) {
        this.showSoftKeyboard(b, (View)this);
    }
    
    public void showSoftKeyboard(final boolean b, final View view) {
        AIRLogger.d("AIRWindowSurfaceView", "showSoftKeyboard show: " + b);
        final InputMethodManager inputMethodManager = this.getInputMethodManager();
        if (!b) {
            if (this.mSurfaceChangedForSoftKeyboard) {
                this.mDispatchUserTriggeredSkDeactivate = false;
            }
            inputMethodManager.hideSoftInputFromWindow(this.getWindowToken(), 0);
            if (this.mInputConnection != null) {
                this.mInputConnection.Reset();
            }
            this.nativeSetKeyboardVisible(false);
            return;
        }
        inputMethodManager.showSoftInput(view, 0, (ResultReceiver)this.mInputMethodReceiver);
    }
    
    public void surfaceChanged(final SurfaceHolder surfaceHolder, final int n, final int n2, final int n3) {
        final Display defaultDisplay = ((WindowManager)this.mActivityWrapper.getActivity().getSystemService("window")).getDefaultDisplay();
        this.mBoundHeight = defaultDisplay.getHeight();
        this.mBoundWidth = defaultDisplay.getWidth();
        this.mVisibleBoundHeight = n3;
        this.mVisibleBoundWidth = n2;
        this.nativeOnFormatChangeListener(n);
        if (!this.mSurfaceValid) {
            this.mSurfaceValid = true;
            this.mActivityWrapper.onSurfaceInitialized();
            this.setMultitouchMode(this.nativeGetMultitouchMode());
        }
        if (this.mSurfaceValid) {
            final int orientation = this.getResources().getConfiguration().orientation;
            if (orientation == this.mCurrentOrientation) {
                if ((orientation == 1 || orientation == 2) && n3 < this.mHt) {
                    if (n3 == 0) {
                        return;
                    }
                    if (this.nativePerformWindowPanning(orientation, this.mHt - n3)) {
                        this.mSurfaceChangedForSoftKeyboard = true;
                        return;
                    }
                }
            }
            else {
                this.showSoftKeyboard(false);
                this.nativeDispatchUserTriggeredSkDeactivateEvent();
                this.mDispatchUserTriggeredSkDeactivate = false;
            }
            final boolean b = this.mCurrentOrientation != orientation;
            this.mCurrentOrientation = orientation;
            this.mWd = n2;
            this.mHt = n3;
            this.nativeOnSizeChangedListener(this.mWd, this.mHt, b);
            final OrientationManager orientationManager = OrientationManager.getOrientationManager();
            if (orientationManager.mDispatchOrientationChangePending) {
                orientationManager.nativeOrientationChanged(orientationManager.mBeforeOrientation, orientationManager.mAfterOrientation);
                orientationManager.mDispatchOrientationChangePending = false;
            }
            this.nativeForceReDraw();
            this.forceSoftKeyboardDown();
        }
    }
    
    public void surfaceCreated(final SurfaceHolder surfaceHolder) {
        this.mActivityWrapper.planeStepCascade();
        if (this.mIsFullScreen) {
            this.setFullScreen();
        }
        if (this.mActivityWrapper.isStarted() || this.mActivityWrapper.isResumed() || (Build.MANUFACTURER.equalsIgnoreCase("SAMSUNG") && Build.MODEL.equalsIgnoreCase("GT-I9300"))) {
            this.nativeSurfaceCreated();
        }
    }
    
    public void surfaceDestroyed(final SurfaceHolder surfaceHolder) {
        this.mSurfaceValid = false;
        if (this.mFlashEGL != null) {
            this.mFlashEGL.DestroyWindowSurface();
        }
        this.mActivityWrapper.onSurfaceDestroyed();
        this.mActivityWrapper.planeBreakCascade();
    }
    
    public void updateFocusedStageText(final AndroidStageText mFocusedStageText, final boolean b) {
        if (b) {
            this.mFocusedStageText = mFocusedStageText;
        }
        else if (this.mFocusedStageText == mFocusedStageText) {
            this.mFocusedStageText = null;
        }
    }
    
    public void updateFocusedStageWebView(final AndroidWebView mFocusedWebView, final boolean b) {
        if (b) {
            this.mFocusedWebView = mFocusedWebView;
        }
        else if (this.mFocusedWebView == mFocusedWebView) {
            this.mFocusedWebView = null;
        }
    }
    
    class CheckLongPress implements Runnable
    {
        @Override
        public void run() {
            AIRWindowSurfaceView.this.performLongClick();
        }
    }
    
    class HoverTimeoutHandler extends Handler
    {
        static final int INTERVAL = 500;
        private AIRWindowSurfaceView mAIRWindowSurfaceView;
        private long mLastMove;
        
        public HoverTimeoutHandler(final AIRWindowSurfaceView mairWindowSurfaceView) {
            super();
            this.mAIRWindowSurfaceView = mairWindowSurfaceView;
        }
        
        public void handleMessage(final Message message) {
            if (System.currentTimeMillis() - this.mLastMove >= 500L) {
                AIRWindowSurfaceView.this.mHoverInProgress = false;
                Entrypoints.registerTouchCallback(0, new TouchEventData(32, this.mAIRWindowSurfaceView.mLastTouchedXCoord, this.mAIRWindowSurfaceView.mLastTouchedYCoord, 0.0f, 0, 0.0f, 0.0f, true, null, this.mAIRWindowSurfaceView.mHoverMetaState), null);
                return;
            }
            AIRWindowSurfaceView.this.mHoverTimeoutHandler.sendEmptyMessageDelayed(0, 500L);
        }
        
        public void setLastMove(final long mLastMove) {
            this.mLastMove = mLastMove;
        }
    }
    
    class InputMethodReceiver extends ResultReceiver
    {
        public InputMethodReceiver() {
            super(AIRWindowSurfaceView.this.getHandler());
        }
        
        protected void onReceiveResult(final int n, final Bundle bundle) {
            if (n == 1 || n == 3) {
                AIRWindowSurfaceView.this.nativeShowOriginalRect();
                return;
            }
            AIRWindowSurfaceView.this.nativeSetKeyboardVisible(true);
        }
    }
    
    private class MenuHandler implements MenuItem$OnMenuItemClickListener
    {
        public boolean onMenuItemClick(final MenuItem menuItem) {
            return AIRWindowSurfaceView.this.onTextBoxContextMenuItem(menuItem.getItemId());
        }
    }
    
    private enum MetaKeyState
    {
        ACTIVE, 
        INACTIVE, 
        LOCKED, 
        PRESSED;
    }
}
