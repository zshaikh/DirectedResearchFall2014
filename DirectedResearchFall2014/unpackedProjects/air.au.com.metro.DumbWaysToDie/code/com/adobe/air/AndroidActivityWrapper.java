package com.adobe.air;

import com.adobe.air.telephony.*;
import android.widget.*;
import java.util.concurrent.locks.*;
import com.adobe.air.utils.*;
import java.util.*;
import com.adobe.flashplayer.*;
import android.os.*;
import android.content.pm.*;
import android.content.*;
import java.net.*;
import android.media.*;
import android.content.res.*;
import android.app.*;
import android.graphics.*;
import android.util.*;
import android.view.*;

public class AndroidActivityWrapper
{
    public static final int IMAGE_PICKER_REQUEST_CODE = 2;
    private static final int INVOKE_EVENT_OPEN_URL = 1;
    private static final int INVOKE_EVENT_STANDARD = 0;
    private static final String LOG_TAG = "AndroidActivityWrapper";
    public static final int STILL_PICTURE_REQUEST_CODE = 3;
    public static final int VIDEO_CAPTURE_REQUEST_CODE = 4;
    public static final int WEBVIEW_UPLOAD_FILE_CHOOSER_CODE = 5;
    private static AndroidActivityWrapper sActivityWrapper;
    private static AndroidTelephonyManager sAndroidTelephonyManager;
    private static boolean sApplicationLaunched;
    private static Entrypoints sEntryPoint;
    private static boolean sHasCaptiveRuntime;
    private static AndroidIdleState sIdleStateManager;
    private static boolean sRuntimeLibrariesLoaded;
    private int debuggerPort;
    private KeyguardManager keyGuardManager;
    private boolean mActivateEventPending;
    private List<ActivityResultCallback> mActivityResultListeners;
    private ActivityState mActivityState;
    private List<StateChangeCallback> mActivityStateListeners;
    private ConfigDownloadListener mConfigDownloadListener;
    private boolean mContainsVideo;
    private DebuggerSettings mDebuggerSettings;
    private boolean mDisplayWaitingDialog;
    private String mExtraArgs;
    private boolean mFullScreenSetFromMetaData;
    private int mHardKeyboardHidden;
    private int mHardKeyboardType;
    private List<InputEventCallback> mInputEventListeners;
    private boolean mInvokeEventPendingFromOnCreate;
    private boolean mIsADL;
    private boolean mIsDebuggerMode;
    private boolean mIsFullScreen;
    private String mLibCorePath;
    private OrientationManager mOrientationManager;
    private boolean mRGB565Override;
    private String mRootDir;
    private boolean mScreenOn;
    private boolean mShowDebuggerDialog;
    private String mXmlPath;
    private Activity m_activity;
    private Application m_application;
    private AndroidCameraView m_cameraView;
    private FlashEGL m_flashEGL;
    private FrameLayout m_layout;
    private AIRWindowSurfaceView m_mainView;
    private Condition m_newActivityCondition;
    private Lock m_newActivityLock;
    private RelativeLayout m_overlaysLayout;
    private boolean m_planeBreakCascade;
    private boolean m_planeCascadeInit;
    private int m_planeCascadeStep;
    private List<SurfaceView> m_planes;
    private Context m_runtimeContext;
    private boolean m_skipKickCascade;
    private SurfaceView m_videoView;
    
    static {
        AndroidActivityWrapper.sApplicationLaunched = false;
        AndroidActivityWrapper.sEntryPoint = null;
        AndroidActivityWrapper.sIdleStateManager = null;
        AndroidActivityWrapper.sAndroidTelephonyManager = null;
        AndroidActivityWrapper.sActivityWrapper = null;
        AndroidActivityWrapper.sRuntimeLibrariesLoaded = false;
        AndroidActivityWrapper.sHasCaptiveRuntime = false;
    }
    
    private AndroidActivityWrapper(final Activity activity) {
        super();
        this.m_activity = null;
        this.mConfigDownloadListener = null;
        this.m_application = null;
        this.mActivityResultListeners = null;
        this.m_mainView = null;
        this.m_videoView = null;
        this.m_cameraView = null;
        this.m_layout = null;
        this.m_flashEGL = null;
        this.mXmlPath = null;
        this.mRootDir = null;
        this.mExtraArgs = null;
        this.mIsADL = false;
        this.mRGB565Override = false;
        this.mIsDebuggerMode = false;
        this.mHardKeyboardHidden = 2;
        this.mHardKeyboardType = 0;
        this.mShowDebuggerDialog = false;
        this.mDisplayWaitingDialog = false;
        this.debuggerPort = -1;
        this.mInvokeEventPendingFromOnCreate = false;
        this.mActivateEventPending = false;
        this.mActivityStateListeners = null;
        this.mInputEventListeners = null;
        this.mFullScreenSetFromMetaData = false;
        this.mIsFullScreen = false;
        this.mContainsVideo = false;
        this.mLibCorePath = null;
        this.m_runtimeContext = null;
        this.m_overlaysLayout = null;
        this.m_newActivityLock = null;
        this.m_newActivityCondition = null;
        this.mOrientationManager = null;
        this.keyGuardManager = null;
        this.mScreenOn = true;
        this.mDebuggerSettings = new DebuggerSettings();
        this.mActivityState = ActivityState.STARTED;
        this.m_planes = null;
        this.m_planeCascadeStep = 0;
        this.m_planeBreakCascade = false;
        this.m_planeCascadeInit = false;
        this.m_skipKickCascade = true;
        this.m_activity = activity;
        this.m_newActivityLock = new ReentrantLock();
        this.m_newActivityCondition = this.m_newActivityLock.newCondition();
        this.m_application = activity.getApplication();
        this.LoadRuntimeLibraries();
        this.keyGuardManager = (KeyguardManager)activity.getSystemService("keyguard");
    }
    
    public static AndroidActivityWrapper CreateAndroidActivityWrapper(final Activity activity) {
        return CreateAndroidActivityWrapper(activity, false);
    }
    
    public static AndroidActivityWrapper CreateAndroidActivityWrapper(final Activity activity, final Boolean b) {
        AndroidActivityWrapper.sHasCaptiveRuntime = b;
        if (b) {
            Utils.setRuntimePackageName(activity.getApplicationContext().getPackageName());
        }
        else {
            Utils.setRuntimePackageName("com.adobe.air");
        }
        if (AndroidActivityWrapper.sActivityWrapper == null) {
            AndroidActivityWrapper.sActivityWrapper = new AndroidActivityWrapper(activity);
        }
        return AndroidActivityWrapper.sActivityWrapper;
    }
    
    public static AndroidActivityWrapper GetAndroidActivityWrapper() {
        return AndroidActivityWrapper.sActivityWrapper;
    }
    
    public static boolean GetHasCaptiveRuntime() {
        return AndroidActivityWrapper.sHasCaptiveRuntime;
    }
    
    private void LaunchApplication(final Activity p0, final AIRWindowSurfaceView p1, final String p2, final String p3, final String p4, final boolean p5, final boolean p6) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       com/adobe/air/AndroidActivityWrapper.sApplicationLaunched:Z
        //     3: ifeq            7
        //     6: return         
        //     7: iload           6
        //     9: ifeq            338
        //    12: aload_1        
        //    13: invokevirtual   android/app/Activity.getIntent:()Landroid/content/Intent;
        //    16: ldc_w           "args"
        //    19: invokevirtual   android/content/Intent.getStringExtra:(Ljava/lang/String;)Ljava/lang/String;
        //    22: astore          18
        //    24: aload           18
        //    26: ifnull          324
        //    29: aload           18
        //    31: ldc_w           " "
        //    34: invokevirtual   java/lang/String.split:(Ljava/lang/String;)[Ljava/lang/String;
        //    37: astore          19
        //    39: aload           19
        //    41: iconst_0       
        //    42: aaload         
        //    43: astore          20
        //    45: aload           19
        //    47: iconst_1       
        //    48: aaload         
        //    49: astore          22
        //    51: aload           19
        //    53: arraylength    
        //    54: iconst_2       
        //    55: if_icmplt       317
        //    58: new             Ljava/lang/StringBuilder;
        //    61: dup            
        //    62: invokespecial   java/lang/StringBuilder.<init>:()V
        //    65: aload           19
        //    67: iconst_2       
        //    68: aaload         
        //    69: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    72: ldc_w           " "
        //    75: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    78: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    81: astore          33
        //    83: aload           33
        //    85: astore          24
        //    87: aload           24
        //    89: astore          25
        //    91: iconst_3       
        //    92: istore          26
        //    94: iload           26
        //    96: aload           19
        //    98: arraylength    
        //    99: if_icmpge       143
        //   102: new             Ljava/lang/StringBuilder;
        //   105: dup            
        //   106: invokespecial   java/lang/StringBuilder.<init>:()V
        //   109: aload           25
        //   111: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   114: aload           19
        //   116: iload           26
        //   118: aaload         
        //   119: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   122: ldc_w           " "
        //   125: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   128: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   131: astore          32
        //   133: aload           32
        //   135: astore          25
        //   137: iinc            26, 1
        //   140: goto            94
        //   143: aload           25
        //   145: astore          28
        //   147: aload           20
        //   149: astore          29
        //   151: aload           22
        //   153: astore          30
        //   155: aload           28
        //   157: astore          8
        //   159: aload           30
        //   161: astore          31
        //   163: aload           29
        //   165: astore          10
        //   167: aload           31
        //   169: astore          9
        //   171: aload_0        
        //   172: invokevirtual   com/adobe/air/AndroidActivityWrapper.getApplicationContext:()Landroid/content/Context;
        //   175: astore          12
        //   177: new             Lcom/adobe/air/Entrypoints;
        //   180: dup            
        //   181: invokespecial   com/adobe/air/Entrypoints.<init>:()V
        //   184: putstatic       com/adobe/air/AndroidActivityWrapper.sEntryPoint:Lcom/adobe/air/Entrypoints;
        //   187: getstatic       com/adobe/air/AndroidActivityWrapper.sEntryPoint:Lcom/adobe/air/Entrypoints;
        //   190: aload           10
        //   192: aload           9
        //   194: aload           8
        //   196: invokestatic    com/adobe/air/utils/Utils.getRuntimePackageName:()Ljava/lang/String;
        //   199: aload_2        
        //   200: aload_1        
        //   201: invokevirtual   android/app/Activity.getApplication:()Landroid/app/Application;
        //   204: aload_1        
        //   205: invokevirtual   android/app/Activity.getApplicationInfo:()Landroid/content/pm/ApplicationInfo;
        //   208: aload           12
        //   210: aload_0        
        //   211: iload           6
        //   213: iload           7
        //   215: invokevirtual   com/adobe/air/Entrypoints.EntryMain:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
        //   218: aload           12
        //   220: invokestatic    com/adobe/air/AndroidIdleState.GetIdleStateManager:(Landroid/content/Context;)Lcom/adobe/air/AndroidIdleState;
        //   223: putstatic       com/adobe/air/AndroidActivityWrapper.sIdleStateManager:Lcom/adobe/air/AndroidIdleState;
        //   226: iconst_1       
        //   227: putstatic       com/adobe/air/AndroidActivityWrapper.sApplicationLaunched:Z
        //   230: return         
        //   231: astore          11
        //   233: return         
        //   234: astore          13
        //   236: aload           5
        //   238: astore          14
        //   240: aload           4
        //   242: astore          15
        //   244: aload_3        
        //   245: astore          16
        //   247: aload           14
        //   249: astore          8
        //   251: aload           15
        //   253: astore          17
        //   255: aload           16
        //   257: astore          10
        //   259: aload           17
        //   261: astore          9
        //   263: goto            171
        //   266: astore          21
        //   268: aload           5
        //   270: astore          14
        //   272: aload           20
        //   274: astore          16
        //   276: aload           4
        //   278: astore          15
        //   280: goto            247
        //   283: astore          23
        //   285: aload           5
        //   287: astore          14
        //   289: aload           20
        //   291: astore          16
        //   293: aload           22
        //   295: astore          15
        //   297: goto            247
        //   300: astore          27
        //   302: aload           25
        //   304: astore          14
        //   306: aload           20
        //   308: astore          16
        //   310: aload           22
        //   312: astore          15
        //   314: goto            247
        //   317: aload           5
        //   319: astore          24
        //   321: goto            87
        //   324: aload           5
        //   326: astore          28
        //   328: aload           4
        //   330: astore          30
        //   332: aload_3        
        //   333: astore          29
        //   335: goto            155
        //   338: aload           5
        //   340: astore          8
        //   342: aload           4
        //   344: astore          9
        //   346: aload_3        
        //   347: astore          10
        //   349: goto            171
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  12     24     234    247    Ljava/lang/Exception;
        //  29     45     234    247    Ljava/lang/Exception;
        //  45     51     266    283    Ljava/lang/Exception;
        //  51     83     283    300    Ljava/lang/Exception;
        //  94     133    300    317    Ljava/lang/Exception;
        //  171    230    231    234    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 167, Size: 167
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
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
    
    private void LoadRuntimeLibraries() {
        if (AndroidActivityWrapper.sRuntimeLibrariesLoaded) {
            return;
        }
        try {
            System.load(this.GetLibCorePath());
            AndroidActivityWrapper.sRuntimeLibrariesLoaded = true;
        }
        catch (UnsatisfiedLinkError unsatisfiedLinkError) {}
    }
    
    private void SetVisible(final boolean b) {
        if (b) {
            if (this.isSurfaceValid() && this.mScreenOn && this.mActivityState != ActivityState.STOPPED && this.mActivityState != ActivityState.DESTROYED) {
                this.nativeSetVisible(true);
            }
        }
        else if (this.isApplicationLaunched()) {
            this.nativeSetVisible(false);
        }
    }
    
    private void SignalNewActivityCreated() {
        this.m_newActivityLock.lock();
        this.m_newActivityCondition.signalAll();
        this.m_newActivityLock.unlock();
    }
    
    private void afterOnCreate() {
        try {
            if (this.m_planes == null) {
                this.m_planes = new ArrayList<SurfaceView>(8);
                for (int i = 0; i < 8; ++i) {
                    this.m_planes.add(i, null);
                }
            }
            final Context applicationContext = this.getApplicationContext();
            this.m_layout = new FrameLayout(applicationContext);
            this.m_mainView = new AIRWindowSurfaceView(applicationContext, this);
            if (this.m_cameraView == null && this.m_runtimeContext.checkCallingOrSelfPermission("android.permission.CAMERA") == 0) {
                this.m_cameraView = new AndroidCameraView(applicationContext, this);
            }
            if (this.m_cameraView != null) {
                this.m_layout.addView((View)this.m_cameraView, 8, 16);
            }
            final Bundle metaData = this.m_activity.getPackageManager().getActivityInfo(this.m_activity.getComponentName(), 128).metaData;
            if (metaData != null) {
                final Boolean b = (Boolean)metaData.get("containsVideo");
                if (b != null && b) {
                    this.mContainsVideo = b;
                    this.m_videoView = this.m_mainView.getVideoView();
                    this.m_layout.addView((View)this.m_videoView, 0);
                }
            }
            this.m_layout.addView((View)this.m_mainView);
            if (this.m_overlaysLayout != null) {
                this.m_layout.addView((View)this.m_overlaysLayout);
            }
            this.m_activity.setContentView((View)this.m_layout);
            if ((this.mIsADL || this.mShowDebuggerDialog) && this.m_activity != null && this.m_activity.getCurrentFocus() != this.m_mainView) {
                this.m_mainView.requestFocus();
                this.m_mainView.onWindowFocusChanged(true);
            }
            if (!this.mFullScreenSetFromMetaData) {
                this.setFullScreenFromMetaData();
            }
            this.mFullScreenSetFromMetaData = true;
            if (this.getIsFullScreen()) {
                this.m_mainView.setFullScreen();
            }
            this.mHardKeyboardHidden = this.m_activity.getResources().getConfiguration().hardKeyboardHidden;
            this.mHardKeyboardType = this.m_activity.getResources().getConfiguration().keyboard;
            (this.mOrientationManager = OrientationManager.getOrientationManager()).onActivityCreated(this.m_activity, this.m_mainView);
            this.callActivityStateListeners();
            HDMIUtils.initHelper(applicationContext);
        }
        catch (Exception ex) {}
    }
    
    private void callActivityResultListeners(final int n, final int n2, final Intent intent) {
        if (this.mActivityResultListeners != null) {
            try {
                for (int size = this.mActivityResultListeners.size(), i = 0; i < size; ++i) {
                    this.mActivityResultListeners.get(i).onActivityResult(n, n2, intent);
                }
            }
            catch (Exception ex) {}
        }
    }
    
    private void callActivityStateListeners() {
        if (this.mActivityStateListeners != null) {
            try {
                for (int size = this.mActivityStateListeners.size(), i = 0; i < size; ++i) {
                    this.mActivityStateListeners.get(i).onActivityStateChanged(this.mActivityState);
                }
            }
            catch (Exception ex) {}
        }
    }
    
    private void callActivityStateListeners(final Configuration configuration) {
        if (this.mActivityStateListeners != null) {
            try {
                for (int size = this.mActivityStateListeners.size(), i = 0; i < size; ++i) {
                    this.mActivityStateListeners.get(i).onConfigurationChanged(configuration);
                }
            }
            catch (Exception ex) {}
        }
    }
    
    private boolean callInputEventListeners(final KeyEvent p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/adobe/air/AndroidActivityWrapper.mInputEventListeners:Ljava/util/List;
        //     4: ifnonnull       9
        //     7: iconst_0       
        //     8: ireturn        
        //     9: aload_0        
        //    10: getfield        com/adobe/air/AndroidActivityWrapper.mInputEventListeners:Ljava/util/List;
        //    13: invokeinterface java/util/List.size:()I
        //    18: istore_3       
        //    19: iconst_0       
        //    20: istore          4
        //    22: iconst_0       
        //    23: istore          5
        //    25: iload           4
        //    27: iload_3        
        //    28: if_icmpge       82
        //    31: iload           5
        //    33: ifne            63
        //    36: aload_0        
        //    37: getfield        com/adobe/air/AndroidActivityWrapper.mInputEventListeners:Ljava/util/List;
        //    40: iload           4
        //    42: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //    47: checkcast       Lcom/adobe/air/AndroidActivityWrapper$InputEventCallback;
        //    50: aload_1        
        //    51: invokeinterface com/adobe/air/AndroidActivityWrapper$InputEventCallback.onKeyEvent:(Landroid/view/KeyEvent;)Z
        //    56: istore          8
        //    58: iload           8
        //    60: ifeq            76
        //    63: iconst_1       
        //    64: istore          6
        //    66: iinc            4, 1
        //    69: iload           6
        //    71: istore          5
        //    73: goto            25
        //    76: iconst_0       
        //    77: istore          6
        //    79: goto            66
        //    82: iload           5
        //    84: ireturn        
        //    85: astore_2       
        //    86: iconst_0       
        //    87: ireturn        
        //    88: astore          7
        //    90: iload           5
        //    92: ireturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  9      19     85     88     Ljava/lang/Exception;
        //  36     58     88     93     Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0063:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
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
    
    private boolean callInputEventListeners(final MotionEvent p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/adobe/air/AndroidActivityWrapper.mInputEventListeners:Ljava/util/List;
        //     4: ifnonnull       9
        //     7: iconst_0       
        //     8: ireturn        
        //     9: aload_0        
        //    10: getfield        com/adobe/air/AndroidActivityWrapper.mInputEventListeners:Ljava/util/List;
        //    13: invokeinterface java/util/List.size:()I
        //    18: istore_3       
        //    19: iconst_0       
        //    20: istore          4
        //    22: iconst_0       
        //    23: istore          5
        //    25: iload           4
        //    27: iload_3        
        //    28: if_icmpge       82
        //    31: iload           5
        //    33: ifne            63
        //    36: aload_0        
        //    37: getfield        com/adobe/air/AndroidActivityWrapper.mInputEventListeners:Ljava/util/List;
        //    40: iload           4
        //    42: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //    47: checkcast       Lcom/adobe/air/AndroidActivityWrapper$InputEventCallback;
        //    50: aload_1        
        //    51: invokeinterface com/adobe/air/AndroidActivityWrapper$InputEventCallback.onGenericMotionEvent:(Landroid/view/MotionEvent;)Z
        //    56: istore          8
        //    58: iload           8
        //    60: ifeq            76
        //    63: iconst_1       
        //    64: istore          6
        //    66: iinc            4, 1
        //    69: iload           6
        //    71: istore          5
        //    73: goto            25
        //    76: iconst_0       
        //    77: istore          6
        //    79: goto            66
        //    82: iload           5
        //    84: ireturn        
        //    85: astore_2       
        //    86: iconst_0       
        //    87: ireturn        
        //    88: astore          7
        //    90: iload           5
        //    92: ireturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  9      19     85     88     Ljava/lang/Exception;
        //  36     58     88     93     Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0063:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
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
    
    private void checkForDebuggerAndLaunchDialog() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/adobe/air/AndroidActivityWrapper.mIsADL:Z
        //     4: ifne            510
        //     7: new             Lcom/adobe/air/ResourceFileManager;
        //    10: dup            
        //    11: aload_0        
        //    12: getfield        com/adobe/air/AndroidActivityWrapper.m_activity:Landroid/app/Activity;
        //    15: invokespecial   com/adobe/air/ResourceFileManager.<init>:(Landroid/content/Context;)V
        //    18: astore_1       
        //    19: getstatic       com/adobe/air/AndroidActivityWrapper$DebugMode.None:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;
        //    22: astore_2       
        //    23: aload_1        
        //    24: aload_1        
        //    25: ldc_w           "raw.debuginfo"
        //    28: invokevirtual   com/adobe/air/ResourceFileManager.lookupResId:(Ljava/lang/String;)I
        //    31: invokevirtual   com/adobe/air/ResourceFileManager.resExists:(I)Z
        //    34: ifeq            500
        //    37: aload_1        
        //    38: aload_1        
        //    39: ldc_w           "raw.debuginfo"
        //    42: invokevirtual   com/adobe/air/ResourceFileManager.lookupResId:(Ljava/lang/String;)I
        //    45: invokevirtual   com/adobe/air/ResourceFileManager.getFileStreamFromRawRes:(I)Ljava/io/InputStream;
        //    48: ldc_w           "="
        //    51: invokestatic    com/adobe/air/utils/Utils.parseKeyValuePairFile:(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/HashMap;
        //    54: astore          24
        //    56: aload           24
        //    58: ldc_w           "incomingDebugPort"
        //    61: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    64: checkcast       Ljava/lang/String;
        //    67: astore          25
        //    69: aload           25
        //    71: ifnull          91
        //    74: aload_0        
        //    75: aload           25
        //    77: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;)I
        //    80: putfield        com/adobe/air/AndroidActivityWrapper.debuggerPort:I
        //    83: getstatic       com/adobe/air/AndroidActivityWrapper$DebugMode.ListenMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;
        //    86: astore          30
        //    88: aload           30
        //    90: astore_2       
        //    91: aload           24
        //    93: ldc_w           "outgoingDebugHost"
        //    96: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    99: checkcast       Ljava/lang/String;
        //   102: astore          26
        //   104: aload           26
        //   106: ifnull          500
        //   109: aload_2        
        //   110: getstatic       com/adobe/air/AndroidActivityWrapper$DebugMode.ListenMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;
        //   113: if_acmpne       131
        //   116: getstatic       com/adobe/air/AndroidActivityWrapper$DebugMode.ConflictMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;
        //   119: pop            
        //   120: new             Ljava/lang/Exception;
        //   123: dup            
        //   124: ldc_w           "listen and connect are mutually exclusive."
        //   127: invokespecial   java/lang/Exception.<init>:(Ljava/lang/String;)V
        //   130: athrow         
        //   131: getstatic       com/adobe/air/AndroidActivityWrapper$DebugMode.ConnectMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;
        //   134: astore          27
        //   136: aload           26
        //   138: astore          4
        //   140: aload           27
        //   142: astore_3       
        //   143: getstatic       com/adobe/air/AndroidActivityWrapper$2.$SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode:[I
        //   146: aload_3        
        //   147: invokevirtual   com/adobe/air/AndroidActivityWrapper$DebugMode.ordinal:()I
        //   150: iaload         
        //   151: tableswitch {
        //                2: 181
        //                3: 419
        //                4: 448
        //                5: 510
        //          default: 180
        //        }
        //   180: return         
        //   181: new             Ljava/net/ServerSocket;
        //   184: dup            
        //   185: aload_0        
        //   186: getfield        com/adobe/air/AndroidActivityWrapper.debuggerPort:I
        //   189: iconst_1       
        //   190: invokestatic    java/net/InetAddress.getLocalHost:()Ljava/net/InetAddress;
        //   193: invokespecial   java/net/ServerSocket.<init>:(IILjava/net/InetAddress;)V
        //   196: astore          5
        //   198: aload           5
        //   200: invokevirtual   java/net/ServerSocket.close:()V
        //   203: aload           5
        //   205: ifnull          213
        //   208: aload           5
        //   210: invokevirtual   java/net/ServerSocket.close:()V
        //   213: iconst_1       
        //   214: istore          7
        //   216: iload           7
        //   218: ifeq            402
        //   221: aload_0        
        //   222: iconst_1       
        //   223: putfield        com/adobe/air/AndroidActivityWrapper.mDisplayWaitingDialog:Z
        //   226: aload_0        
        //   227: invokespecial   com/adobe/air/AndroidActivityWrapper.afterOnCreate:()V
        //   230: aload_0        
        //   231: getfield        com/adobe/air/AndroidActivityWrapper.mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;
        //   234: astore          8
        //   236: aload_3        
        //   237: getstatic       com/adobe/air/AndroidActivityWrapper$DebugMode.ListenMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;
        //   240: if_acmpne       413
        //   243: iconst_1       
        //   244: istore          9
        //   246: aload           8
        //   248: iload           9
        //   250: invokevirtual   com/adobe/air/DebuggerSettings.setListen:(Z)V
        //   253: aload_0        
        //   254: getfield        com/adobe/air/AndroidActivityWrapper.mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;
        //   257: aload_0        
        //   258: getfield        com/adobe/air/AndroidActivityWrapper.debuggerPort:I
        //   261: invokevirtual   com/adobe/air/DebuggerSettings.setDebugerPort:(I)V
        //   264: return         
        //   265: astore          20
        //   267: iconst_1       
        //   268: istore          7
        //   270: goto            216
        //   273: astore          22
        //   275: aconst_null    
        //   276: astore          5
        //   278: aload           5
        //   280: ifnull          288
        //   283: aload           5
        //   285: invokevirtual   java/net/ServerSocket.close:()V
        //   288: iconst_0       
        //   289: istore          7
        //   291: goto            216
        //   294: astore          10
        //   296: iconst_0       
        //   297: istore          7
        //   299: goto            216
        //   302: astore          21
        //   304: aconst_null    
        //   305: astore          5
        //   307: aload           5
        //   309: ifnull          317
        //   312: aload           5
        //   314: invokevirtual   java/net/ServerSocket.close:()V
        //   317: iconst_0       
        //   318: istore          7
        //   320: goto            216
        //   323: astore          12
        //   325: iconst_0       
        //   326: istore          7
        //   328: goto            216
        //   331: astore          15
        //   333: aconst_null    
        //   334: astore          14
        //   336: aload           15
        //   338: invokevirtual   java/lang/Object.getClass:()Ljava/lang/Class;
        //   341: invokevirtual   java/lang/Class.getName:()Ljava/lang/String;
        //   344: ldc_w           "android.os.NetworkOnMainThreadException"
        //   347: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   350: istore          18
        //   352: iload           18
        //   354: ifeq            378
        //   357: iconst_1       
        //   358: istore          7
        //   360: aload           14
        //   362: ifnull          216
        //   365: aload           14
        //   367: invokevirtual   java/net/ServerSocket.close:()V
        //   370: goto            216
        //   373: astore          19
        //   375: goto            216
        //   378: iconst_0       
        //   379: istore          7
        //   381: goto            360
        //   384: astore          16
        //   386: aconst_null    
        //   387: astore          5
        //   389: aload           5
        //   391: ifnull          399
        //   394: aload           5
        //   396: invokevirtual   java/net/ServerSocket.close:()V
        //   399: aload           16
        //   401: athrow         
        //   402: aload_0        
        //   403: aload_0        
        //   404: getfield        com/adobe/air/AndroidActivityWrapper.debuggerPort:I
        //   407: invokespecial   com/adobe/air/AndroidActivityWrapper.showDialogUnableToListenOnPort:(I)V
        //   410: goto            230
        //   413: iconst_0       
        //   414: istore          9
        //   416: goto            246
        //   419: aload           4
        //   421: invokestatic    com/adobe/air/utils/Utils.nativeConnectDebuggerSocket:(Ljava/lang/String;)Z
        //   424: ifne            434
        //   427: aload_0        
        //   428: aload           4
        //   430: invokespecial   com/adobe/air/AndroidActivityWrapper.showDialogforIpAddress:(Ljava/lang/String;)V
        //   433: return         
        //   434: aload_0        
        //   435: getfield        com/adobe/air/AndroidActivityWrapper.mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;
        //   438: aload           4
        //   440: invokevirtual   com/adobe/air/DebuggerSettings.setHost:(Ljava/lang/String;)V
        //   443: aload_0        
        //   444: invokespecial   com/adobe/air/AndroidActivityWrapper.afterOnCreate:()V
        //   447: return         
        //   448: aload_0        
        //   449: invokespecial   com/adobe/air/AndroidActivityWrapper.afterOnCreate:()V
        //   452: return         
        //   453: astore          17
        //   455: goto            399
        //   458: astore          16
        //   460: goto            389
        //   463: astore          16
        //   465: aload           14
        //   467: astore          5
        //   469: goto            389
        //   472: astore          13
        //   474: aload           5
        //   476: astore          14
        //   478: aload           13
        //   480: astore          15
        //   482: goto            336
        //   485: astore          11
        //   487: goto            307
        //   490: astore          6
        //   492: goto            278
        //   495: astore          29
        //   497: goto            91
        //   500: aload_2        
        //   501: astore_3       
        //   502: aconst_null    
        //   503: astore          4
        //   505: goto            143
        //   508: astore          23
        //   510: return         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                             
        //  -----  -----  -----  -----  ---------------------------------
        //  37     69     508    510    Ljava/lang/Exception;
        //  74     88     495    500    Ljava/lang/NumberFormatException;
        //  74     88     508    510    Ljava/lang/Exception;
        //  91     104    508    510    Ljava/lang/Exception;
        //  109    131    508    510    Ljava/lang/Exception;
        //  131    136    508    510    Ljava/lang/Exception;
        //  181    198    273    278    Ljava/io/IOException;
        //  181    198    302    307    Ljava/lang/SecurityException;
        //  181    198    331    336    Ljava/lang/Exception;
        //  181    198    384    389    Any
        //  198    203    490    495    Ljava/io/IOException;
        //  198    203    485    490    Ljava/lang/SecurityException;
        //  198    203    472    485    Ljava/lang/Exception;
        //  198    203    458    463    Any
        //  208    213    265    273    Ljava/io/IOException;
        //  283    288    294    302    Ljava/io/IOException;
        //  312    317    323    331    Ljava/io/IOException;
        //  336    352    463    472    Any
        //  365    370    373    378    Ljava/io/IOException;
        //  394    399    453    458    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 225, Size: 225
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3419)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3419)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
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
    
    private void closeDialogWaitingForConnection() {
        final Context applicationContext = this.getApplicationContext();
        try {
            final Intent intent = new Intent();
            intent.setAction("android.intent.action.MAIN");
            intent.addCategory("RemoteDebuggerListenerDialogClose");
            intent.putExtra("debuggerPort", this.debuggerPort);
            applicationContext.sendBroadcast(intent);
        }
        catch (Exception ex) {}
    }
    
    private void initializeAndroidAppVars(final ApplicationInfo applicationInfo) {
        ApplicationFileManager.setAndroidPackageName(applicationInfo.packageName);
        ApplicationFileManager.setAndroidAPKPath(applicationInfo.sourceDir);
        ApplicationFileManager.processAndroidDataPath(this.m_application.getCacheDir().getAbsolutePath());
    }
    
    public static boolean isGingerbread() {
        return Build$VERSION.SDK_INT >= 9;
    }
    
    public static boolean isHoneycomb() {
        return Build$VERSION.SDK_INT >= 11;
    }
    
    public static boolean isIceCreamSandwich() {
        return Build$VERSION.SDK_INT >= 14;
    }
    
    public static boolean isJellybean() {
        return Build$VERSION.SDK_INT >= 16;
    }
    
    private native void nativeActivateEvent();
    
    private native void nativeDeactivateEvent();
    
    private native void nativeLowMemoryEvent();
    
    private native void nativeOnFocusListener(final boolean p0);
    
    private native void nativeSendInvokeEventWithData(final String p0, final String p1, final int p2);
    
    private native void nativeSetVisible(final boolean p0);
    
    private void parseArgs(final Activity p0, final String[] p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc_w           ""
        //     3: astore_3       
        //     4: aload_2        
        //     5: iconst_0       
        //     6: aaload         
        //     7: astore          13
        //     9: aload_2        
        //    10: iconst_1       
        //    11: aaload         
        //    12: astore          15
        //    14: aload_2        
        //    15: iconst_2       
        //    16: aaload         
        //    17: astore          10
        //    19: aload_2        
        //    20: iconst_3       
        //    21: aaload         
        //    22: astore          18
        //    24: aload_2        
        //    25: iconst_4       
        //    26: aaload         
        //    27: astore          20
        //    29: aload           13
        //    31: astore          8
        //    33: aload           20
        //    35: astore          12
        //    37: aload           18
        //    39: astore          11
        //    41: aload           15
        //    43: astore          9
        //    45: aload_0        
        //    46: aload           10
        //    48: putfield        com/adobe/air/AndroidActivityWrapper.mExtraArgs:Ljava/lang/String;
        //    51: aload_0        
        //    52: aload           11
        //    54: invokestatic    java/lang/Boolean.valueOf:(Ljava/lang/String;)Ljava/lang/Boolean;
        //    57: invokevirtual   java/lang/Boolean.booleanValue:()Z
        //    60: putfield        com/adobe/air/AndroidActivityWrapper.mIsADL:Z
        //    63: aload_0        
        //    64: aload           12
        //    66: invokestatic    java/lang/Boolean.valueOf:(Ljava/lang/String;)Ljava/lang/Boolean;
        //    69: invokevirtual   java/lang/Boolean.booleanValue:()Z
        //    72: putfield        com/adobe/air/AndroidActivityWrapper.mIsDebuggerMode:Z
        //    75: aload_0        
        //    76: aload_0        
        //    77: getfield        com/adobe/air/AndroidActivityWrapper.m_activity:Landroid/app/Activity;
        //    80: invokevirtual   android/app/Activity.getApplicationInfo:()Landroid/content/pm/ApplicationInfo;
        //    83: invokespecial   com/adobe/air/AndroidActivityWrapper.initializeAndroidAppVars:(Landroid/content/pm/ApplicationInfo;)V
        //    86: aload_0        
        //    87: getfield        com/adobe/air/AndroidActivityWrapper.mIsADL:Z
        //    90: ifeq            142
        //    93: aload_0        
        //    94: aload           8
        //    96: putfield        com/adobe/air/AndroidActivityWrapper.mXmlPath:Ljava/lang/String;
        //    99: aload_0        
        //   100: aload           9
        //   102: putfield        com/adobe/air/AndroidActivityWrapper.mRootDir:Ljava/lang/String;
        //   105: return         
        //   106: astore          4
        //   108: ldc_w           "false"
        //   111: astore          5
        //   113: aload_3        
        //   114: astore          6
        //   116: aload_3        
        //   117: astore          7
        //   119: aload_3        
        //   120: astore          8
        //   122: aload           7
        //   124: astore          9
        //   126: aload           6
        //   128: astore          10
        //   130: aload           5
        //   132: astore          11
        //   134: ldc_w           "false"
        //   137: astore          12
        //   139: goto            45
        //   142: aload_0        
        //   143: invokestatic    com/adobe/air/ApplicationFileManager.getAppXMLRoot:()Ljava/lang/String;
        //   146: putfield        com/adobe/air/AndroidActivityWrapper.mXmlPath:Ljava/lang/String;
        //   149: aload_0        
        //   150: invokestatic    com/adobe/air/ApplicationFileManager.getAppRoot:()Ljava/lang/String;
        //   153: putfield        com/adobe/air/AndroidActivityWrapper.mRootDir:Ljava/lang/String;
        //   156: return         
        //   157: astore          14
        //   159: aload_3        
        //   160: astore          6
        //   162: aload_3        
        //   163: astore          7
        //   165: aload           13
        //   167: astore_3       
        //   168: ldc_w           "false"
        //   171: astore          5
        //   173: goto            119
        //   176: astore          16
        //   178: aload           15
        //   180: astore          7
        //   182: aload_3        
        //   183: astore          6
        //   185: aload           13
        //   187: astore_3       
        //   188: ldc_w           "false"
        //   191: astore          5
        //   193: goto            119
        //   196: astore          17
        //   198: aload           13
        //   200: astore_3       
        //   201: ldc_w           "false"
        //   204: astore          5
        //   206: aload           10
        //   208: astore          6
        //   210: aload           15
        //   212: astore          7
        //   214: goto            119
        //   217: astore          19
        //   219: aload           13
        //   221: astore_3       
        //   222: aload           18
        //   224: astore          5
        //   226: aload           10
        //   228: astore          6
        //   230: aload           15
        //   232: astore          7
        //   234: goto            119
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                      
        //  -----  -----  -----  -----  ------------------------------------------
        //  4      9      106    119    Ljava/lang/ArrayIndexOutOfBoundsException;
        //  9      14     157    176    Ljava/lang/ArrayIndexOutOfBoundsException;
        //  14     19     176    196    Ljava/lang/ArrayIndexOutOfBoundsException;
        //  19     24     196    217    Ljava/lang/ArrayIndexOutOfBoundsException;
        //  24     29     217    237    Ljava/lang/ArrayIndexOutOfBoundsException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 123, Size: 123
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
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
    
    private boolean planeRemovedSuccessfully(final SurfaceView surfaceView) {
        return !surfaceView.getHolder().getSurface().isValid() || ((Build.MODEL.equals("LT18i") || Build.MODEL.equals("LT15i") || Build.MODEL.equals("Arc")) && isIceCreamSandwich() && this.m_layout.indexOfChild((View)surfaceView) < 0);
    }
    
    private void setFullScreenFromMetaData() {
        try {
            final Bundle metaData = this.m_activity.getPackageManager().getActivityInfo(this.m_activity.getComponentName(), 128).metaData;
            if (metaData == null) {
                return;
            }
            final Boolean b = (Boolean)metaData.get("fullScreen");
            if (b != null && b) {
                this.m_mainView.setFullScreen();
            }
        }
        catch (PackageManager$NameNotFoundException ex) {}
    }
    
    private void setMainView(final View mainView) {
        if (!AndroidActivityWrapper.sApplicationLaunched || AndroidActivityWrapper.sEntryPoint == null || !this.isResumed()) {
            return;
        }
        try {
            AndroidActivityWrapper.sEntryPoint.setMainView(mainView);
        }
        catch (Exception ex) {}
    }
    
    private void showDialogUnableToListenOnPort(final int n) {
        new ListenErrorDialog(this.m_activity, n).createAndShowDialog();
    }
    
    private void showDialogWaitingForConnection(final int n) {
        this.getApplicationContext();
        if (AndroidActivityWrapper.sHasCaptiveRuntime) {
            new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                        Thread.sleep(30000L);
                        new Socket(InetAddress.getLocalHost(), n).close();
                    }
                    catch (Exception ex) {}
                }
            }).start();
            return;
        }
        try {
            final Intent intent = new Intent(this.m_runtimeContext, (Class)RemoteDebuggerListenerDialog.class);
            intent.setAction("android.intent.action.MAIN");
            intent.addCategory("RemoteDebuggerListenerDialog");
            intent.putExtra("debuggerPort", n);
            this.m_activity.startActivity(intent);
        }
        catch (Exception ex) {}
    }
    
    private void showDialogforIpAddress(final String s) {
        this.getApplicationContext();
        new RemoteDebuggerDialog(this.m_activity).createAndShowDialog(s);
    }
    
    public void BroadcastIntent(final String action, final String s) {
        try {
            this.getDefaultContext().startActivity(Intent.parseUri(s, 0).setAction(action).addFlags(this.getDefaultIntentFlags()));
        }
        catch (ActivityNotFoundException ex) {}
        catch (URISyntaxException ex2) {}
    }
    
    public String GetAppCacheDirectory() {
        return this.m_application.getCacheDir().getAbsolutePath();
    }
    
    public String GetAppDataDirectory() {
        return this.m_application.getApplicationInfo().dataDir;
    }
    
    public DebuggerSettings GetDebuggerSettings() {
        return this.mDebuggerSettings;
    }
    
    public String GetLibCorePath() {
        if (this.mLibCorePath == null) {
            this.mLibCorePath = Utils.GetLibCorePath((Context)this.m_application);
        }
        return this.mLibCorePath;
    }
    
    public String GetRuntimeDataDirectory() {
        return this.m_runtimeContext.getApplicationInfo().dataDir + "/";
    }
    
    public void LaunchMarketPlaceForAIR(final String s) {
        while (true) {
            Label_0038: {
                if (s != null) {
                    break Label_0038;
                }
                final String string = "market://details?id=" + Utils.getRuntimePackageName();
                try {
                    this.BroadcastIntent("android.intent.action.VIEW", string);
                    return;
                }
                catch (Exception ex) {
                    return;
                }
            }
            final String string = s;
            continue;
        }
    }
    
    public void SendIntentToRuntime(final Class<?> clazz, final String action, final String s) {
        try {
            final Intent intent = new Intent(this.m_runtimeContext, (Class)clazz);
            intent.setAction(action);
            intent.addCategory(s);
            this.m_activity.startActivity(intent);
        }
        catch (Exception ex) {}
    }
    
    public void SendIntentToRuntime(final Class<?> clazz, final String action, final String s, final String s2, final String s3) {
        try {
            final Intent intent = new Intent(this.m_runtimeContext, (Class)clazz);
            intent.setAction(action);
            intent.addCategory(s);
            intent.putExtra(s2, s3);
            this.m_activity.startActivity(intent);
        }
        catch (Exception ex) {}
    }
    
    public void SendInvokeEvent() {
        final Intent intent = this.m_activity.getIntent();
        final String dataString = intent.getDataString();
        int n = 0;
        if (dataString != null) {
            n = 1;
        }
        this.nativeSendInvokeEventWithData(dataString, intent.getAction(), n);
    }
    
    public void ShowImmediateUpdateDialog() {
        while (true) {
            while (true) {
                while (true) {
                    try {
                        final Bundle metaData = this.m_activity.getPackageManager().getActivityInfo(this.m_activity.getComponentName(), 128).metaData;
                        if (metaData != null) {
                            final String s = (String)metaData.get("airDownloadURL");
                            final String s2 = s;
                            if (s2 != null) {
                                this.SendIntentToRuntime(AIRUpdateDialog.class, "android.intent.action.MAIN", "AIRUpdateDialog", "airDownloadURL", s2);
                                return;
                            }
                            this.SendIntentToRuntime(AIRUpdateDialog.class, "android.intent.action.MAIN", "AIRUpdateDialog");
                            return;
                        }
                    }
                    catch (PackageManager$NameNotFoundException ex) {
                        final String s2 = null;
                        continue;
                    }
                    break;
                }
                final String s = null;
                continue;
            }
        }
    }
    
    public void StartDownloadConfigService() {
        final Intent intent = new Intent();
        intent.setPackage(Utils.getRuntimePackageName());
        intent.setAction("com.adobe.air.DownloadConfig");
        try {
            this.getApplicationContext().startService(intent);
        }
        catch (SecurityException ex) {}
    }
    
    public Activity WaitForNewActivity() {
        this.m_newActivityLock.lock();
        try {
            if (this.m_activity == null) {
                this.m_newActivityCondition.await();
            }
            this.m_newActivityLock.unlock();
            return this.m_activity;
        }
        catch (InterruptedException ex) {
            this.m_newActivityLock.unlock();
            return this.m_activity;
        }
        finally {
            this.m_newActivityLock.unlock();
        }
    }
    
    public void addActivityResultListener(final ActivityResultCallback activityResultCallback) {
        if (this.mActivityResultListeners == null) {
            this.mActivityResultListeners = new ArrayList<ActivityResultCallback>();
        }
        if (!this.mActivityResultListeners.contains(activityResultCallback)) {
            this.mActivityResultListeners.add(activityResultCallback);
        }
    }
    
    public void addActivityStateChangeListner(final StateChangeCallback stateChangeCallback) {
        if (this.mActivityStateListeners == null) {
            this.mActivityStateListeners = new ArrayList<StateChangeCallback>();
        }
        if (!this.mActivityStateListeners.contains(stateChangeCallback)) {
            this.mActivityStateListeners.add(stateChangeCallback);
        }
    }
    
    public void addInputEventListner(final InputEventCallback inputEventCallback) {
        if (this.mInputEventListeners == null) {
            this.mInputEventListeners = new ArrayList<InputEventCallback>();
        }
        if (!this.mInputEventListeners.contains(inputEventCallback)) {
            this.mInputEventListeners.add(inputEventCallback);
        }
    }
    
    public void applyDownloadedConfig() {
        if (AndroidActivityWrapper.sEntryPoint != null) {
            AndroidActivityWrapper.sEntryPoint.EntryApplyDownloadedConfig();
        }
    }
    
    public void didRemoveOverlay() {
        if (this.m_overlaysLayout != null && this.m_overlaysLayout.getChildCount() == 0) {
            this.m_layout.removeView((View)this.m_overlaysLayout);
            this.m_overlaysLayout = null;
        }
    }
    
    public boolean dispatchGenericMotionEvent(final MotionEvent motionEvent, final boolean b) {
        return this.callInputEventListeners(motionEvent);
    }
    
    public boolean dispatchKeyEvent(final KeyEvent keyEvent, final boolean b) {
        return this.callInputEventListeners(keyEvent);
    }
    
    public void ensureZOrder() {
        for (int i = 7; i >= 0; --i) {
            if (this.m_planes.get(i) != null && this.m_layout.indexOfChild((View)this.m_planes.get(i)) >= 0) {
                this.m_layout.bringChildToFront((View)this.m_planes.get(i));
            }
        }
    }
    
    public void finish() {
        if (this.m_activity != null) {
            this.m_activity.finish();
        }
    }
    
    public void finishActivityFromChild(final Activity activity, final int n) {
    }
    
    public void finishFromChild(final Activity activity) {
    }
    
    public Activity getActivity() {
        return this.m_activity;
    }
    
    public Application getApplication() {
        return this.m_application;
    }
    
    public Context getApplicationContext() {
        return (Context)this.m_application;
    }
    
    public boolean getAutoOrients() {
        return this.mOrientationManager.getAutoOrients();
    }
    
    public AndroidCameraView getCameraView() {
        return this.m_cameraView;
    }
    
    public Context getDefaultContext() {
        if (this.m_activity != null) {
            return (Context)this.m_activity;
        }
        return (Context)this.m_application;
    }
    
    public int getDefaultIntentFlags() {
        if (this.m_activity != null) {
            return 0;
        }
        return 268435456;
    }
    
    public int getDeviceOrientation() {
        return this.mOrientationManager.getDeviceOrientation();
    }
    
    public FlashEGL getEgl() {
        if (this.m_flashEGL == null) {
            this.m_flashEGL = new FlashEGL();
        }
        return this.m_flashEGL;
    }
    
    public int getHardKeyboardType() {
        return this.mHardKeyboardType;
    }
    
    protected boolean getIsFullScreen() {
        return this.mIsFullScreen;
    }
    
    public int getOrientation() {
        return this.mOrientationManager.getOrientation();
    }
    
    public RelativeLayout getOverlaysLayout(final boolean b) {
        if (b && this.m_overlaysLayout == null) {
            this.m_overlaysLayout = new RelativeLayout((Context)this.m_activity);
            this.m_layout.addView((View)this.m_overlaysLayout);
        }
        return this.m_overlaysLayout;
    }
    
    public Context getRuntimeContext() {
        return this.m_runtimeContext;
    }
    
    public boolean getSpeakerphoneOn() {
        return ((AudioManager)this.getActivity().getSystemService("audio")).isSpeakerphoneOn();
    }
    
    public int[] getSupportedOrientations() {
        return this.mOrientationManager.getSupportedOrientations();
    }
    
    public View getView() {
        return (View)this.m_mainView;
    }
    
    public void gotResultFromDialog(final boolean b, final String host) {
        int n;
        if (b) {
            n = ((host.length() != 0 && Utils.nativeConnectDebuggerSocket(host)) ? 1 : 0);
            if (n == 0) {
                this.showDialogforIpAddress(host);
            }
            else {
                this.mDebuggerSettings.setHost(host);
                this.mDebuggerSettings.setListen(false);
                this.mShowDebuggerDialog = true;
            }
        }
        else {
            n = 0;
        }
        if (n != 0 || !b) {
            this.afterOnCreate();
        }
    }
    
    public void initCallStateListener() {
        if (AndroidActivityWrapper.sAndroidTelephonyManager == null) {
            (AndroidActivityWrapper.sAndroidTelephonyManager = AndroidTelephonyManager.CreateAndroidTelephonyManager(this.getApplicationContext())).listen(true);
        }
    }
    
    public boolean isApplicationLaunched() {
        return AndroidActivityWrapper.sApplicationLaunched;
    }
    
    public boolean isHardKeyboardHidden() {
        return this.mHardKeyboardHidden == 2;
    }
    
    public boolean isResumed() {
        return this.mActivityState == ActivityState.RESUMED;
    }
    
    public boolean isScreenLocked() {
        return this.keyGuardManager.inKeyguardRestrictedInputMode();
    }
    
    public boolean isScreenOn() {
        return this.mScreenOn;
    }
    
    public boolean isStarted() {
        return this.mActivityState == ActivityState.STARTED || this.mActivityState == ActivityState.RESTARTED;
    }
    
    public boolean isSurfaceValid() {
        return this.m_mainView != null && this.m_mainView.isSurfaceValid();
    }
    
    public boolean needsCompositingSurface() {
        return this.m_runtimeContext.checkCallingOrSelfPermission("android.permission.CAMERA") == 0;
    }
    
    public void onActivityResult(final int n, final int n2, final Intent intent) {
        this.callActivityResultListeners(n, n2, intent);
    }
    
    public void onApplyThemeResource(final Resources$Theme resources$Theme, final int n, final boolean b) {
    }
    
    public void onAttachedToWindow() {
    }
    
    public void onBackPressed() {
    }
    
    public void onChildTitleChanged(final Activity activity, final CharSequence charSequence) {
    }
    
    public void onConfigurationChanged(final Configuration configuration) {
        this.mHardKeyboardHidden = configuration.hardKeyboardHidden;
        this.mHardKeyboardType = configuration.keyboard;
        this.mOrientationManager.onConfigurationChanged(configuration);
        this.callActivityStateListeners(configuration);
    }
    
    public void onContentChanged() {
    }
    
    public boolean onContextItemSelected(final MenuItem menuItem, final boolean b) {
        return b;
    }
    
    public void onContextMenuClosed(final Menu menu) {
    }
    
    public void onCreate(final Activity activity, final String[] array) {
        this.m_activity = activity;
        this.mActivityState = ActivityState.STARTED;
        this.parseArgs(activity, array);
        this.SignalNewActivityCreated();
        while (true) {
            try {
                this.m_runtimeContext = this.m_activity.createPackageContext(Utils.getRuntimePackageName(), 4);
                if (this.mIsDebuggerMode && !this.mIsADL && !AndroidActivityWrapper.sApplicationLaunched && !DeviceProfiling.checkAndInitiateProfiler(this.m_activity)) {
                    this.checkForDebuggerAndLaunchDialog();
                }
                else {
                    this.afterOnCreate();
                }
                this.mInvokeEventPendingFromOnCreate = true;
                this.mConfigDownloadListener = ConfigDownloadListener.GetConfigDownloadListener();
            }
            catch (Exception ex) {
                continue;
            }
            break;
        }
    }
    
    public void onCreateContextMenu(final ContextMenu contextMenu, final View view, final ContextMenu$ContextMenuInfo contextMenu$ContextMenuInfo) {
    }
    
    public CharSequence onCreateDescription(final CharSequence charSequence) {
        return charSequence;
    }
    
    public Dialog onCreateDialog(final int n, final Dialog dialog) {
        return dialog;
    }
    
    public Dialog onCreateDialog(final int n, final Bundle bundle, final Dialog dialog) {
        return dialog;
    }
    
    public boolean onCreateOptionsMenu(final Menu menu, final boolean b) {
        return b;
    }
    
    public boolean onCreatePanelMenu(final int n, final Menu menu, final boolean b) {
        return b;
    }
    
    public View onCreatePanelView(final int n, final View view) {
        return view;
    }
    
    public boolean onCreateThumbnail(final Bitmap bitmap, final Canvas canvas, final boolean b) {
        return b;
    }
    
    public View onCreateView(final String s, final Context context, final AttributeSet set, final View view) {
        return view;
    }
    
    public void onDestroy() {
        this.mActivityState = ActivityState.DESTROYED;
        this.callActivityStateListeners();
        if (this.mOrientationManager != null) {
            this.mOrientationManager.onActivityDestroyed();
        }
        for (int i = 0; i < 8; ++i) {
            if (this.m_planes.get(i) != null) {
                this.m_layout.removeView((View)this.m_planes.get(i));
            }
        }
        if (this.m_overlaysLayout != null) {
            this.m_layout.removeView((View)this.m_overlaysLayout);
        }
        this.m_activity = null;
        this.m_cameraView = null;
        this.m_mainView = null;
        this.m_layout = null;
        this.setMainView(null);
        HDMIUtils.closeHelper();
    }
    
    public void onDetachedFromWindow() {
    }
    
    public boolean onKeyDown(final int n, final KeyEvent keyEvent, final boolean b) {
        return b;
    }
    
    public boolean onKeyLongPress(final int n, final KeyEvent keyEvent, final boolean b) {
        return b;
    }
    
    public boolean onKeyMultiple(final int n, final int n2, final KeyEvent keyEvent, final boolean b) {
        return b;
    }
    
    public boolean onKeyUp(final int n, final KeyEvent keyEvent, final boolean b) {
        return b;
    }
    
    public void onLowMemory() {
        this.nativeLowMemoryEvent();
    }
    
    public boolean onMenuItemSelected(final int n, final MenuItem menuItem, final boolean b) {
        return b;
    }
    
    public boolean onMenuOpened(final int n, final Menu menu, final boolean b) {
        return b;
    }
    
    public void onNewIntent(final Intent intent) {
        this.m_activity.setIntent(intent);
        this.SendInvokeEvent();
    }
    
    public boolean onOptionsItemSelected(final MenuItem menuItem, final boolean b) {
        return b;
    }
    
    public void onOptionsMenuClosed(final Menu menu) {
    }
    
    public void onPanelClosed(final int n, final Menu menu) {
    }
    
    public void onPause() {
        this.mActivityState = ActivityState.PAUSED;
        this.callActivityStateListeners();
        if (this.m_mainView != null) {
            this.m_mainView.forceSoftKeyboardDown();
        }
        if (this.mOrientationManager != null) {
            this.mOrientationManager.onActivityPaused();
        }
        if (AndroidActivityWrapper.sIdleStateManager != null) {
            AndroidActivityWrapper.sIdleStateManager.releaseLock();
        }
        if (this.isApplicationLaunched()) {
            this.nativeOnFocusListener(false);
            this.nativeDeactivateEvent();
        }
        this.planeBreakCascade();
    }
    
    public void onPostCreate(final Bundle bundle) {
    }
    
    public void onPostResume() {
    }
    
    public void onPrepareDialog(final int n, final Dialog dialog) {
    }
    
    public void onPrepareDialog(final int n, final Dialog dialog, final Bundle bundle) {
    }
    
    public boolean onPrepareOptionsMenu(final Menu menu, final boolean b) {
        return b;
    }
    
    public boolean onPreparePanel(final int n, final View view, final Menu menu, final boolean b) {
        return b;
    }
    
    public void onRestart() {
        this.mActivityState = ActivityState.RESTARTED;
        this.callActivityStateListeners();
        if (this.m_mainView != null) {
            this.m_mainView.HideSoftKeyboardOnWindowFocusChange();
        }
        this.SetVisible(true);
    }
    
    public void onRestoreInstanceState(final Bundle bundle) {
    }
    
    public void onResume() {
        this.mActivityState = ActivityState.RESUMED;
        this.callActivityStateListeners();
        if (this.mOrientationManager != null) {
            this.mOrientationManager.onActivityResumed();
        }
        if (AndroidActivityWrapper.sIdleStateManager != null) {
            AndroidActivityWrapper.sIdleStateManager.acquireLock();
        }
        if (this.isApplicationLaunched()) {
            this.nativeActivateEvent();
            this.nativeOnFocusListener(true);
        }
        else {
            this.mActivateEventPending = true;
        }
        this.m_skipKickCascade = true;
        this.planeBreakCascade();
    }
    
    public Object onRetainNonConfigurationInstance(final Object o) {
        return o;
    }
    
    public void onSaveInstanceState(final Bundle bundle) {
    }
    
    public void onScreenStateChanged(final boolean mScreenOn) {
        this.SetVisible(this.mScreenOn = mScreenOn);
        if (mScreenOn) {
            this.m_skipKickCascade = false;
            this.planeBreakCascade();
        }
    }
    
    public boolean onSearchRequested(final boolean b) {
        return b;
    }
    
    public void onStop() {
        this.mActivityState = ActivityState.STOPPED;
        this.callActivityStateListeners();
        this.SetVisible(false);
    }
    
    public void onSurfaceDestroyed() {
        this.SetVisible(false);
    }
    
    public void onSurfaceInitialized() {
        this.setMainView((View)this.m_mainView);
        this.SetVisible(true);
        if (this.mDisplayWaitingDialog) {
            this.showDialogWaitingForConnection(this.debuggerPort);
            this.mDisplayWaitingDialog = false;
        }
        this.LaunchApplication(this.m_activity, this.m_mainView, this.mXmlPath, this.mRootDir, this.mExtraArgs, this.mIsADL, this.mIsDebuggerMode);
        if (this.mInvokeEventPendingFromOnCreate) {
            if (!this.mIsADL) {
                this.SendInvokeEvent();
            }
            this.mInvokeEventPendingFromOnCreate = false;
        }
        if (this.mActivateEventPending) {
            this.nativeActivateEvent();
            this.mActivateEventPending = false;
        }
        this.planeCleanCascade();
    }
    
    public void onTitleChanged(final CharSequence charSequence, final int n) {
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent, final boolean b) {
        return b;
    }
    
    public boolean onTrackballEvent(final MotionEvent motionEvent, final boolean b) {
        return b;
    }
    
    public void onUserInteraction() {
    }
    
    public void onUserLeaveHint() {
    }
    
    public void onWindowAttributesChanged(final WindowManager$LayoutParams windowManager$LayoutParams) {
    }
    
    public void onWindowFocusChanged(final boolean b) {
    }
    
    public void planeBreakCascade() {
        int i = 0;
        int n = 0;
        while (i < 8) {
            if (this.m_planes.get(i) != null) {
                ++n;
            }
            ++i;
        }
        if (n > 1) {
            this.m_planeBreakCascade = true;
        }
    }
    
    public void planeCleanCascade() {
        if (!this.m_planeCascadeInit) {
            this.m_planeCascadeInit = true;
            this.planeBreakCascade();
        }
    }
    
    public void planeKickCascade() {
        if ((!isHoneycomb() || !this.m_skipKickCascade) && (!isJellybean() || !this.mContainsVideo)) {
            this.planeCleanCascade();
            if (this.m_layout != null) {
                if (this.m_planeBreakCascade) {
                    for (int i = 0; i < 8; ++i) {
                        if (this.m_planes.get(i) != null && this.m_layout.indexOfChild((View)this.m_planes.get(i)) >= 0) {
                            this.m_layout.removeView((View)this.m_planes.get(i));
                        }
                    }
                    this.m_planeBreakCascade = false;
                    for (int j = 0; j < 8; ++j) {
                        if (this.m_planes.get(j) != null && !this.planeRemovedSuccessfully(this.m_planes.get(j))) {
                            this.m_planeBreakCascade = true;
                            break;
                        }
                    }
                    this.m_planeCascadeStep = 0;
                }
                if (this.m_planeCascadeStep == 0) {
                    this.planeStepCascade();
                    this.m_mainView.requestFocus();
                }
            }
        }
    }
    
    public void planeStepCascade() {
        this.m_skipKickCascade = false;
        if (this.m_layout != null && !this.m_planeBreakCascade) {
            while (this.m_planeCascadeStep < 8) {
                if (this.m_planes.get(this.m_planeCascadeStep) != null) {
                    if (this.m_layout.indexOfChild((View)this.m_planes.get(this.m_planeCascadeStep)) < 0) {
                        this.m_layout.addView((View)this.m_planes.get(this.m_planeCascadeStep), 0);
                    }
                    ++this.m_planeCascadeStep;
                    return;
                }
                ++this.m_planeCascadeStep;
            }
        }
    }
    
    public void registerPlane(final SurfaceView surfaceView, final int n) {
        this.m_planes.set(n, surfaceView);
        this.planeBreakCascade();
    }
    
    public void removeActivityResultListener(final ActivityResultCallback activityResultCallback) {
        if (this.mActivityResultListeners != null) {
            this.mActivityResultListeners.remove(activityResultCallback);
        }
    }
    
    public void removeActivityStateChangeListner(final StateChangeCallback stateChangeCallback) {
        if (this.mActivityStateListeners != null) {
            this.mActivityStateListeners.remove(stateChangeCallback);
        }
    }
    
    public void removeInputEventListner(final InputEventCallback inputEventCallback) {
        if (this.mInputEventListeners != null) {
            this.mInputEventListeners.remove(inputEventCallback);
        }
    }
    
    public void setAspectRatio(final int aspectRatio) {
        this.mOrientationManager.setAspectRatio(aspectRatio);
    }
    
    public void setAutoOrients(final boolean autoOrients) {
        this.mOrientationManager.setAutoOrients(autoOrients);
    }
    
    protected void setIsFullScreen(final boolean mIsFullScreen) {
        this.mIsFullScreen = mIsFullScreen;
    }
    
    public void setOrientation(final int orientation) {
        this.mOrientationManager.setOrientation(orientation);
    }
    
    public void setSpeakerphoneOn(final boolean speakerphoneOn) {
        ((AudioManager)this.getActivity().getSystemService("audio")).setSpeakerphoneOn(speakerphoneOn);
    }
    
    public void setUseRGB565(final Boolean b) {
        this.mRGB565Override = b;
    }
    
    public void unregisterPlane(final int n) {
        this.m_planes.set(n, null);
        this.planeBreakCascade();
    }
    
    public boolean useRGB565() {
        if (this.mIsADL) {
            return this.mRGB565Override;
        }
        final ResourceFileManager resourceFileManager = new ResourceFileManager((Context)this.m_activity);
        return !resourceFileManager.resExists(resourceFileManager.lookupResId("raw.rgba8888"));
    }
    
    interface ActivityResultCallback
    {
        void onActivityResult(int p0, int p1, Intent p2);
    }
    
    public enum ActivityState
    {
        DESTROYED, 
        PAUSED, 
        RESTARTED, 
        RESUMED, 
        STARTED, 
        STOPPED;
    }
    
    private enum DebugMode
    {
        ConflictMode, 
        ConnectMode, 
        ListenMode, 
        None;
    }
    
    interface InputEventCallback
    {
        boolean onGenericMotionEvent(MotionEvent p0);
        
        boolean onKeyEvent(KeyEvent p0);
    }
    
    public static class PlaneID
    {
        public static final int PLANE_CAMERA = 5;
        public static final int PLANE_COUNT = 8;
        public static final int PLANE_FLASH = 3;
        public static final int PLANE_OVERLAY = 2;
        public static final int PLANE_STAGE3D = 6;
        public static final int PLANE_STAGETEXT = 1;
        public static final int PLANE_STAGEVIDEO = 7;
        public static final int PLANE_STAGEVIDEOAUTOMATIC = 4;
        public static final int PLANE_STAGEWEBVIEW;
    }
    
    interface StateChangeCallback
    {
        void onActivityStateChanged(ActivityState p0);
        
        void onConfigurationChanged(Configuration p0);
    }
}
