package com.adobe.air;

import android.app.*;
import android.view.*;
import android.content.pm.*;
import android.os.*;
import android.content.*;
import android.provider.*;
import android.content.res.*;

class OrientationManager
{
    private static final float AIR_NAMESPACE_VERSION_3_3 = 3.3f;
    private static final float AIR_NAMESPACE_VERSION_3_8 = 3.8f;
    private static final String LOG_TAG = "OrientationManager";
    private static OrientationManager sMgr;
    public int mAfterOrientation;
    private boolean mAutoOrients;
    public int mBeforeOrientation;
    private int mDeviceDefault;
    private int mDeviceOrientation;
    public boolean mDispatchOrientationChangePending;
    private int mFinalOrientation;
    private boolean mFirstCreate;
    private int mHardKeyboardHidden;
    private float mNamespaceVersion;
    private int mOldDeviceOrientation;
    private int mOrientation;
    private OrientationEventListener mOrientationEventListner;
    private int mOsDefaultOrientation;
    private int mOsReversedOrientation;
    private int mOsRotatedLeftOrientation;
    private int mOsRotatedRightOrientation;
    private int mRequestedAspectRatio;
    private boolean mSetOrientation;
    private AIRWindowSurfaceView mView;
    private Activity m_activity;
    
    static {
        OrientationManager.sMgr = null;
    }
    
    private OrientationManager() {
        super();
        this.mFirstCreate = true;
        this.mOrientation = EOrientation.DEFAULT.ordinal();
        this.mDeviceOrientation = EOrientation.UNKNOWN.ordinal();
        this.mOldDeviceOrientation = EOrientation.UNKNOWN.ordinal();
        this.mFinalOrientation = EOrientation.UNKNOWN.ordinal();
        this.mDeviceDefault = EDefault.PORTRAIT.ordinal();
        this.mAutoOrients = false;
        this.mSetOrientation = false;
        this.mHardKeyboardHidden = 2;
        this.m_activity = null;
        this.mView = null;
        this.mOsDefaultOrientation = 1;
        this.mOsRotatedRightOrientation = 0;
        this.mOsRotatedLeftOrientation = 8;
        this.mOsReversedOrientation = 9;
        this.mDispatchOrientationChangePending = false;
        this.mRequestedAspectRatio = -1;
    }
    
    private void applyLastOrientation() {
        if (!this.mAutoOrients) {
            if (!this.mSetOrientation && (this.mNamespaceVersion < 3.3f || this.mRequestedAspectRatio == -1)) {
                this.setAutoOrients(this.mAutoOrients);
                return;
            }
            this.setOrientation(this.mOrientation);
        }
        else if (!this.mSetOrientation || this.mOldDeviceOrientation != this.mDeviceOrientation || this.mNamespaceVersion < 3.3f) {
            this.setAutoOrients(this.mAutoOrients);
            this.mAfterOrientation = this.getCurrentOrientation();
            this.mBeforeOrientation = this.mOrientation;
            if (this.mBeforeOrientation != this.mAfterOrientation) {
                if (AndroidActivityWrapper.GetAndroidActivityWrapper().isApplicationLaunched() && this.nativeOrientationChanging(this.mBeforeOrientation, this.mAfterOrientation)) {
                    this.setNearestOrientation(this.mBeforeOrientation);
                    return;
                }
                this.mOrientation = this.mAfterOrientation;
                if (AndroidActivityWrapper.GetAndroidActivityWrapper().isApplicationLaunched()) {
                    if (this.mView.getVisibleBoundHeight() == this.mView.getVisibleBoundWidth()) {
                        this.nativeOrientationChanged(this.mBeforeOrientation, this.mAfterOrientation);
                        this.mDispatchOrientationChangePending = false;
                        return;
                    }
                    this.mDispatchOrientationChangePending = true;
                }
            }
        }
    }
    
    private int getCurrentOrientation() {
        final int ordinal = EOrientation.DEFAULT.ordinal();
        if (this.m_activity != null) {
            final int rotation = this.m_activity.getWindowManager().getDefaultDisplay().getRotation();
            if (rotation == 0) {
                return EOrientation.DEFAULT.ordinal();
            }
            if (rotation == 1) {
                return EOrientation.ROTATED_RIGHT.ordinal();
            }
            if (rotation == 2) {
                return EOrientation.UPSIDE_DOWN.ordinal();
            }
            if (rotation == 3) {
                return EOrientation.ROTATED_LEFT.ordinal();
            }
        }
        return ordinal;
    }
    
    public static OrientationManager getOrientationManager() {
        if (OrientationManager.sMgr == null) {
            OrientationManager.sMgr = new OrientationManager();
        }
        return OrientationManager.sMgr;
    }
    
    private boolean isReOrientingAllowed() {
        if (this.mNamespaceVersion >= 3.3f) {
            final boolean mAutoOrients = this.mAutoOrients;
            boolean b = false;
            if (mAutoOrients) {
                if (this.mRequestedAspectRatio == -1) {
                    return true;
                }
                final boolean mFirstCreate = this.mFirstCreate;
                b = false;
                if (mFirstCreate) {
                    b = true;
                }
                if (this.mRequestedAspectRatio == this.mOsDefaultOrientation) {
                    if (this.mDeviceOrientation == EOrientation.DEFAULT.ordinal() || this.mDeviceOrientation == EOrientation.UPSIDE_DOWN.ordinal()) {
                        b = true;
                    }
                }
                else if (this.mDeviceOrientation == EOrientation.ROTATED_LEFT.ordinal() || this.mDeviceOrientation == EOrientation.ROTATED_RIGHT.ordinal()) {
                    return true;
                }
            }
            return b;
        }
        return true;
    }
    
    private void setDeviceDefault() {
        final Display defaultDisplay = this.m_activity.getWindow().getWindowManager().getDefaultDisplay();
        final int rotation = defaultDisplay.getRotation();
        boolean b;
        if (defaultDisplay.getHeight() >= defaultDisplay.getWidth()) {
            b = true;
        }
        else {
            b = false;
        }
        boolean b2;
        if (rotation == 0 || rotation == 2) {
            b2 = true;
        }
        else {
            b2 = false;
        }
        if ((b && b2) || (!b && !b2)) {
            this.mOsDefaultOrientation = 1;
            this.mOsRotatedRightOrientation = 0;
            if (Build$VERSION.SDK_INT <= 8) {
                this.mOsRotatedLeftOrientation = this.mOsRotatedRightOrientation;
                this.mOsReversedOrientation = this.mOsDefaultOrientation;
                return;
            }
            this.mOsRotatedLeftOrientation = 8;
            this.mOsReversedOrientation = 9;
        }
        else {
            this.mOsDefaultOrientation = 0;
            this.mOsRotatedLeftOrientation = 1;
            if (Build$VERSION.SDK_INT <= 8) {
                this.mOsRotatedRightOrientation = this.mOsRotatedLeftOrientation;
                this.mOsReversedOrientation = this.mOsDefaultOrientation;
                return;
            }
            this.mOsRotatedRightOrientation = 9;
            this.mOsReversedOrientation = 8;
        }
    }
    
    private void setOrientationParamsFromMetaData() {
        try {
            final Bundle metaData = this.m_activity.getPackageManager().getActivityInfo(this.m_activity.getComponentName(), 128).metaData;
            if (metaData == null) {
                return;
            }
            final Boolean b = (Boolean)metaData.get("autoOrients");
            final String s = (String)metaData.get("aspectRatio");
            this.mNamespaceVersion = metaData.getFloat("namespaceVersion");
            if (s != null) {
                if (s.equals("portrait")) {
                    this.setAspectRatio(EAspectRatio.PORTRAIT.ordinal());
                }
                else if (s.equals("landscape")) {
                    this.setAspectRatio(EAspectRatio.LANDSCAPE.ordinal());
                }
            }
            if (b != null && b) {
                this.setAutoOrients(true);
                return;
            }
            if (this.mNamespaceVersion >= 3.8f && (s == null || s.equals("any"))) {
                this.setAutoOrients(false);
                return;
            }
            if (this.mNamespaceVersion <= 3.8f && s == null) {
                this.setAutoOrients(false);
            }
        }
        catch (PackageManager$NameNotFoundException ex) {}
    }
    
    private boolean setSensorBasedOrientation() {
        boolean b;
        if (this.mRequestedAspectRatio != -1) {
            b = true;
        }
        else {
            b = false;
        }
        while (true) {
            Label_0281: {
                if (!this.mAutoOrients) {
                    break Label_0281;
                }
                if (this.mSetOrientation && this.mNamespaceVersion >= 3.3f) {
                    this.mSetOrientation = false;
                }
                boolean b2;
                if (b && this.mNamespaceVersion >= 3.3f) {
                    if (this.mRequestedAspectRatio == this.mOsDefaultOrientation) {
                        if (this.mDeviceOrientation == EOrientation.DEFAULT.ordinal()) {
                            this.m_activity.setRequestedOrientation(this.mRequestedAspectRatio);
                            b2 = true;
                        }
                        else {
                            if (this.mDeviceOrientation != EOrientation.UPSIDE_DOWN.ordinal()) {
                                break Label_0281;
                            }
                            this.m_activity.setRequestedOrientation(this.mOsReversedOrientation);
                            b2 = true;
                        }
                    }
                    else {
                        int n;
                        if (this.mOsDefaultOrientation == 1) {
                            n = EOrientation.ROTATED_LEFT.ordinal();
                        }
                        else {
                            n = EOrientation.ROTATED_RIGHT.ordinal();
                        }
                        if (this.mDeviceOrientation == n) {
                            this.m_activity.setRequestedOrientation(this.mRequestedAspectRatio);
                            b2 = true;
                        }
                        else if (this.mOsDefaultOrientation == 1) {
                            this.m_activity.setRequestedOrientation(8);
                            b2 = true;
                        }
                        else {
                            this.m_activity.setRequestedOrientation(9);
                            b2 = true;
                        }
                    }
                }
                else {
                    this.m_activity.setRequestedOrientation(2);
                    b2 = true;
                }
                if (b2 && b) {
                    this.mAfterOrientation = this.getCurrentOrientation();
                    this.mBeforeOrientation = this.mOrientation;
                    if (this.mAfterOrientation != this.mBeforeOrientation) {
                        this.nativeOrientationChanged(this.mBeforeOrientation, this.mAfterOrientation);
                    }
                    this.mOrientation = this.mAfterOrientation;
                }
                return b2;
            }
            boolean b2 = false;
            continue;
        }
    }
    
    public void enableEventListener(final boolean b) {
        if (b) {
            this.mOrientationEventListner.enable();
            return;
        }
        this.mOrientationEventListner.disable();
    }
    
    public boolean getAutoOrients() {
        return this.mAutoOrients;
    }
    
    public int getDeviceOrientation() {
        if (this.mHardKeyboardHidden != 1) {
            return this.mDeviceOrientation;
        }
        if (this.mOsDefaultOrientation == 1) {
            return EOrientation.ROTATED_LEFT.ordinal();
        }
        return EOrientation.DEFAULT.ordinal();
    }
    
    public int getOrientation() {
        return this.mOrientation = this.getCurrentOrientation();
    }
    
    public int[] getSupportedOrientations() {
        if (Build$VERSION.SDK_INT > 8) {
            return new int[] { EOrientation.DEFAULT.ordinal(), EOrientation.ROTATED_LEFT.ordinal(), EOrientation.ROTATED_RIGHT.ordinal(), EOrientation.UPSIDE_DOWN.ordinal() };
        }
        final int[] array = new int[2];
        if (this.mOsDefaultOrientation == 1) {
            array[0] = EOrientation.DEFAULT.ordinal();
            array[1] = EOrientation.ROTATED_RIGHT.ordinal();
            return array;
        }
        array[0] = EOrientation.DEFAULT.ordinal();
        array[1] = EOrientation.ROTATED_LEFT.ordinal();
        return array;
    }
    
    public native void nativeOrientationChanged(final int p0, final int p1);
    
    public native boolean nativeOrientationChanging(final int p0, final int p1);
    
    public void onActivityCreated(final Activity activity, final AIRWindowSurfaceView mView) {
        this.m_activity = activity;
        this.mView = mView;
        this.mHardKeyboardHidden = this.m_activity.getResources().getConfiguration().hardKeyboardHidden;
        if (this.mFirstCreate) {
            this.setDeviceDefault();
            this.setOrientationParamsFromMetaData();
        }
        this.mOrientationEventListner = new OrientationEventListener(this.m_activity.getApplicationContext(), 3) {
            public void onOrientationChanged(final int n) {
                int n2 = EOrientation.UNKNOWN.ordinal();
                if (n == -1) {
                    OrientationManager.this.mDeviceOrientation = EOrientation.UNKNOWN.ordinal();
                    n2 = EOrientation.UNKNOWN.ordinal();
                }
                else if (n >= 45 && n < 135) {
                    OrientationManager.this.mDeviceOrientation = EOrientation.ROTATED_RIGHT.ordinal();
                    n2 = EOrientation.ROTATED_LEFT.ordinal();
                }
                else if (n >= 135 && n < 225) {
                    OrientationManager.this.mDeviceOrientation = EOrientation.UPSIDE_DOWN.ordinal();
                    n2 = EOrientation.UPSIDE_DOWN.ordinal();
                }
                else if (n >= 225 && n < 315) {
                    OrientationManager.this.mDeviceOrientation = EOrientation.ROTATED_LEFT.ordinal();
                    n2 = EOrientation.ROTATED_RIGHT.ordinal();
                }
                else if ((n >= 0 && n < 45) || (n >= 315 && n < 360)) {
                    OrientationManager.this.mDeviceOrientation = EOrientation.DEFAULT.ordinal();
                    n2 = EOrientation.DEFAULT.ordinal();
                }
                if (AndroidActivityWrapper.GetAndroidActivityWrapper().isApplicationLaunched() && OrientationManager.this.mAutoOrients && OrientationManager.this.mOldDeviceOrientation != OrientationManager.this.mDeviceOrientation && n2 != EOrientation.UNKNOWN.ordinal() && OrientationManager.this.mOrientation != n2) {
                    final int int1 = Settings$System.getInt(OrientationManager.this.m_activity.getContentResolver(), "accelerometer_rotation", 0);
                    if (OrientationManager.this.m_activity != null && int1 != 0 && OrientationManager.this.isReOrientingAllowed()) {
                        if (OrientationManager.this.nativeOrientationChanging(OrientationManager.this.mOrientation, n2)) {
                            OrientationManager.this.setNearestOrientation(OrientationManager.this.mOrientation);
                            OrientationManager.this.mFinalOrientation = OrientationManager.this.mOrientation;
                        }
                        else {
                            final OrientationManager this$0 = OrientationManager.this;
                            if (!OrientationManager.this.setSensorBasedOrientation()) {
                                n2 = OrientationManager.this.mOrientation;
                            }
                            this$0.mFinalOrientation = n2;
                        }
                    }
                }
                else if (OrientationManager.this.mAutoOrients && OrientationManager.this.mSetOrientation && OrientationManager.this.mOldDeviceOrientation != OrientationManager.this.mDeviceOrientation && OrientationManager.this.mOldDeviceOrientation != EOrientation.UNKNOWN.ordinal() && OrientationManager.this.mDeviceOrientation != EOrientation.UNKNOWN.ordinal() && OrientationManager.this.mNamespaceVersion < 3.3f) {
                    if (OrientationManager.this.m_activity != null) {
                        OrientationManager.this.m_activity.setRequestedOrientation(2);
                    }
                    OrientationManager.this.mSetOrientation = false;
                }
                OrientationManager.this.mOldDeviceOrientation = OrientationManager.this.mDeviceOrientation;
            }
        };
        final AndroidActivityWrapper getAndroidActivityWrapper = AndroidActivityWrapper.GetAndroidActivityWrapper();
        if (getAndroidActivityWrapper.isScreenOn() && !getAndroidActivityWrapper.isScreenLocked()) {
            if (!this.mFirstCreate) {
                this.applyLastOrientation();
            }
            this.mOrientation = this.getCurrentOrientation();
        }
        this.mFirstCreate = false;
    }
    
    public void onActivityDestroyed() {
        this.m_activity = null;
    }
    
    public void onActivityPaused() {
        this.enableEventListener(false);
    }
    
    public void onActivityResumed() {
        this.enableEventListener(true);
    }
    
    public void onConfigurationChanged(final Configuration configuration) {
        this.mAfterOrientation = this.getCurrentOrientation();
        this.mBeforeOrientation = this.mOrientation;
        if (this.mHardKeyboardHidden != configuration.hardKeyboardHidden) {
            this.mHardKeyboardHidden = configuration.hardKeyboardHidden;
            if (this.mAutoOrients && this.mSetOrientation) {
                if (this.m_activity != null) {
                    this.m_activity.setRequestedOrientation(2);
                }
                this.mSetOrientation = false;
            }
        }
        if (this.mBeforeOrientation != this.mAfterOrientation && (this.mFinalOrientation == EOrientation.UNKNOWN.ordinal() || this.mAfterOrientation == this.mFinalOrientation)) {
            this.mFinalOrientation = EOrientation.UNKNOWN.ordinal();
            this.mOrientation = this.mAfterOrientation;
            if (AndroidActivityWrapper.GetAndroidActivityWrapper().isApplicationLaunched()) {
                if (this.mView.getVisibleBoundHeight() == this.mView.getVisibleBoundWidth()) {
                    this.nativeOrientationChanged(this.mBeforeOrientation, this.mAfterOrientation);
                    this.mDispatchOrientationChangePending = false;
                    return;
                }
                this.mDispatchOrientationChangePending = true;
            }
        }
    }
    
    public void setAspectRatio(final int n) {
        if (this.m_activity != null) {
            if (this.mNamespaceVersion < 3.3f) {
                this.mSetOrientation = true;
            }
            if (n == EAspectRatio.PORTRAIT.ordinal()) {
                this.m_activity.setRequestedOrientation(1);
                this.mRequestedAspectRatio = 1;
            }
            else if (n == EAspectRatio.LANDSCAPE.ordinal()) {
                this.m_activity.setRequestedOrientation(0);
                this.mRequestedAspectRatio = 0;
            }
            else {
                this.mRequestedAspectRatio = -1;
                if (this.mAutoOrients) {
                    this.m_activity.setRequestedOrientation(2);
                }
            }
            this.mOrientation = this.getCurrentOrientation();
        }
    }
    
    public void setAutoOrients(final boolean mAutoOrients) {
        if (this.m_activity != null) {
            this.mAutoOrients = mAutoOrients;
            if (!this.mAutoOrients) {
                this.m_activity.setRequestedOrientation(5);
                return;
            }
            if (this.mNamespaceVersion < 3.3f || this.mRequestedAspectRatio == -1) {
                this.m_activity.setRequestedOrientation(2);
            }
        }
    }
    
    public void setNearestOrientation(final int n) {
        if (this.m_activity != null) {
            if (n == EOrientation.DEFAULT.ordinal()) {
                this.m_activity.setRequestedOrientation(this.mOsDefaultOrientation);
            }
            else {
                if (n == EOrientation.ROTATED_LEFT.ordinal()) {
                    this.m_activity.setRequestedOrientation(this.mOsRotatedLeftOrientation);
                    return;
                }
                if (n == EOrientation.ROTATED_RIGHT.ordinal()) {
                    this.m_activity.setRequestedOrientation(this.mOsRotatedRightOrientation);
                    return;
                }
                if (n == EOrientation.UPSIDE_DOWN.ordinal()) {
                    this.m_activity.setRequestedOrientation(this.mOsReversedOrientation);
                }
            }
        }
    }
    
    public void setOrientation(final int nearestOrientation) {
        final int mOrientation = this.mOrientation;
        if (Build$VERSION.SDK_INT > 8) {
            this.setNearestOrientation(nearestOrientation);
            this.mSetOrientation = true;
            this.mOrientation = this.getCurrentOrientation();
        }
        else if (nearestOrientation == EOrientation.DEFAULT.ordinal()) {
            if (this.m_activity != null) {
                if (this.mOsDefaultOrientation == 1) {
                    this.m_activity.setRequestedOrientation(1);
                }
                else {
                    this.m_activity.setRequestedOrientation(0);
                }
                this.mSetOrientation = true;
            }
        }
        else if (nearestOrientation == EOrientation.ROTATED_RIGHT.ordinal()) {
            if (this.m_activity != null && this.mOsDefaultOrientation == 1) {
                this.m_activity.setRequestedOrientation(0);
                this.mSetOrientation = true;
            }
        }
        else if (nearestOrientation == EOrientation.ROTATED_LEFT.ordinal() && this.m_activity != null && this.mOsDefaultOrientation == 0) {
            this.m_activity.setRequestedOrientation(1);
            this.mSetOrientation = true;
        }
        final int currentOrientation = this.getCurrentOrientation();
        if (this.mNamespaceVersion >= 3.8f && currentOrientation != mOrientation) {
            this.nativeOrientationChanged(mOrientation, currentOrientation);
        }
    }
    
    public enum EAspectRatio
    {
        LANDSCAPE, 
        PORTRAIT, 
        UNKNOWN;
    }
    
    public enum EDefault
    {
        LANDSCAPE, 
        PORTRAIT;
    }
    
    public enum EOrientation
    {
        DEFAULT, 
        ROTATED_LEFT, 
        ROTATED_RIGHT, 
        UNKNOWN, 
        UPSIDE_DOWN;
    }
}
