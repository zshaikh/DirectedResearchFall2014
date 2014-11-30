.class public final Ldolphin/webkit/WebViewCore;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field static final ACTION_DOUBLETAP:I = 0x200

.field static final ACTION_LONGPRESS:I = 0x100

.field static final HandlerDebugString:[Ljava/lang/String;

.field private static final LOGTAG:Ljava/lang/String; = "dolphinwebcore"

.field static final THREAD_NAME:Ljava/lang/String; = "WebViewCoreThread"

.field private static final TOUCH_FLAG_HIT_HANDLER:I = 0x1

.field private static final TOUCH_FLAG_PREVENT_DEFAULT:I = 0x2

.field private static final USE_APP_ORIENTATION_CONFIG:I = -0x1

.field private static mRepaintScheduled:Z

.field private static sShouldMonitorWebCoreThread:Z

.field public static sWebCoreHandler:Ldolphin/util/j;

.field private static sWebCoreTid:I


# instance fields
.field public mBaseLayerMessages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBrowserFrame:Ldolphin/webkit/BrowserFrame;

.field private final mCallbackProxy:Ldolphin/webkit/ae;

.field private mChromeCanFocusDirection:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentActualViewHeight:I

.field private mCurrentViewHeight:I

.field private mCurrentViewScale:F

.field private mCurrentViewWidth:I

.field private mDeviceMotionAndOrientationManager:Ldolphin/webkit/DeviceMotionAndOrientationManager;

.field private mDeviceMotionService:Ldolphin/webkit/DeviceMotionService;

.field private mDeviceOrientationService:Ldolphin/webkit/DeviceOrientationService;

.field private mDrawIsPaused:Z
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field private mDrawIsScheduled:Z

.field private final mEventHub:Ldolphin/webkit/jq;

.field private mFirstLayoutForNonStandardLoad:Z

.field private mHighMemoryUsageThresholdMb:I
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field private mHighUsageDeltaMb:I
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field private mInitialViewState:Ldolphin/webkit/kc;

.field private mIsRestored:Z

.field private mJavascriptInterfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mLastDrawData:Ldolphin/webkit/jp;

.field private mLowMemoryUsageThresholdMb:I
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field private mNativeClass:I
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field private mRestoredScale:F

.field private mRestoredTextWrapScale:F

.field private mRestoredX:I

.field private mRestoredY:I

.field private final mSettings:Ldolphin/webkit/WebSettingsClassic;

.field private mTextSelectionChangeReason:I

.field private mViewportCanScreenRotate:I
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field private mViewportDensityDpi:I
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field private mViewportFullScreen:Z
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field private mViewportHeight:I
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field private mViewportInitialScale:I
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field private mViewportMaximumScale:I
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field private mViewportMinimumScale:I
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field private mViewportUserScalable:Z
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field private mViewportWidth:I
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field private mWebViewClassic:Ldolphin/webkit/WebViewClassic;
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field private m_drawWasSkipped:Z

.field private m_skipDrawFlag:Z

.field private m_skipDrawFlagLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 870
    const/4 v0, -0x1

    sput v0, Ldolphin/webkit/WebViewCore;->sWebCoreTid:I

    .line 1147
    const/16 v0, 0x36

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "REVEAL_SELECTION"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SCROLL_TEXT_INPUT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "LOAD_URL"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "STOP_LOADING"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RELOAD"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "KEY_DOWN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "KEY_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "VIEW_SIZE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GO_BACK_FORWARD"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SET_SCROLL_OFFSET"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "RESTORE_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "PAUSE_TIMERS"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "RESUME_TIMERS"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "CLEAR_CACHE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "CLEAR_HISTORY"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "SET_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "REPLACE_TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "PASS_TO_JS"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "SET_GLOBAL_BOUNDS"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "CLICK"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "SET_NETWORK_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "DOC_HAS_IMAGES"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "FAKE_CLICK"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "DELETE_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "LISTBOX_CHOICES"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SINGLE_LISTBOX_CHOICE"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "MESSAGE_RELAY"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "SET_BACKGROUND_COLOR"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "SET_MOVE_FOCUS"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "SAVE_DOCUMENT_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "129"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "WEBKIT_DRAW"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "131"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "POST_URL"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "CLEAR_CONTENT"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "REQUEST_CURSOR_HREF"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "ADD_JS_INTERFACE"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "LOAD_DATA"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "SET_ACTIVE"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "ON_PAUSE"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "ON_RESUME"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "FREE_MEMORY"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "VALID_NODE_BOUNDS"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "SAVE_WEBARCHIVE"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "WEBKIT_DRAW_LAYERS"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "REMOVE_JS_INTERFACE"

    aput-object v2, v0, v1

    sput-object v0, Ldolphin/webkit/WebViewCore;->HandlerDebugString:[Ljava/lang/String;

    .line 2803
    sput-boolean v3, Ldolphin/webkit/WebViewCore;->mRepaintScheduled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldolphin/webkit/WebViewClassic;Ldolphin/webkit/ae;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldolphin/webkit/WebViewClassic;",
            "Ldolphin/webkit/ae;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput v1, p0, Ldolphin/webkit/WebViewCore;->mViewportWidth:I

    .line 107
    iput v1, p0, Ldolphin/webkit/WebViewCore;->mViewportHeight:I

    .line 113
    iput v4, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    .line 119
    iput v4, p0, Ldolphin/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 125
    iput v4, p0, Ldolphin/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/WebViewCore;->mViewportUserScalable:Z

    .line 138
    iput v1, p0, Ldolphin/webkit/WebViewCore;->mViewportDensityDpi:I

    .line 141
    iput v1, p0, Ldolphin/webkit/WebViewCore;->mViewportCanScreenRotate:I

    .line 143
    iput-boolean v4, p0, Ldolphin/webkit/WebViewCore;->mViewportFullScreen:Z

    .line 147
    iput-boolean v4, p0, Ldolphin/webkit/WebViewCore;->mIsRestored:Z

    .line 148
    iput v3, p0, Ldolphin/webkit/WebViewCore;->mRestoredScale:F

    .line 149
    iput v3, p0, Ldolphin/webkit/WebViewCore;->mRestoredTextWrapScale:F

    .line 150
    iput v4, p0, Ldolphin/webkit/WebViewCore;->mRestoredX:I

    .line 151
    iput v4, p0, Ldolphin/webkit/WebViewCore;->mRestoredY:I

    .line 153
    new-instance v0, Ldolphin/webkit/DeviceMotionAndOrientationManager;

    invoke-direct {v0, p0}, Ldolphin/webkit/DeviceMotionAndOrientationManager;-><init>(Ldolphin/webkit/WebViewCore;)V

    iput-object v0, p0, Ldolphin/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Ldolphin/webkit/DeviceMotionAndOrientationManager;

    .line 166
    iput v4, p0, Ldolphin/webkit/WebViewCore;->mTextSelectionChangeReason:I

    .line 204
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/WebViewCore;->mBaseLayerMessages:Ljava/util/LinkedList;

    .line 2396
    iput v4, p0, Ldolphin/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 2397
    iput v4, p0, Ldolphin/webkit/WebViewCore;->mCurrentViewHeight:I

    .line 2398
    const/high16 v0, 0x3f800000

    iput v0, p0, Ldolphin/webkit/WebViewCore;->mCurrentViewScale:F

    .line 2402
    iput v4, p0, Ldolphin/webkit/WebViewCore;->mCurrentActualViewHeight:I

    .line 2502
    iput-object v2, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    .line 2534
    iput-object v2, p0, Ldolphin/webkit/WebViewCore;->mLastDrawData:Ldolphin/webkit/jp;

    .line 2536
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/WebViewCore;->m_skipDrawFlagLock:Ljava/lang/Object;

    .line 2537
    iput-boolean v4, p0, Ldolphin/webkit/WebViewCore;->m_skipDrawFlag:Z

    .line 2538
    iput-boolean v4, p0, Ldolphin/webkit/WebViewCore;->m_drawWasSkipped:Z

    .line 209
    iput-object p3, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    .line 210
    iput-object p2, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    .line 211
    iput-object p4, p0, Ldolphin/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    .line 214
    iput-object p1, p0, Ldolphin/webkit/WebViewCore;->mContext:Landroid/content/Context;

    .line 220
    const-class v1, Ldolphin/webkit/WebViewCore;

    monitor-enter v1

    .line 221
    :try_start_0
    invoke-static {}, Ldolphin/webkit/WebViewCore;->initWebCoreThread()V

    .line 223
    invoke-static {p2}, Ldolphin/webkit/he;->a(Ldolphin/webkit/WebViewClassic;)V

    .line 224
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    new-instance v0, Ldolphin/webkit/jq;

    invoke-direct {v0, p0, v2}, Ldolphin/webkit/jq;-><init>(Ldolphin/webkit/WebViewCore;Ldolphin/webkit/jj;)V

    iput-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    .line 229
    new-instance v0, Ldolphin/webkit/WebSettingsClassic;

    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v2, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    invoke-direct {v0, v1, v2}, Ldolphin/webkit/WebSettingsClassic;-><init>(Landroid/content/Context;Ldolphin/webkit/WebViewClassic;)V

    iput-object v0, p0, Ldolphin/webkit/WebViewCore;->mSettings:Ldolphin/webkit/WebSettingsClassic;

    .line 232
    invoke-static {}, Ldolphin/webkit/WebIconDatabase;->getInstance()Ldolphin/webkit/WebIconDatabase;

    .line 234
    invoke-static {}, Ldolphin/webkit/WebStorageClassic;->d()Ldolphin/webkit/WebStorageClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebStorageClassic;->a()V

    .line 236
    invoke-static {}, Ldolphin/webkit/GeolocationPermissionsClassic;->a()Ldolphin/webkit/GeolocationPermissionsClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/GeolocationPermissionsClassic;->b()V

    .line 238
    invoke-direct {p0}, Ldolphin/webkit/WebViewCore;->isNeedInitBackgroundLoader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-static {}, Ldolphin/webkit/Prereader;->b()Ldolphin/webkit/Prereader;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/Prereader;->c()V

    .line 241
    invoke-static {}, Ldolphin/webkit/j;->a()Ldolphin/webkit/j;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/j;->b()V

    .line 246
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 248
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 249
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 253
    invoke-static {}, Landroid/support/a;->a()I

    move-result v0

    iput v0, p0, Ldolphin/webkit/WebViewCore;->mLowMemoryUsageThresholdMb:I

    .line 254
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mLowMemoryUsageThresholdMb:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Ldolphin/webkit/WebViewCore;->mHighMemoryUsageThresholdMb:I

    .line 256
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mLowMemoryUsageThresholdMb:I

    div-int/lit8 v0, v0, 0x20

    iput v0, p0, Ldolphin/webkit/WebViewCore;->mHighUsageDeltaMb:I

    .line 259
    sget-object v0, Ldolphin/webkit/WebViewCore;->sWebCoreHandler:Ldolphin/util/j;

    invoke-virtual {v0, v4, p0}, Ldolphin/util/j;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 261
    sget-object v1, Ldolphin/webkit/WebViewCore;->sWebCoreHandler:Ldolphin/util/j;

    invoke-virtual {v1, v0}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z

    .line 262
    return-void

    .line 224
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$1000(Ldolphin/webkit/WebViewCore;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewCore;->nativeCloseIdleConnections(I)V

    return-void
.end method

.method static synthetic access$1100(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$1102(Ldolphin/webkit/WebViewCore;Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebViewClassic;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    return-object p1
.end method

.method static synthetic access$1300(Ldolphin/webkit/WebViewCore;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ldolphin/webkit/WebViewCore;->webkitDraw()V

    return-void
.end method

.method static synthetic access$1400(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/ae;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    return-object v0
.end method

.method static synthetic access$1500(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/BrowserFrame;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$1502(Ldolphin/webkit/WebViewCore;Ldolphin/webkit/BrowserFrame;)Ldolphin/webkit/BrowserFrame;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    return-object p1
.end method

.method static synthetic access$1600(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebSettingsClassic;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mSettings:Ldolphin/webkit/WebSettingsClassic;

    return-object v0
.end method

.method static synthetic access$1700(Ldolphin/webkit/WebViewCore;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewCore;->nativeDeleteBaseLayer(I)V

    return-void
.end method

.method static synthetic access$1800(Ldolphin/webkit/WebViewCore;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewCore;->nativeRevealSelection(I)V

    return-void
.end method

.method static synthetic access$1900(Ldolphin/webkit/WebViewCore;IFI)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Ldolphin/webkit/WebViewCore;->nativeScrollFocusedTextInput(IFI)V

    return-void
.end method

.method static synthetic access$2000(Ldolphin/webkit/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/WebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$2100(Ldolphin/webkit/WebViewCore;Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/WebViewCore;->postUrl(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$2200(Ldolphin/webkit/WebViewCore;Ljava/lang/String;Ldolphin/webkit/jo;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/WebViewCore;->loadData(Ljava/lang/String;Ldolphin/webkit/jo;)V

    return-void
.end method

.method static synthetic access$2300(Ldolphin/webkit/WebViewCore;Landroid/view/KeyEvent;IZ)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Ldolphin/webkit/WebViewCore;->key(Landroid/view/KeyEvent;IZ)V

    return-void
.end method

.method static synthetic access$2400(Ldolphin/webkit/WebViewCore;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewCore;->keyPress(I)V

    return-void
.end method

.method static synthetic access$2500(Ldolphin/webkit/WebViewCore;Ldolphin/webkit/jh;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewCore;->viewSizeChanged(Ldolphin/webkit/jh;)V

    return-void
.end method

.method static synthetic access$2600(Ldolphin/webkit/WebViewCore;IZII)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Ldolphin/webkit/WebViewCore;->nativeSetScrollOffset(IZII)V

    return-void
.end method

.method static synthetic access$2700(Ldolphin/webkit/WebViewCore;IIIII)V
    .locals 0

    .prologue
    .line 71
    invoke-direct/range {p0 .. p5}, Ldolphin/webkit/WebViewCore;->nativeSetGlobalBounds(IIIII)V

    return-void
.end method

.method static synthetic access$2800(Ldolphin/webkit/WebViewCore;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewCore;->restoreState(I)V

    return-void
.end method

.method static synthetic access$2900(Ldolphin/webkit/WebViewCore;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ldolphin/webkit/WebViewCore;->pause()V

    return-void
.end method

.method static synthetic access$300(Ldolphin/webkit/WebViewCore;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    return v0
.end method

.method static synthetic access$3000(Ldolphin/webkit/WebViewCore;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewCore;->nativeResume(I)V

    return-void
.end method

.method static synthetic access$302(Ldolphin/webkit/WebViewCore;I)I
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    return p1
.end method

.method static synthetic access$3100(Ldolphin/webkit/WebViewCore;Z)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewCore;->clearCache(Z)V

    return-void
.end method

.method static synthetic access$3200(Ldolphin/webkit/WebViewCore;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewCore;->nativeFreeMemory(I)V

    return-void
.end method

.method static synthetic access$3300(Ldolphin/webkit/WebViewCore;IIILjava/lang/String;III)V
    .locals 0

    .prologue
    .line 71
    invoke-direct/range {p0 .. p7}, Ldolphin/webkit/WebViewCore;->nativeReplaceTextfieldText(IIILjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$3400(Ldolphin/webkit/WebViewCore;IILjava/lang/String;IIZZZZ)V
    .locals 0

    .prologue
    .line 71
    invoke-direct/range {p0 .. p9}, Ldolphin/webkit/WebViewCore;->passToJs(IILjava/lang/String;IIZZZZ)V

    return-void
.end method

.method static synthetic access$3500(Ldolphin/webkit/WebViewCore;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewCore;->nativeSaveDocumentState(I)V

    return-void
.end method

.method static synthetic access$3600(Ldolphin/webkit/WebViewCore;IZ)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/WebViewCore;->nativeSetFocusControllerActive(IZ)V

    return-void
.end method

.method static synthetic access$3700(Ldolphin/webkit/WebViewCore;III)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Ldolphin/webkit/WebViewCore;->nativeMoveMouse(III)V

    return-void
.end method

.method static synthetic access$3800(Ldolphin/webkit/WebViewCore;IIIZ)Ldolphin/webkit/WebViewCore$WebKitHitTest;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Ldolphin/webkit/WebViewCore;->performHitTest(IIIZ)Ldolphin/webkit/WebViewCore$WebKitHitTest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Ldolphin/webkit/WebViewCore;IIII)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Ldolphin/webkit/WebViewCore;->nativeDeleteSelection(IIII)V

    return-void
.end method

.method static synthetic access$400(Ldolphin/webkit/WebViewCore;IJ)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Ldolphin/webkit/WebViewCore;->nativeSetNewStorageLimit(IJ)V

    return-void
.end method

.method static synthetic access$4000(Ldolphin/webkit/WebViewCore;III)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Ldolphin/webkit/WebViewCore;->nativeSetSelection(III)V

    return-void
.end method

.method static synthetic access$4102(Ldolphin/webkit/WebViewCore;I)I
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Ldolphin/webkit/WebViewCore;->mTextSelectionChangeReason:I

    return p1
.end method

.method static synthetic access$4200(Ldolphin/webkit/WebViewCore;III)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Ldolphin/webkit/WebViewCore;->nativeModifySelection(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Ldolphin/webkit/WebViewCore;I[ZI)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Ldolphin/webkit/WebViewCore;->nativeSendListBoxChoices(I[ZI)V

    return-void
.end method

.method static synthetic access$4400(Ldolphin/webkit/WebViewCore;II)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/WebViewCore;->nativeSendListBoxChoice(II)V

    return-void
.end method

.method static synthetic access$4500(Ldolphin/webkit/WebViewCore;II)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/WebViewCore;->nativeSetBackgroundColor(II)V

    return-void
.end method

.method static synthetic access$4600(Ldolphin/webkit/WebViewCore;IZ)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/WebViewCore;->nativeDumpDomTree(IZ)V

    return-void
.end method

.method static synthetic access$4700(Ldolphin/webkit/WebViewCore;IZ)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/WebViewCore;->nativeDumpRenderTree(IZ)V

    return-void
.end method

.method static synthetic access$4800(Ldolphin/webkit/WebViewCore;IZ)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/WebViewCore;->nativeDumpGraphicsTree(IZ)V

    return-void
.end method

.method static synthetic access$4900(Ldolphin/webkit/WebViewCore;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/WebViewCore;->nativeSetJsFlags(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Ldolphin/webkit/WebViewCore;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ldolphin/webkit/WebViewCore;->initialize()V

    return-void
.end method

.method static synthetic access$5000(Ldolphin/webkit/WebViewCore;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewCore;->nativeContentInvalidateAll(I)V

    return-void
.end method

.method static synthetic access$5100(Ldolphin/webkit/WebViewCore;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/WebViewCore;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Ldolphin/webkit/WebViewCore;ILjava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Ldolphin/webkit/WebViewCore;->nativeGeolocationPermissionsProvide(ILjava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$5300(Ldolphin/webkit/WebViewCore;I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/WebViewCore;->nativeProvideVisitedHistory(I[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Ldolphin/webkit/WebViewCore;II)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/WebViewCore;->nativeFullScreenPluginHidden(II)V

    return-void
.end method

.method static synthetic access$5500(Ldolphin/webkit/WebViewCore;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewCore;->nativePluginSurfaceReady(I)V

    return-void
.end method

.method static synthetic access$5600(Ldolphin/webkit/WebViewCore;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewCore;->nativeNotifyAnimationStarted(I)V

    return-void
.end method

.method static synthetic access$5700(Ldolphin/webkit/WebViewCore;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewCore;->nativeContextMenuSelected(I)V

    return-void
.end method

.method static synthetic access$5800(Ldolphin/webkit/WebViewCore;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ldolphin/webkit/WebViewCore;->setUseMockDeviceOrientation()V

    return-void
.end method

.method static synthetic access$5900(Ldolphin/webkit/WebViewCore;II)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/WebViewCore;->nativeAutoFillForm(II)V

    return-void
.end method

.method static synthetic access$600()V
    .locals 0

    .prologue
    .line 71
    invoke-static {}, Ldolphin/webkit/WebViewCore;->nativeCertTrustChanged()V

    return-void
.end method

.method static synthetic access$6000(Ldolphin/webkit/WebViewCore;IILandroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Ldolphin/webkit/WebViewCore;->nativeScrollLayer(IILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$6100(Ldolphin/webkit/WebViewCore;IIIII)V
    .locals 0

    .prologue
    .line 71
    invoke-direct/range {p0 .. p5}, Ldolphin/webkit/WebViewCore;->nativeDeleteText(IIIII)V

    return-void
.end method

.method static synthetic access$6200(Ldolphin/webkit/WebViewCore;IIIII)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-direct/range {p0 .. p5}, Ldolphin/webkit/WebViewCore;->nativeGetText(IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6300(Ldolphin/webkit/WebViewCore;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewCore;->nativeClearTextSelection(I)V

    return-void
.end method

.method static synthetic access$6400(Ldolphin/webkit/WebViewCore;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/WebViewCore;->nativeInsertText(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Ldolphin/webkit/WebViewCore;IIII)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Ldolphin/webkit/WebViewCore;->nativeSelectText(IIII)V

    return-void
.end method

.method static synthetic access$6600(Ldolphin/webkit/WebViewCore;III)Z
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Ldolphin/webkit/WebViewCore;->nativeSelectWordAt(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Ldolphin/webkit/WebViewCore;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewCore;->nativeSelectAll(I)V

    return-void
.end method

.method static synthetic access$6800(Ldolphin/webkit/WebViewCore;ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/WebViewCore;->nativeFindAll(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Ldolphin/webkit/WebViewCore;IZ)I
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/WebViewCore;->nativeFindNext(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Ldolphin/webkit/WebViewCore;II)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/WebViewCore;->nativeSetInitialFocus(II)V

    return-void
.end method

.method static synthetic access$702(I)I
    .locals 0

    .prologue
    .line 71
    sput p0, Ldolphin/webkit/WebViewCore;->sWebCoreTid:I

    return p0
.end method

.method static synthetic access$7100(Ldolphin/webkit/WebViewCore;Ljava/io/OutputStream;Ldolphin/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/WebViewCore;->saveViewState(Ljava/io/OutputStream;Ldolphin/webkit/ValueCallback;)V

    return-void
.end method

.method static synthetic access$7200(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 71
    invoke-static {p0, p1}, Ldolphin/webkit/WebViewCore;->nativeGetBitmapByUrl(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(Ldolphin/webkit/WebViewCore;IIIZZ)Ldolphin/webkit/WebViewCore$WebKitHitTest;
    .locals 1

    .prologue
    .line 71
    invoke-direct/range {p0 .. p5}, Ldolphin/webkit/WebViewCore;->performHitTest2(IIIZZ)Ldolphin/webkit/WebViewCore$WebKitHitTest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7400(Ldolphin/webkit/WebViewCore;I)Z
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewCore;->nativeMouseClick(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Ldolphin/webkit/WebViewCore;II[I[I[IIII)I
    .locals 1

    .prologue
    .line 71
    invoke-direct/range {p0 .. p8}, Ldolphin/webkit/WebViewCore;->nativeHandleTouchEvent(II[I[I[IIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$7602(Ldolphin/webkit/WebViewCore;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Ldolphin/webkit/WebViewCore;->mDrawIsScheduled:Z

    return p1
.end method

.method private acquireLocalMediaStream(I)Z
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3328
    invoke-static {}, Lcom/dolphin/player/a;->a()Z

    move-result v0

    return v0
.end method

.method private addSurface(Landroid/view/View;IIII)Ldolphin/webkit/ViewManager$ChildView;
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3499
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewCore;->createSurface(Landroid/view/View;)Ldolphin/webkit/ViewManager$ChildView;

    move-result-object v0

    .line 3500
    invoke-virtual {v0, p2, p3, p4, p5}, Ldolphin/webkit/ViewManager$ChildView;->b(IIII)V

    .line 3501
    return-object v0
.end method

.method private calculateWindowWidth(I)I
    .locals 2

    .prologue
    .line 2460
    .line 2461
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mSettings:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2462
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mViewportWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2464
    const/16 p1, 0x3d4

    .line 2474
    :cond_0
    :goto_0
    return p1

    .line 2465
    :cond_1
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mViewportWidth:I

    if-lez v0, :cond_2

    .line 2467
    iget p1, p0, Ldolphin/webkit/WebViewCore;->mViewportWidth:I

    goto :goto_0

    .line 2470
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->W()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_0
.end method

.method private centerFitRect(IIII)V
    .locals 5
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3555
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 3560
    :goto_0
    return-void

    .line 3558
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x7f

    new-instance v2, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v2, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private chromeCanTakeFocus(I)Z
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 435
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewCore;->mapDirection(I)I

    move-result v0

    .line 436
    iget v1, p0, Ldolphin/webkit/WebViewCore;->mChromeCanFocusDirection:I

    if-ne v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private chromeTakeFocus(I)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 423
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 428
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 426
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewCore;->mapDirection(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 427
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private clearCache(Z)V
    .locals 1

    .prologue
    .line 2301
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v0}, Ldolphin/webkit/BrowserFrame;->clearCache()V

    .line 2302
    if-eqz p1, :cond_0

    .line 2303
    invoke-static {}, Ldolphin/webkit/CacheManager;->e()Z

    .line 2305
    :cond_0
    return-void
.end method

.method private clearTextEntry()V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3282
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 3285
    :goto_0
    return-void

    .line 3283
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private contentScrollTo(IIZZ)V
    .locals 6
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2764
    iput p1, p0, Ldolphin/webkit/WebViewCore;->mRestoredX:I

    .line 2765
    iput p2, p0, Ldolphin/webkit/WebViewCore;->mRestoredY:I

    .line 2766
    iget-object v2, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v2}, Ldolphin/webkit/BrowserFrame;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2782
    :cond_0
    :goto_0
    return-void

    .line 2769
    :cond_1
    iget-object v2, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-eqz v2, :cond_0

    .line 2770
    iget-object v2, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v3, v2, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v4, 0x65

    if-eqz p3, :cond_2

    move v2, v0

    :goto_1
    if-eqz p4, :cond_3

    :goto_2
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v3, v4, v2, v0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2773
    iget-boolean v2, p0, Ldolphin/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v2, :cond_4

    .line 2774
    iget-object v2, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    const/4 v3, 0x0

    const/16 v4, 0x7d

    invoke-static {v3, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v2, v0}, Ldolphin/webkit/jq;->a(Ldolphin/webkit/jq;Landroid/os/Message;)V

    .line 2780
    :goto_3
    iput v1, p0, Ldolphin/webkit/WebViewCore;->mRestoredY:I

    iput v1, p0, Ldolphin/webkit/WebViewCore;->mRestoredX:I

    goto :goto_0

    :cond_2
    move v2, v1

    .line 2770
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 2777
    :cond_4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3
.end method

.method private createSurface(Landroid/view/View;)Ldolphin/webkit/ViewManager$ChildView;
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3474
    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-nez v1, :cond_0

    .line 3491
    :goto_0
    return-object v0

    .line 3478
    :cond_0
    if-nez p1, :cond_1

    .line 3479
    const-string v1, "dolphinwebcore"

    const-string v2, "Attempted to add an empty plugin view to the view hierarchy"

    invoke-static {v1, v2}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3484
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 3486
    instance-of v0, p1, Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 3487
    check-cast v0, Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 3489
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->m:Ldolphin/webkit/ViewManager;

    invoke-virtual {v0}, Ldolphin/webkit/ViewManager;->a()Ldolphin/webkit/ViewManager$ChildView;

    move-result-object v0

    .line 3490
    iput-object p1, v0, Ldolphin/webkit/ViewManager$ChildView;->e:Landroid/view/View;

    goto :goto_0
.end method

.method private createTextSelection(III)Ldolphin/webkit/kb;
    .locals 2

    .prologue
    .line 3250
    new-instance v0, Ldolphin/webkit/kb;

    invoke-direct {v0, p1, p2, p3}, Ldolphin/webkit/kb;-><init>(III)V

    .line 3251
    iget v1, p0, Ldolphin/webkit/WebViewCore;->mTextSelectionChangeReason:I

    iput v1, v0, Ldolphin/webkit/kb;->d:I

    .line 3252
    return-object v0
.end method

.method private destroySurface(Ldolphin/webkit/ViewManager$ChildView;)V
    .locals 0
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3512
    invoke-virtual {p1}, Ldolphin/webkit/ViewManager$ChildView;->a()V

    .line 3513
    return-void
.end method

.method private didFirstLayout(Z)V
    .locals 4
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2839
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v0}, Ldolphin/webkit/BrowserFrame;->e()V

    .line 2841
    if-eqz p1, :cond_0

    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    if-eqz v0, :cond_0

    .line 2842
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ldolphin/webkit/ae;->a(Ljava/lang/String;I)V

    .line 2844
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-nez v0, :cond_1

    .line 2863
    :goto_0
    return-void

    .line 2846
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Ldolphin/webkit/WebViewCore;->mIsRestored:Z

    if-eqz v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 2847
    :goto_1
    invoke-direct {p0, v0}, Ldolphin/webkit/WebViewCore;->setupViewport(Z)V

    .line 2851
    if-nez v0, :cond_3

    .line 2852
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->m:Ldolphin/webkit/ViewManager;

    invoke-virtual {v0}, Ldolphin/webkit/ViewManager;->h()V

    .line 2856
    :cond_3
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v2, 0x83

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2860
    iput v1, p0, Ldolphin/webkit/WebViewCore;->mRestoredY:I

    iput v1, p0, Ldolphin/webkit/WebViewCore;->mRestoredX:I

    .line 2861
    iput-boolean v1, p0, Ldolphin/webkit/WebViewCore;->mIsRestored:Z

    .line 2862
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/WebViewCore;->mRestoredTextWrapScale:F

    iput v0, p0, Ldolphin/webkit/WebViewCore;->mRestoredScale:F

    goto :goto_0

    :cond_4
    move v0, v1

    .line 2846
    goto :goto_1
.end method

.method private didFirstVisuallyNonEmptyLayout(Z)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 2878
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v0}, Ldolphin/webkit/BrowserFrame;->f()V

    .line 2879
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-nez v0, :cond_1

    .line 2896
    :cond_0
    :goto_0
    return-void

    .line 2881
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Ldolphin/webkit/WebViewCore;->mIsRestored:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 2882
    :goto_1
    invoke-direct {p0, v0}, Ldolphin/webkit/WebViewCore;->setupViewport(Z)V

    .line 2886
    if-nez v0, :cond_0

    .line 2887
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->m:Ldolphin/webkit/ViewManager;

    invoke-virtual {v0}, Ldolphin/webkit/ViewManager;->h()V

    goto :goto_0

    .line 2881
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private focusNodeChanged(ILdolphin/webkit/WebViewCore$WebKitHitTest;)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x93

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3422
    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-nez v1, :cond_0

    .line 3443
    :goto_0
    return-object v0

    .line 3426
    :cond_0
    invoke-static {v0}, Ldolphin/webkit/fu;->a(Landroid/content/Context;)Ldolphin/webkit/fu;

    move-result-object v1

    .line 3428
    invoke-virtual {v1, p1}, Ldolphin/webkit/fu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3429
    if-nez v2, :cond_1

    .line 3430
    const-string v1, "dolphinwebcore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to resolve "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to a plugin APK"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3435
    :cond_1
    :try_start_0
    invoke-virtual {v1, v2, p2}, Ldolphin/webkit/fu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 3436
    :catch_0
    move-exception v1

    .line 3437
    const-string v1, "dolphinwebcore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find plugin classloader for the apk ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3438
    :catch_1
    move-exception v1

    .line 3439
    const-string v1, "dolphinwebcore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find plugin class ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") in the apk ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static declared-synchronized getTid()I
    .locals 2

    .prologue
    .line 3621
    const-class v0, Ldolphin/webkit/WebViewCore;

    monitor-enter v0

    :try_start_0
    sget v1, Ldolphin/webkit/WebViewCore;->sWebCoreTid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getUsedQuota()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 2480
    invoke-static {}, Ldolphin/webkit/WebStorageClassic;->d()Ldolphin/webkit/WebStorageClassic;

    move-result-object v2

    .line 2481
    invoke-virtual {v2}, Ldolphin/webkit/WebStorageClassic;->c()Ljava/util/Collection;

    move-result-object v2

    .line 2483
    if-nez v2, :cond_0

    .line 2490
    :goto_0
    return-wide v0

    .line 2487
    :cond_0
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebStorage$Origin;

    .line 2488
    invoke-virtual {v0}, Ldolphin/webkit/WebStorage$Origin;->getQuota()J

    move-result-wide v4

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_1

    :cond_1
    move-wide v0, v1

    .line 2490
    goto :goto_0
.end method

.method static getWebCoreHandler()Ldolphin/util/j;
    .locals 1

    .prologue
    .line 3617
    sget-object v0, Ldolphin/webkit/WebViewCore;->sWebCoreHandler:Ldolphin/util/j;

    return-object v0
.end method

.method private getWebView()Ldolphin/webkit/WebView;
    .locals 1

    .prologue
    .line 2821
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method private hideFullScreenPlugin()V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3465
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 3470
    :goto_0
    return-void

    .line 3468
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private initEditField(IIILdolphin/webkit/WebViewCore$TextFieldInitData;)V
    .locals 5
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3291
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 3301
    :goto_0
    return-void

    .line 3294
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x8e

    invoke-static {v0, v1, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3296
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x70

    iget v2, p4, Ldolphin/webkit/WebViewCore$TextFieldInitData;->mFieldPointer:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Ldolphin/webkit/WebViewCore;->createTextSelection(III)Ldolphin/webkit/kb;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public static declared-synchronized initWebCoreThread()V
    .locals 4

    .prologue
    .line 179
    const-class v1, Ldolphin/webkit/WebViewCore;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldolphin/webkit/WebViewCore;->sWebCoreHandler:Ldolphin/util/j;

    if-nez v0, :cond_1

    .line 181
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Ldolphin/webkit/kd;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ldolphin/webkit/kd;-><init>(Ldolphin/webkit/jj;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 182
    const-string v2, "WebViewCoreThread"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :goto_0
    :try_start_1
    sget-object v0, Ldolphin/webkit/WebViewCore;->sWebCoreHandler:Ldolphin/util/j;

    if-nez v0, :cond_0

    .line 186
    const-class v0, Ldolphin/webkit/WebViewCore;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    :try_start_2
    const-string v2, "dolphinwebcore"

    const-string v3, "Caught exception while waiting for thread creation."

    invoke-static {v2, v3}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v2, "dolphinwebcore"

    invoke-static {v0}, Ldolphin/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    sget-boolean v0, Ldolphin/webkit/WebViewCore;->sShouldMonitorWebCoreThread:Z

    if-eqz v0, :cond_1

    .line 199
    sget-object v0, Ldolphin/webkit/WebViewCore;->sWebCoreHandler:Ldolphin/util/j;

    invoke-static {v0}, Ldolphin/webkit/he;->a(Ldolphin/util/j;)Ldolphin/webkit/he;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    :cond_1
    monitor-exit v1

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initialize()V
    .locals 6

    .prologue
    .line 282
    new-instance v0, Ldolphin/webkit/BrowserFrame;

    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v3, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    iget-object v4, p0, Ldolphin/webkit/WebViewCore;->mSettings:Ldolphin/webkit/WebSettingsClassic;

    iget-object v5, p0, Ldolphin/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ldolphin/webkit/BrowserFrame;-><init>(Landroid/content/Context;Ldolphin/webkit/WebViewCore;Ldolphin/webkit/ae;Ldolphin/webkit/WebSettingsClassic;Ljava/util/Map;)V

    iput-object v0, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    .line 286
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mSettings:Ldolphin/webkit/WebSettingsClassic;

    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebSettingsClassic;->syncSettingsAndCreateHandler(Ldolphin/webkit/BrowserFrame;)V

    .line 288
    invoke-static {}, Ldolphin/webkit/WebIconDatabaseClassic;->a()Ldolphin/webkit/WebIconDatabaseClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebIconDatabaseClassic;->b()V

    .line 290
    invoke-static {}, Ldolphin/webkit/WebStorageClassic;->d()Ldolphin/webkit/WebStorageClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebStorageClassic;->b()V

    .line 292
    invoke-static {}, Ldolphin/webkit/GeolocationPermissionsClassic;->a()Ldolphin/webkit/GeolocationPermissionsClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/GeolocationPermissionsClassic;->c()V

    .line 294
    invoke-direct {p0}, Ldolphin/webkit/WebViewCore;->isNeedInitBackgroundLoader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-static {}, Ldolphin/webkit/Prereader;->b()Ldolphin/webkit/Prereader;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/Prereader;->d()V

    .line 297
    invoke-static {}, Ldolphin/webkit/j;->a()Ldolphin/webkit/j;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/j;->c()V

    .line 302
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    invoke-static {v0}, Ldolphin/webkit/jq;->a(Ldolphin/webkit/jq;)V

    .line 306
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x6b

    iget v2, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 312
    :cond_1
    return-void
.end method

.method private isNeedInitBackgroundLoader()Z
    .locals 2

    .prologue
    .line 265
    invoke-static {}, Ldolphin/webkit/DolphinWebkit;->getWorkingContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/webkit/DolphinWebkit;->init(Landroid/content/Context;)V

    .line 268
    :cond_0
    invoke-static {}, Ldolphin/webkit/DolphinWebkit;->getClientLanguage()Ljava/lang/String;

    move-result-object v0

    .line 269
    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    const/4 v0, 0x1

    .line 272
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSupportedMediaMimeType(Ljava/lang/String;)Z
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 377
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 378
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    const-string v0, "video/m4v"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/ogg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isUpdatePicturePaused(Ldolphin/webkit/WebViewCore;)Z
    .locals 1

    .prologue
    .line 2701
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Ldolphin/webkit/WebViewCore;->mDrawIsPaused:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepScreenOn(Z)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3410
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 3411
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3413
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 3414
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3416
    :cond_0
    return-void

    .line 3413
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private key(Landroid/view/KeyEvent;IZ)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2358
    iput p2, p0, Ldolphin/webkit/WebViewCore;->mChromeCanFocusDirection:I

    .line 2359
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 2360
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    .line 2362
    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2365
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 2368
    :cond_0
    iget v1, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v7

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Ldolphin/webkit/WebViewCore;->nativeKey(IIIIZZZZ)Z

    move-result v0

    .line 2371
    iput v9, p0, Ldolphin/webkit/WebViewCore;->mChromeCanFocusDirection:I

    .line 2372
    if-nez v0, :cond_1

    const/16 v0, 0x42

    if-eq v2, v0, :cond_1

    .line 2373
    const/16 v0, 0x13

    if-lt v2, v0, :cond_2

    const/16 v0, 0x16

    if-gt v2, v0, :cond_2

    .line 2375
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 2376
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2378
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2379
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2388
    :cond_1
    :goto_0
    return-void

    .line 2386
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1}, Ldolphin/webkit/ae;->b(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private keyPress(I)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 2391
    iget v1, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    const/4 v8, 0x1

    move-object v0, p0

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v8}, Ldolphin/webkit/WebViewCore;->nativeKey(IIIIZZZZ)Z

    .line 2392
    iget v1, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    move-object v0, p0

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v0 .. v8}, Ldolphin/webkit/WebViewCore;->nativeKey(IIIIZZZZ)Z

    .line 2393
    return-void
.end method

.method private loadData(Ljava/lang/String;Ldolphin/webkit/jo;)V
    .locals 6

    .prologue
    .line 2314
    if-eqz p1, :cond_0

    .line 2315
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2316
    if-lez v0, :cond_0

    .line 2324
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2325
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ftp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "about"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "javascript"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2329
    iget v1, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v1, v0}, Ldolphin/webkit/WebViewCore;->nativeRegisterURLSchemeAsLocal(ILjava/lang/String;)V

    .line 2333
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    iget-object v2, p2, Ldolphin/webkit/jo;->b:Ljava/lang/String;

    iget-object v3, p2, Ldolphin/webkit/jo;->c:Ljava/lang/String;

    iget-object v4, p2, Ldolphin/webkit/jo;->d:Ljava/lang/String;

    iget-object v5, p2, Ldolphin/webkit/jo;->e:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ldolphin/webkit/BrowserFrame;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v0}, Ldolphin/webkit/WebViewCore;->nativeContentInvalidateAll(I)V

    .line 2339
    return-void
.end method

.method private loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2309
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/BrowserFrame;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 2310
    return-void
.end method

.method private mapDirection(I)I
    .locals 1

    .prologue
    .line 455
    packed-switch p1, :pswitch_data_0

    .line 469
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 457
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 459
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 461
    :pswitch_2
    const/16 v0, 0x21

    goto :goto_0

    .line 463
    :pswitch_3
    const/16 v0, 0x82

    goto :goto_0

    .line 465
    :pswitch_4
    const/16 v0, 0x11

    goto :goto_0

    .line 467
    :pswitch_5
    const/16 v0, 0x42

    goto :goto_0

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private native nativeAutoFillForm(II)V
.end method

.method private static native nativeCertTrustChanged()V
.end method

.method private native nativeClearContent(I)V
.end method

.method private native nativeClearTextSelection(I)V
.end method

.method private native nativeCloseIdleConnections(I)V
.end method

.method private native nativeContentInvalidateAll(I)V
.end method

.method private native nativeContextMenuSelected(I)V
.end method

.method private native nativeDeleteBaseLayer(I)V
.end method

.method private native nativeDeleteSelection(IIII)V
.end method

.method private native nativeDeleteText(IIIII)V
.end method

.method private native nativeDumpDomTree(IZ)V
.end method

.method private native nativeDumpGraphicsTree(IZ)V
.end method

.method private native nativeDumpRenderTree(IZ)V
.end method

.method static native nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private native nativeFindAll(ILjava/lang/String;)I
.end method

.method private native nativeFindNext(IZ)I
.end method

.method private native nativeFocusBoundsChanged(I)Z
.end method

.method private native nativeFreeMemory(I)V
.end method

.method private native nativeFullScreenPluginHidden(II)V
.end method

.method private native nativeGeolocationPermissionsProvide(ILjava/lang/String;ZZ)V
.end method

.method private static native nativeGetBitmapByUrl(ILjava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetContentMinPrefWidth(I)I
.end method

.method private native nativeGetPerformanceCounter(I)J
.end method

.method private native nativeGetText(IIIII)Ljava/lang/String;
.end method

.method private native nativeHandleTouchEvent(II[I[I[IIII)I
.end method

.method private native nativeHitTest(IIIIZ)Ldolphin/webkit/WebViewCore$WebKitHitTest;
.end method

.method private native nativeHitTest2(IIIIZZ)Ldolphin/webkit/WebViewCore$WebKitHitTest;
.end method

.method private native nativeInsertText(ILjava/lang/String;)V
.end method

.method private native nativeKey(IIIIZZZZ)Z
.end method

.method private native nativeModifySelection(III)Ljava/lang/String;
.end method

.method private native nativeMouseClick(I)Z
.end method

.method private native nativeMoveMouse(III)V
.end method

.method private native nativeNotifyAnimationStarted(I)V
.end method

.method private native nativePause(I)V
.end method

.method private native nativePluginSurfaceReady(I)V
.end method

.method private native nativeProvideVisitedHistory(I[Ljava/lang/String;)V
.end method

.method private native nativeRecordContent(ILandroid/graphics/Point;)I
.end method

.method private native nativeRegisterURLSchemeAsLocal(ILjava/lang/String;)V
.end method

.method private native nativeReplaceTextfieldText(IIILjava/lang/String;III)V
.end method

.method private native nativeRequestLabel(III)Ljava/lang/String;
.end method

.method private native nativeResume(I)V
.end method

.method private native nativeRetrieveAnchorText(III)Ljava/lang/String;
.end method

.method private native nativeRetrieveHref(III)Ljava/lang/String;
.end method

.method private native nativeRetrieveImageSource(III)Ljava/lang/String;
.end method

.method private native nativeRevealSelection(I)V
.end method

.method private native nativeSaveDocumentState(I)V
.end method

.method private native nativeScrollFocusedTextInput(IFI)V
.end method

.method private native nativeScrollLayer(IILandroid/graphics/Rect;)V
.end method

.method private native nativeSelectAll(I)V
.end method

.method private native nativeSelectText(IIII)V
.end method

.method private native nativeSelectWordAt(III)Z
.end method

.method private native nativeSendListBoxChoice(II)V
.end method

.method private native nativeSendListBoxChoices(I[ZI)V
.end method

.method private native nativeSetBackgroundColor(II)V
.end method

.method private native nativeSetFocusControllerActive(IZ)V
.end method

.method private native nativeSetGlobalBounds(IIIII)V
.end method

.method private native nativeSetInitialFocus(II)V
.end method

.method private native nativeSetIsPaused(IZ)V
.end method

.method private native nativeSetJsFlags(ILjava/lang/String;)V
.end method

.method private native nativeSetNewStorageLimit(IJ)V
.end method

.method private native nativeSetScrollOffset(IZII)V
.end method

.method private native nativeSetSelection(III)V
.end method

.method private native nativeSetSize(IIIIFIIIIZFF)V
.end method

.method private needTouchEvents(Z)V
    .locals 4
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3229
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 3230
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v2, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v3, 0x74

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3234
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 3230
    goto :goto_0
.end method

.method private notifyGamePageDetected()V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3333
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 3337
    :goto_0
    return-void

    .line 3334
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    const/16 v1, 0x99

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3336
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private notifyNoFlashPlugin()V
    .locals 2

    .prologue
    .line 3340
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 3344
    :goto_0
    return-void

    .line 3341
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3343
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private onBestSearchResultDetected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 694
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    invoke-direct {p0}, Ldolphin/webkit/WebViewCore;->getWebView()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Ldolphin/webkit/ae;->a(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    return-void
.end method

.method private onCheckFullScreenStatus()Z
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3307
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v0

    .line 3308
    if-eqz v0, :cond_0

    .line 3309
    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebChromeClient;->onCheckFullScreenStatus(Ldolphin/webkit/WebView;)Z

    move-result v0

    .line 3311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onNextPageLinkDetected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 699
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    invoke-direct {p0}, Ldolphin/webkit/WebViewCore;->getWebView()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Ldolphin/webkit/ae;->b(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method private onPrevPageLinkDetected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 704
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    invoke-direct {p0}, Ldolphin/webkit/WebViewCore;->getWebView()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Ldolphin/webkit/ae;->c(Ldolphin/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method private openFileChooser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 482
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/ae;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 483
    if-eqz v1, :cond_3

    .line 484
    const-string v6, ""

    .line 486
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-static {v0}, Ldolphin/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 494
    if-eqz v2, :cond_1

    .line 496
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 497
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 500
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 505
    :goto_1
    if-nez v0, :cond_2

    .line 506
    const-string v0, ""

    .line 516
    :cond_0
    :goto_2
    return-object v0

    .line 500
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 503
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 509
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 516
    :cond_3
    const-string v0, ""

    goto :goto_2

    :cond_4
    move-object v0, v6

    goto :goto_0
.end method

.method private native passToJs(IILjava/lang/String;IIZZZZ)V
.end method

.method private pause()V
    .locals 1

    .prologue
    .line 2708
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v0}, Ldolphin/webkit/WebViewCore;->nativePause(I)V

    .line 2709
    return-void
.end method

.method public static pauseTimers()V
    .locals 2

    .prologue
    .line 344
    sget-object v0, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_0
    sget-object v0, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0}, Ldolphin/webkit/JWebCoreJavaBridge;->b()V

    .line 349
    return-void
.end method

.method static pauseUpdatePicture(Ldolphin/webkit/WebViewCore;)V
    .locals 2

    .prologue
    .line 2666
    if-eqz p0, :cond_0

    .line 2667
    invoke-virtual {p0}, Ldolphin/webkit/WebViewCore;->getSettings()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->enableSmoothTransition()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2679
    :cond_0
    :goto_0
    return-void

    .line 2669
    :cond_1
    monitor-enter p0

    .line 2670
    :try_start_0
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    if-nez v0, :cond_2

    .line 2671
    const-string v0, "dolphinwebcore"

    const-string v1, "Cannot pauseUpdatePicture, core destroyed or not initialized!"

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    monitor-exit p0

    goto :goto_0

    .line 2676
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2674
    :cond_2
    :try_start_1
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ldolphin/webkit/WebViewCore;->nativeSetIsPaused(IZ)V

    .line 2675
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/WebViewCore;->mDrawIsPaused:Z

    .line 2676
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private performHitTest(IIIZ)Ldolphin/webkit/WebViewCore$WebKitHitTest;
    .locals 6

    .prologue
    .line 2297
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ldolphin/webkit/WebViewCore;->performHitTest2(IIIZZ)Ldolphin/webkit/WebViewCore$WebKitHitTest;

    move-result-object v0

    return-object v0
.end method

.method private performHitTest2(IIIZZ)Ldolphin/webkit/WebViewCore$WebKitHitTest;
    .locals 7

    .prologue
    .line 2288
    iget v1, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Ldolphin/webkit/WebViewCore;->nativeHitTest2(IIIIZZ)Ldolphin/webkit/WebViewCore$WebKitHitTest;

    move-result-object v0

    .line 2289
    iput p1, v0, Ldolphin/webkit/WebViewCore$WebKitHitTest;->mHitTestX:I

    .line 2290
    iput p2, v0, Ldolphin/webkit/WebViewCore$WebKitHitTest;->mHitTestY:I

    .line 2291
    iput p3, v0, Ldolphin/webkit/WebViewCore$WebKitHitTest;->mHitTestSlop:I

    .line 2292
    iput-boolean p4, v0, Ldolphin/webkit/WebViewCore$WebKitHitTest;->mHitTestMovedMouse:Z

    .line 2293
    return-object v0
.end method

.method private postUrl(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 2342
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/BrowserFrame;->a(Ljava/lang/String;[B)V

    .line 2343
    return-void
.end method

.method static reducePriority()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2641
    sget-object v0, Ldolphin/webkit/WebViewCore;->sWebCoreHandler:Ldolphin/util/j;

    invoke-virtual {v0, v2}, Ldolphin/util/j;->removeMessages(I)V

    .line 2642
    sget-object v0, Ldolphin/webkit/WebViewCore;->sWebCoreHandler:Ldolphin/util/j;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ldolphin/util/j;->removeMessages(I)V

    .line 2643
    sget-object v0, Ldolphin/webkit/WebViewCore;->sWebCoreHandler:Ldolphin/util/j;

    sget-object v1, Ldolphin/webkit/WebViewCore;->sWebCoreHandler:Ldolphin/util/j;

    invoke-virtual {v1, v2}, Ldolphin/util/j;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/util/j;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2645
    return-void
.end method

.method private requestKeyboard(Z)V
    .locals 4
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3386
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 3387
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v2, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v3, 0x76

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3391
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 3387
    goto :goto_0
.end method

.method private requestListBox([Ljava/lang/String;[II)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3377
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 3378
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, p1, p2, p3}, Ldolphin/webkit/WebViewClassic;->a([Ljava/lang/String;[II)V

    .line 3381
    :cond_0
    return-void
.end method

.method private requestListBox([Ljava/lang/String;[I[I)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3368
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 3369
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, p1, p2, p3}, Ldolphin/webkit/WebViewClassic;->a([Ljava/lang/String;[I[I)V

    .line 3371
    :cond_0
    return-void
.end method

.method private restoreScale(FF)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3217
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v0}, Ldolphin/webkit/BrowserFrame;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3218
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/WebViewCore;->mIsRestored:Z

    .line 3219
    iput p1, p0, Ldolphin/webkit/WebViewCore;->mRestoredScale:F

    .line 3220
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mSettings:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3221
    iput p2, p0, Ldolphin/webkit/WebViewCore;->mRestoredTextWrapScale:F

    .line 3224
    :cond_0
    return-void
.end method

.method private restoreState(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2713
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    invoke-virtual {v0}, Ldolphin/webkit/ae;->e()Ldolphin/webkit/WebBackForwardList;

    move-result-object v2

    .line 2714
    invoke-virtual {v2}, Ldolphin/webkit/WebBackForwardList;->getSize()I

    move-result v3

    move v0, v1

    .line 2715
    :goto_0
    if-ge v0, v3, :cond_0

    .line 2716
    invoke-virtual {v2, v0}, Ldolphin/webkit/WebBackForwardList;->getItemAtIndex(I)Ldolphin/webkit/WebHistoryItem;

    move-result-object v4

    iget-object v5, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    iget v5, v5, Ldolphin/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v4, v5}, Ldolphin/webkit/WebHistoryItem;->inflate(I)V

    .line 2715
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2718
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    const/4 v2, 0x1

    iput-boolean v2, v0, Ldolphin/webkit/BrowserFrame;->a:Z

    .line 2719
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    iget v0, v0, Ldolphin/webkit/BrowserFrame;->mNativeFrame:I

    invoke-static {v0, p1}, Ldolphin/webkit/WebBackForwardList;->restoreIndex(II)V

    .line 2720
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    iput-boolean v1, v0, Ldolphin/webkit/BrowserFrame;->a:Z

    .line 2722
    return-void
.end method

.method static resumePriority()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 2649
    sget-object v0, Ldolphin/webkit/WebViewCore;->sWebCoreHandler:Ldolphin/util/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldolphin/util/j;->removeMessages(I)V

    .line 2650
    sget-object v0, Ldolphin/webkit/WebViewCore;->sWebCoreHandler:Ldolphin/util/j;

    invoke-virtual {v0, v2}, Ldolphin/util/j;->removeMessages(I)V

    .line 2651
    sget-object v0, Ldolphin/webkit/WebViewCore;->sWebCoreHandler:Ldolphin/util/j;

    sget-object v1, Ldolphin/webkit/WebViewCore;->sWebCoreHandler:Ldolphin/util/j;

    invoke-virtual {v1, v2}, Ldolphin/util/j;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/util/j;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2653
    return-void
.end method

.method public static resumeTimers()V
    .locals 2

    .prologue
    .line 355
    sget-object v0, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    sget-object v0, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0}, Ldolphin/webkit/JWebCoreJavaBridge;->c()V

    .line 360
    return-void
.end method

.method static resumeUpdatePicture(Ldolphin/webkit/WebViewCore;)V
    .locals 2

    .prologue
    .line 2682
    if-eqz p0, :cond_0

    .line 2684
    iget-boolean v0, p0, Ldolphin/webkit/WebViewCore;->mDrawIsPaused:Z

    if-nez v0, :cond_1

    .line 2698
    :cond_0
    :goto_0
    return-void

    .line 2687
    :cond_1
    monitor-enter p0

    .line 2688
    :try_start_0
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    if-nez v0, :cond_2

    .line 2689
    const-string v0, "dolphinwebcore"

    const-string v1, "Cannot resumeUpdatePicture, core destroyed!"

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    monitor-exit p0

    goto :goto_0

    .line 2696
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2692
    :cond_2
    :try_start_1
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ldolphin/webkit/WebViewCore;->nativeSetIsPaused(IZ)V

    .line 2693
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/WebViewCore;->mDrawIsPaused:Z

    .line 2695
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 2696
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private saveViewState(Ljava/io/OutputStream;Ldolphin/webkit/ValueCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ldolphin/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2619
    new-instance v2, Ldolphin/webkit/jp;

    invoke-direct {v2}, Ldolphin/webkit/jp;-><init>()V

    .line 2621
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    iget-object v3, v2, Ldolphin/webkit/jp;->c:Landroid/graphics/Point;

    invoke-direct {p0, v0, v3}, Ldolphin/webkit/WebViewCore;->nativeRecordContent(ILandroid/graphics/Point;)I

    move-result v0

    iput v0, v2, Ldolphin/webkit/jp;->a:I

    .line 2624
    :try_start_0
    invoke-static {p1, v2}, Ldolphin/webkit/ViewStateSerializer;->a(Ljava/io/OutputStream;Ldolphin/webkit/jp;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2628
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Ldolphin/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 2629
    iget v0, v2, Ldolphin/webkit/jp;->a:I

    if-eqz v0, :cond_1

    .line 2630
    iget-boolean v0, p0, Ldolphin/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v0, :cond_0

    .line 2631
    iput-boolean v1, p0, Ldolphin/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 2632
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    const/16 v1, 0x82

    invoke-static {v0, v1}, Ldolphin/webkit/jq;->b(Ldolphin/webkit/jq;I)V

    .line 2634
    :cond_0
    iput-object v2, p0, Ldolphin/webkit/WebViewCore;->mLastDrawData:Ldolphin/webkit/jp;

    .line 2635
    invoke-direct {p0, v2}, Ldolphin/webkit/WebViewCore;->webkitDraw(Ldolphin/webkit/jp;)V

    .line 2637
    :cond_1
    return-void

    .line 2625
    :catch_0
    move-exception v0

    .line 2626
    const-string v3, "dolphinwebcore"

    const-string v4, "Failed to save view state"

    invoke-static {v3, v4, v0}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method

.method private saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2350
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/BrowserFrame;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private selectAt(II)V
    .locals 0
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3576
    return-void
.end method

.method private sendNotifyProgressFinished()V
    .locals 0
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 2787
    invoke-virtual {p0}, Ldolphin/webkit/WebViewCore;->contentDraw()V

    .line 2788
    return-void
.end method

.method private sendPluginDrawMsg()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 2827
    const/16 v0, 0xc3

    invoke-virtual {p0, v0}, Ldolphin/webkit/WebViewCore;->sendMessage(I)V

    .line 2828
    return-void
.end method

.method static sendStaticMessage(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 2656
    sget-object v0, Ldolphin/webkit/WebViewCore;->sWebCoreHandler:Ldolphin/util/j;

    if-nez v0, :cond_0

    .line 2660
    :goto_0
    return-void

    .line 2659
    :cond_0
    sget-object v0, Ldolphin/webkit/WebViewCore;->sWebCoreHandler:Ldolphin/util/j;

    sget-object v1, Ldolphin/webkit/WebViewCore;->sWebCoreHandler:Ldolphin/util/j;

    invoke-virtual {v1, p0, p1}, Ldolphin/util/j;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendViewInvalidate(IIII)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 2796
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 2797
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x75

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2801
    :cond_0
    return-void
.end method

.method private setFullScreen(Z)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3318
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 3323
    :goto_0
    return-void

    .line 3319
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x9a

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3321
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3322
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private setOrientation()V
    .locals 3

    .prologue
    .line 2917
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebView;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    .line 2918
    iget v1, p0, Ldolphin/webkit/WebViewCore;->mViewportCanScreenRotate:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2919
    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mSettings:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebSettingsClassic;->getApplicationOrientationConfig()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 2923
    :goto_0
    return-void

    .line 2921
    :cond_0
    iget v1, p0, Ldolphin/webkit/WebViewCore;->mViewportCanScreenRotate:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private setScrollbarModes(II)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3565
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 3570
    :goto_0
    return-void

    .line 3568
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x81

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method static setShouldMonitorWebCoreThread()V
    .locals 1

    .prologue
    .line 3625
    const/4 v0, 0x1

    sput-boolean v0, Ldolphin/webkit/WebViewCore;->sShouldMonitorWebCoreThread:Z

    .line 3626
    return-void
.end method

.method private setTouchEventHitTestResult([Landroid/graphics/Rect;)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 2868
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 2869
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0xa3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2871
    :cond_0
    return-void
.end method

.method private setUseMockDeviceOrientation()V
    .locals 1

    .prologue
    .line 3579
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Ldolphin/webkit/DeviceMotionAndOrientationManager;

    invoke-virtual {v0}, Ldolphin/webkit/DeviceMotionAndOrientationManager;->a()V

    .line 3580
    return-void
.end method

.method private native setViewportSettingsFromNative(I)V
.end method

.method private setWebTextViewAutoFillable(ILjava/lang/String;)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3395
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 3396
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x85

    new-instance v2, Ldolphin/webkit/jn;

    invoke-direct {v2, p1, p2}, Ldolphin/webkit/jn;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3400
    :cond_0
    return-void
.end method

.method private setupViewport(Z)V
    .locals 11

    .prologue
    const/16 v10, 0x69

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/high16 v8, 0x42c80000

    const/4 v5, 0x0

    .line 2927
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mSettings:Ldolphin/webkit/WebSettingsClassic;

    if-nez v0, :cond_1

    .line 3212
    :cond_0
    :goto_0
    return-void

    .line 2932
    :cond_1
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v0}, Ldolphin/webkit/WebViewCore;->setViewportSettingsFromNative(I)V

    .line 2935
    invoke-direct {p0}, Ldolphin/webkit/WebViewCore;->setOrientation()V

    .line 2936
    iget-boolean v0, p0, Ldolphin/webkit/WebViewCore;->mViewportFullScreen:Z

    if-eqz v0, :cond_2

    .line 2937
    iget-boolean v0, p0, Ldolphin/webkit/WebViewCore;->mViewportFullScreen:Z

    invoke-direct {p0, v0}, Ldolphin/webkit/WebViewCore;->setFullScreen(Z)V

    .line 2942
    :cond_2
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v0, :cond_4

    .line 2943
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v0, :cond_3

    .line 2944
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    iget v1, p0, Ldolphin/webkit/WebViewCore;->mViewportMinimumScale:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2947
    :cond_3
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v0, :cond_4

    .line 2948
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    iget v1, p0, Ldolphin/webkit/WebViewCore;->mViewportMaximumScale:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2953
    :cond_4
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mSettings:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->forceUserScalable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2954
    iput-boolean v4, p0, Ldolphin/webkit/WebViewCore;->mViewportUserScalable:Z

    .line 2955
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v0, :cond_11

    .line 2956
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v0, :cond_5

    .line 2957
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mViewportMinimumScale:I

    iget v1, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ldolphin/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2960
    :cond_5
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v0, :cond_6

    .line 2961
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mViewportMaximumScale:I

    iget v1, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ldolphin/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 2975
    :cond_6
    :goto_1
    const/high16 v0, 0x3f800000

    .line 2976
    iget v1, p0, Ldolphin/webkit/WebViewCore;->mViewportDensityDpi:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    .line 2977
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 2985
    :cond_7
    :goto_2
    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2987
    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->W()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_8

    .line 2988
    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v2, 0x8b

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2991
    :cond_8
    mul-float v1, v0, v8

    float-to-int v1, v1

    .line 2993
    iget v2, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v2, :cond_9

    .line 2994
    iget v2, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2996
    :cond_9
    iget v2, p0, Ldolphin/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v2, :cond_a

    .line 2997
    iget v2, p0, Ldolphin/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Ldolphin/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2999
    :cond_a
    iget v2, p0, Ldolphin/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v2, :cond_b

    .line 3000
    iget v2, p0, Ldolphin/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Ldolphin/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 3004
    :cond_b
    iget v2, p0, Ldolphin/webkit/WebViewCore;->mViewportWidth:I

    if-nez v2, :cond_c

    .line 3005
    iget v2, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    if-nez v2, :cond_c

    .line 3006
    iput v1, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    .line 3009
    :cond_c
    iget-boolean v2, p0, Ldolphin/webkit/WebViewCore;->mViewportUserScalable:Z

    if-nez v2, :cond_d

    .line 3011
    iget v2, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    iput v2, p0, Ldolphin/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 3012
    iget v2, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    iput v2, p0, Ldolphin/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 3014
    :cond_d
    iget v2, p0, Ldolphin/webkit/WebViewCore;->mViewportMinimumScale:I

    iget v3, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    if-le v2, v3, :cond_e

    iget v2, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    if-eqz v2, :cond_e

    .line 3016
    iget v2, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    iput v2, p0, Ldolphin/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 3018
    :cond_e
    iget v2, p0, Ldolphin/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v2, :cond_f

    iget v2, p0, Ldolphin/webkit/WebViewCore;->mViewportMaximumScale:I

    iget v3, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    if-ge v2, v3, :cond_f

    .line 3020
    iget v2, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    iput v2, p0, Ldolphin/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 3022
    :cond_f
    iget v2, p0, Ldolphin/webkit/WebViewCore;->mViewportWidth:I

    if-gez v2, :cond_10

    iget v2, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    if-ne v2, v1, :cond_10

    .line 3023
    iput v5, p0, Ldolphin/webkit/WebViewCore;->mViewportWidth:I

    .line 3027
    :cond_10
    iget v1, p0, Ldolphin/webkit/WebViewCore;->mViewportWidth:I

    if-eqz v1, :cond_14

    if-nez p1, :cond_14

    .line 3029
    iput-boolean v4, p0, Ldolphin/webkit/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    .line 3030
    new-instance v1, Ldolphin/webkit/kc;

    invoke-direct {v1}, Ldolphin/webkit/kc;-><init>()V

    .line 3031
    iget v2, p0, Ldolphin/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v2, v2

    div-float/2addr v2, v8

    iput v2, v1, Ldolphin/webkit/kc;->a:F

    .line 3032
    iget v2, p0, Ldolphin/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v2, v2

    div-float/2addr v2, v8

    iput v2, v1, Ldolphin/webkit/kc;->b:F

    .line 3033
    iput v0, v1, Ldolphin/webkit/kc;->e:F

    .line 3035
    iput-boolean v5, v1, Ldolphin/webkit/kc;->h:Z

    .line 3037
    iput v5, v1, Ldolphin/webkit/kc;->f:I

    .line 3038
    iput-boolean v5, v1, Ldolphin/webkit/kc;->j:Z

    .line 3039
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2965
    :cond_11
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v0, :cond_12

    .line 2966
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mViewportMinimumScale:I

    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ldolphin/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2968
    :cond_12
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v0, :cond_6

    .line 2969
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mViewportMaximumScale:I

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ldolphin/webkit/WebViewCore;->mViewportMaximumScale:I

    goto/16 :goto_1

    .line 2978
    :cond_13
    iget v1, p0, Ldolphin/webkit/WebViewCore;->mViewportDensityDpi:I

    if-lez v1, :cond_7

    .line 2979
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    iget v1, p0, Ldolphin/webkit/WebViewCore;->mViewportDensityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto/16 :goto_2

    .line 3048
    :cond_14
    iget v1, p0, Ldolphin/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 3049
    if-nez v1, :cond_17

    .line 3053
    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->getViewWidth()I

    move-result v2

    .line 3054
    int-to-float v1, v2

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 3055
    if-nez v1, :cond_15

    .line 3063
    :cond_15
    :goto_3
    new-instance v3, Ldolphin/webkit/kc;

    invoke-direct {v3}, Ldolphin/webkit/kc;-><init>()V

    iput-object v3, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    .line 3064
    iget-object v3, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iget v6, p0, Ldolphin/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v6, v6

    div-float/2addr v6, v8

    iput v6, v3, Ldolphin/webkit/kc;->a:F

    .line 3065
    iget-object v3, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iget v6, p0, Ldolphin/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v6, v6

    div-float/2addr v6, v8

    iput v6, v3, Ldolphin/webkit/kc;->b:F

    .line 3066
    iget-object v3, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iput v0, v3, Ldolphin/webkit/kc;->e:F

    .line 3067
    iget-object v3, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iget v6, p0, Ldolphin/webkit/WebViewCore;->mRestoredX:I

    iput v6, v3, Ldolphin/webkit/kc;->f:I

    .line 3068
    iget-object v3, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iget v6, p0, Ldolphin/webkit/WebViewCore;->mRestoredY:I

    iput v6, v3, Ldolphin/webkit/kc;->g:I

    .line 3069
    iget-object v6, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iget v3, p0, Ldolphin/webkit/WebViewCore;->mRestoredX:I

    if-nez v3, :cond_18

    iget v3, p0, Ldolphin/webkit/WebViewCore;->mRestoredY:I

    if-nez v3, :cond_18

    iget-object v3, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    if-eqz v3, :cond_18

    iget-object v3, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v3}, Ldolphin/webkit/BrowserFrame;->m()Z

    move-result v3

    if-eqz v3, :cond_18

    move v3, v4

    :goto_4
    iput-boolean v3, v6, Ldolphin/webkit/kc;->j:Z

    .line 3074
    iget-object v6, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iget v3, p0, Ldolphin/webkit/WebViewCore;->mViewportWidth:I

    if-nez v3, :cond_19

    move v3, v4

    :goto_5
    iput-boolean v3, v6, Ldolphin/webkit/kc;->h:Z

    .line 3075
    iget-object v3, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-eqz v3, :cond_16

    .line 3076
    iget-object v3, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v6, v3, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v7, 0xa4

    iget-object v3, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iget-boolean v3, v3, Ldolphin/webkit/kc;->h:Z

    if-eqz v3, :cond_1a

    move v3, v4

    :goto_6
    invoke-static {v6, v7, v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 3080
    :cond_16
    iget-boolean v3, p0, Ldolphin/webkit/WebViewCore;->mIsRestored:Z

    if-eqz v3, :cond_1c

    .line 3081
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iput-boolean v4, v0, Ldolphin/webkit/kc;->i:Z

    .line 3082
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iget v3, p0, Ldolphin/webkit/WebViewCore;->mRestoredScale:F

    iput v3, v0, Ldolphin/webkit/kc;->c:F

    .line 3083
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mRestoredTextWrapScale:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_1b

    .line 3084
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iget v3, p0, Ldolphin/webkit/WebViewCore;->mRestoredTextWrapScale:F

    iput v3, v0, Ldolphin/webkit/kc;->d:F

    .line 3107
    :goto_7
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-boolean v0, v0, Ldolphin/webkit/WebViewClassic;->q:Z

    if-eqz v0, :cond_20

    .line 3113
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iput v5, v0, Ldolphin/webkit/WebViewClassic;->s:I

    .line 3116
    new-instance v0, Ldolphin/webkit/jh;

    invoke-direct {v0}, Ldolphin/webkit/jh;-><init>()V

    .line 3117
    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget v1, v1, Ldolphin/webkit/WebViewClassic;->r:I

    iput v1, v0, Ldolphin/webkit/jh;->a:I

    .line 3118
    iput v5, v0, Ldolphin/webkit/jh;->b:I

    .line 3121
    iget v1, v0, Ldolphin/webkit/jh;->a:I

    iput v1, v0, Ldolphin/webkit/jh;->e:I

    .line 3122
    const/high16 v1, -0x40800000

    iput v1, v0, Ldolphin/webkit/jh;->h:F

    .line 3123
    iput-boolean v5, v0, Ldolphin/webkit/jh;->i:Z

    .line 3124
    iput v5, v0, Ldolphin/webkit/jh;->g:I

    iput v5, v0, Ldolphin/webkit/jh;->f:I

    .line 3131
    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    invoke-static {v1, v10}, Ldolphin/webkit/jq;->b(Ldolphin/webkit/jq;I)V

    .line 3132
    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    const/4 v2, 0x0

    invoke-static {v2, v10, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v1, v0}, Ldolphin/webkit/jq;->b(Ldolphin/webkit/jq;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3061
    :cond_17
    int-to-float v2, v1

    iget v3, p0, Ldolphin/webkit/WebViewCore;->mCurrentViewScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto/16 :goto_3

    :cond_18
    move v3, v5

    .line 3069
    goto :goto_4

    :cond_19
    move v3, v5

    .line 3074
    goto :goto_5

    :cond_1a
    move v3, v5

    .line 3076
    goto :goto_6

    .line 3086
    :cond_1b
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iget-object v3, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iget v3, v3, Ldolphin/webkit/kc;->c:F

    iput v3, v0, Ldolphin/webkit/kc;->d:F

    goto :goto_7

    .line 3089
    :cond_1c
    iget v3, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v3, :cond_1d

    .line 3090
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iget-object v3, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iget v4, p0, Ldolphin/webkit/WebViewCore;->mViewportInitialScale:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    iput v4, v3, Ldolphin/webkit/kc;->d:F

    iput v4, v0, Ldolphin/webkit/kc;->c:F

    goto :goto_7

    .line 3092
    :cond_1d
    iget v3, p0, Ldolphin/webkit/WebViewCore;->mViewportWidth:I

    if-lez v3, :cond_1e

    iget v3, p0, Ldolphin/webkit/WebViewCore;->mViewportWidth:I

    if-ge v3, v2, :cond_1e

    invoke-virtual {p0}, Ldolphin/webkit/WebViewCore;->getSettings()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Ldolphin/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3094
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iget-object v3, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    int-to-float v4, v2

    iget v6, p0, Ldolphin/webkit/WebViewCore;->mViewportWidth:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    iput v4, v3, Ldolphin/webkit/kc;->d:F

    iput v4, v0, Ldolphin/webkit/kc;->c:F

    goto :goto_7

    .line 3097
    :cond_1e
    iget-object v3, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iput v0, v3, Ldolphin/webkit/kc;->d:F

    .line 3098
    iget-object v3, p0, Ldolphin/webkit/WebViewCore;->mSettings:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v3}, Ldolphin/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 3100
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iput v9, v0, Ldolphin/webkit/kc;->c:F

    goto/16 :goto_7

    .line 3102
    :cond_1f
    iget-object v3, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iput v0, v3, Ldolphin/webkit/kc;->c:F

    goto/16 :goto_7

    .line 3135
    :cond_20
    if-nez v1, :cond_21

    .line 3138
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iput v5, v0, Ldolphin/webkit/WebViewClassic;->r:I

    goto/16 :goto_0

    .line 3140
    :cond_21
    new-instance v3, Ldolphin/webkit/jh;

    invoke-direct {v3}, Ldolphin/webkit/jh;-><init>()V

    .line 3144
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iget v0, v0, Ldolphin/webkit/kc;->c:F

    .line 3145
    cmpl-float v4, v0, v9

    if-nez v4, :cond_24

    .line 3152
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iget v0, v0, Ldolphin/webkit/kc;->d:F

    .line 3153
    int-to-float v4, v2

    div-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 3154
    invoke-direct {p0, v4}, Ldolphin/webkit/WebViewCore;->calculateWindowWidth(I)I

    move-result v4

    .line 3158
    int-to-float v6, v2

    int-to-float v4, v4

    div-float v4, v6, v4

    iput v4, v3, Ldolphin/webkit/jh;->h:F

    .line 3159
    iget-object v4, p0, Ldolphin/webkit/WebViewCore;->mSettings:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v4}, Ldolphin/webkit/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v4

    if-nez v4, :cond_22

    .line 3161
    iget v4, v3, Ldolphin/webkit/jh;->h:F

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v3, Ldolphin/webkit/jh;->h:F

    .line 3163
    :cond_22
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mSettings:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3165
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iget-object v4, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget v6, v3, Ldolphin/webkit/jh;->h:F

    invoke-virtual {v4, v6}, Ldolphin/webkit/WebViewClassic;->b(F)F

    move-result v4

    iput v4, v0, Ldolphin/webkit/kc;->d:F

    .line 3180
    :cond_23
    :goto_8
    int-to-float v0, v2

    iget v4, v3, Ldolphin/webkit/jh;->h:F

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v3, Ldolphin/webkit/jh;->a:I

    .line 3186
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mCurrentViewHeight:I

    if-nez v0, :cond_25

    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->getViewHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, v3, Ldolphin/webkit/jh;->h:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_9
    iput v0, v3, Ldolphin/webkit/jh;->b:I

    .line 3198
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mCurrentActualViewHeight:I

    iput v0, v3, Ldolphin/webkit/jh;->d:I

    .line 3199
    int-to-float v0, v2

    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iget v1, v1, Ldolphin/webkit/kc;->d:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v3, Ldolphin/webkit/jh;->e:I

    .line 3201
    iput-boolean v5, v3, Ldolphin/webkit/jh;->i:Z

    .line 3202
    iput v5, v3, Ldolphin/webkit/jh;->g:I

    iput v5, v3, Ldolphin/webkit/jh;->f:I

    .line 3203
    iput v9, v3, Ldolphin/webkit/jh;->k:F

    iput v9, v3, Ldolphin/webkit/jh;->j:F

    .line 3206
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    invoke-static {v0, v10}, Ldolphin/webkit/jq;->b(Ldolphin/webkit/jq;I)V

    .line 3209
    invoke-direct {p0, v3}, Ldolphin/webkit/WebViewCore;->viewSizeChanged(Ldolphin/webkit/jh;)V

    goto/16 :goto_0

    .line 3170
    :cond_24
    iput v0, v3, Ldolphin/webkit/jh;->h:F

    goto :goto_8

    .line 3186
    :cond_25
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mCurrentViewHeight:I

    int-to-float v0, v0

    iget v4, v3, Ldolphin/webkit/jh;->a:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_9
.end method

.method private showFullScreenPlugin(Ldolphin/webkit/ViewManager$ChildView;II)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3450
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 3460
    :goto_0
    return-void

    .line 3454
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3456
    iget-object v1, p1, Ldolphin/webkit/ViewManager$ChildView;->e:Landroid/view/View;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3457
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 3458
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 3459
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private showRect(IIIIIIFFFF)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3535
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 3536
    new-instance v0, Ldolphin/webkit/WebViewCore$ShowRectData;

    invoke-direct {v0}, Ldolphin/webkit/WebViewCore$ShowRectData;-><init>()V

    .line 3537
    iput p1, v0, Ldolphin/webkit/WebViewCore$ShowRectData;->mLeft:I

    .line 3538
    iput p2, v0, Ldolphin/webkit/WebViewCore$ShowRectData;->mTop:I

    .line 3539
    iput p3, v0, Ldolphin/webkit/WebViewCore$ShowRectData;->mWidth:I

    .line 3540
    iput p4, v0, Ldolphin/webkit/WebViewCore$ShowRectData;->mHeight:I

    .line 3541
    iput p5, v0, Ldolphin/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    .line 3542
    iput p6, v0, Ldolphin/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    .line 3543
    iput p7, v0, Ldolphin/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    .line 3544
    iput p8, v0, Ldolphin/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    .line 3545
    iput p9, v0, Ldolphin/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    .line 3546
    iput p10, v0, Ldolphin/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    .line 3547
    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v2, 0x71

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3550
    :cond_0
    return-void
.end method

.method private toggleLongClickEnabled(Z)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 2900
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 2901
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x9c

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2903
    :cond_0
    return-void
.end method

.method private updateSurface(Ldolphin/webkit/ViewManager$ChildView;IIII)V
    .locals 0
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3507
    invoke-virtual {p1, p2, p3, p4, p5}, Ldolphin/webkit/ViewManager$ChildView;->b(IIII)V

    .line 3508
    return-void
.end method

.method private updateTextSelection(IIIII)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3259
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 3260
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-direct {p0, p2, p3, p5}, Ldolphin/webkit/WebViewCore;->createTextSelection(III)Ldolphin/webkit/kb;

    move-result-object v2

    invoke-static {v0, v1, p1, p4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3264
    :cond_0
    return-void
.end method

.method private updateTextSizeAndScroll(IIIII)V
    .locals 5
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3270
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 3271
    new-instance v0, Landroid/graphics/Rect;

    neg-int v1, p4

    neg-int v2, p5

    sub-int v3, p2, p4

    sub-int v4, p3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3273
    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v2, 0x96

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3277
    :cond_0
    return-void
.end method

.method private updateTextfield(IZLjava/lang/String;I)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3240
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 3241
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-static {v0, v1, p1, p4, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3244
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3245
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3247
    :cond_0
    return-void
.end method

.method private updateViewport()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 2910
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldolphin/webkit/WebViewCore;->setupViewport(Z)V

    .line 2911
    return-void
.end method

.method private viewSizeChanged(Ldolphin/webkit/jh;)V
    .locals 14

    .prologue
    .line 2406
    iget v6, p1, Ldolphin/webkit/jh;->a:I

    .line 2407
    iget v13, p1, Ldolphin/webkit/jh;->b:I

    .line 2408
    iget v4, p1, Ldolphin/webkit/jh;->e:I

    .line 2409
    iget v5, p1, Ldolphin/webkit/jh;->h:F

    .line 2414
    if-nez v6, :cond_1

    .line 2415
    const-string v0, "dolphinwebcore"

    const-string v1, "skip viewSizeChanged as w is 0"

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    :cond_0
    :goto_0
    return-void

    .line 2418
    :cond_1
    invoke-direct {p0, v6}, Ldolphin/webkit/WebViewCore;->calculateWindowWidth(I)I

    move-result v2

    .line 2419
    if-nez v2, :cond_2

    .line 2420
    const-string v0, "dolphinwebcore"

    const-string v1, "skip viewSizeChanged as width is 0"

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2424
    :cond_2
    if-eq v2, v6, :cond_8

    .line 2425
    iget v0, p1, Ldolphin/webkit/jh;->c:F

    .line 2426
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    .line 2427
    :goto_1
    int-to-float v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 2429
    :goto_2
    iget v0, p1, Ldolphin/webkit/jh;->d:I

    if-lez v0, :cond_6

    iget v7, p1, Ldolphin/webkit/jh;->d:I

    .line 2430
    :goto_3
    iget v1, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    iget v8, p1, Ldolphin/webkit/jh;->f:I

    iget v9, p1, Ldolphin/webkit/jh;->g:I

    iget-boolean v10, p1, Ldolphin/webkit/jh;->i:Z

    iget v11, p1, Ldolphin/webkit/jh;->j:F

    iget v12, p1, Ldolphin/webkit/jh;->k:F

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Ldolphin/webkit/WebViewCore;->nativeSetSize(IIIIFIIIIZFF)V

    .line 2434
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    if-eqz v0, :cond_3

    .line 2435
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v0}, Ldolphin/webkit/BrowserFrame;->h()V

    .line 2439
    :cond_3
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mCurrentViewWidth:I

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 2440
    :goto_4
    iput v6, p0, Ldolphin/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 2441
    iput v13, p0, Ldolphin/webkit/WebViewCore;->mCurrentViewHeight:I

    .line 2442
    iput v7, p0, Ldolphin/webkit/WebViewCore;->mCurrentActualViewHeight:I

    .line 2443
    iput v5, p0, Ldolphin/webkit/WebViewCore;->mCurrentViewScale:F

    .line 2444
    if-eqz v0, :cond_4

    .line 2448
    invoke-virtual {p0}, Ldolphin/webkit/WebViewCore;->contentDraw()V

    .line 2450
    :cond_4
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2452
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x9f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2454
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2426
    :cond_5
    int-to-float v0, v13

    int-to-float v1, v6

    div-float/2addr v0, v1

    goto :goto_1

    :cond_6
    move v7, v13

    .line 2429
    goto :goto_3

    .line 2439
    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    move v3, v13

    goto :goto_2
.end method

.method private webkitDraw()V
    .locals 4

    .prologue
    .line 2560
    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->m_skipDrawFlagLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2561
    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebViewCore;->m_skipDrawFlag:Z

    if-eqz v0, :cond_1

    .line 2562
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/WebViewCore;->m_drawWasSkipped:Z

    .line 2563
    monitor-exit v1

    .line 2582
    :cond_0
    :goto_0
    return-void

    .line 2565
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2567
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 2568
    new-instance v0, Ldolphin/webkit/jp;

    invoke-direct {v0}, Ldolphin/webkit/jp;-><init>()V

    .line 2570
    iget v1, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    iget-object v2, v0, Ldolphin/webkit/jp;->c:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Ldolphin/webkit/WebViewCore;->nativeRecordContent(ILandroid/graphics/Point;)I

    move-result v1

    iput v1, v0, Ldolphin/webkit/jp;->a:I

    .line 2571
    iget v1, v0, Ldolphin/webkit/jp;->a:I

    if-nez v1, :cond_2

    .line 2572
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2574
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    const/4 v1, 0x0

    const/16 v2, 0x82

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-static {v0, v1, v2, v3}, Ldolphin/webkit/jq;->a(Ldolphin/webkit/jq;Landroid/os/Message;J)V

    goto :goto_0

    .line 2565
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2580
    :cond_2
    iput-object v0, p0, Ldolphin/webkit/WebViewCore;->mLastDrawData:Ldolphin/webkit/jp;

    .line 2581
    invoke-direct {p0, v0}, Ldolphin/webkit/WebViewCore;->webkitDraw(Ldolphin/webkit/jp;)V

    goto :goto_0
.end method

.method private webkitDraw(Ldolphin/webkit/jp;)V
    .locals 3

    .prologue
    .line 2585
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_3

    .line 2586
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v0}, Ldolphin/webkit/WebViewCore;->nativeFocusBoundsChanged(I)Z

    move-result v0

    iput-boolean v0, p1, Ldolphin/webkit/jp;->g:Z

    .line 2587
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Ldolphin/webkit/WebViewCore;->mCurrentViewWidth:I

    iget v2, p0, Ldolphin/webkit/WebViewCore;->mCurrentViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p1, Ldolphin/webkit/jp;->b:Landroid/graphics/Point;

    .line 2588
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mSettings:Ldolphin/webkit/WebSettingsClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2589
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mViewportWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const/16 v0, 0x3d4

    :goto_0
    iget v1, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v1}, Ldolphin/webkit/WebViewCore;->nativeGetContentMinPrefWidth(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Ldolphin/webkit/jp;->d:I

    .line 2595
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    if-eqz v0, :cond_1

    .line 2596
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    iput-object v0, p1, Ldolphin/webkit/jp;->e:Ldolphin/webkit/kc;

    .line 2597
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/WebViewCore;->mInitialViewState:Ldolphin/webkit/kc;

    .line 2599
    :cond_1
    iget-boolean v0, p0, Ldolphin/webkit/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    if-eqz v0, :cond_2

    .line 2600
    const/4 v0, 0x1

    iput-boolean v0, p1, Ldolphin/webkit/jp;->f:Z

    .line 2601
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    .line 2604
    :cond_2
    invoke-virtual {p0}, Ldolphin/webkit/WebViewCore;->pauseWebKitDraw()V

    .line 2606
    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mBaseLayerMessages:Ljava/util/LinkedList;

    monitor-enter v1

    .line 2607
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mBaseLayerMessages:Ljava/util/LinkedList;

    iget v2, p1, Ldolphin/webkit/jp;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2608
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2610
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2613
    :cond_3
    return-void

    .line 2589
    :cond_4
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mViewportWidth:I

    if-nez v0, :cond_5

    iget v0, p0, Ldolphin/webkit/WebViewCore;->mCurrentViewWidth:I

    goto :goto_0

    :cond_5
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mViewportWidth:I

    goto :goto_0

    .line 2608
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1, p2, p3, p4}, Ldolphin/webkit/ae;->a(Ljava/lang/String;ILjava/lang/String;I)V

    .line 397
    return-void
.end method

.method clearContent()V
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v0}, Ldolphin/webkit/WebViewCore;->nativeClearContent(I)V

    .line 685
    return-void
.end method

.method contentDraw()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 2731
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldolphin/webkit/WebViewCore;->contentDraw(Z)V

    .line 2732
    return-void
.end method

.method contentDraw(Z)V
    .locals 3

    .prologue
    .line 2735
    monitor-enter p0

    .line 2736
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    if-nez v0, :cond_1

    .line 2738
    :cond_0
    monitor-exit p0

    .line 2753
    :goto_0
    return-void

    .line 2742
    :cond_1
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mCurrentViewWidth:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v0}, Ldolphin/webkit/BrowserFrame;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2743
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 2752
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2746
    :cond_3
    :try_start_1
    iget-boolean v0, p0, Ldolphin/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v0, :cond_4

    monitor-exit p0

    goto :goto_0

    .line 2747
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 2748
    if-eqz p1, :cond_5

    .line 2749
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    const/4 v1, 0x0

    const/16 v2, 0x82

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/jq;->b(Ldolphin/webkit/jq;Landroid/os/Message;)V

    .line 2752
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 2751
    :cond_5
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    const/4 v1, 0x0

    const/16 v2, 0x82

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/jq;->a(Ldolphin/webkit/jq;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method destroy()V
    .locals 4

    .prologue
    .line 2272
    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    monitor-enter v1

    .line 2275
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ldolphin/webkit/jq;->a(Ldolphin/webkit/jq;Z)Z

    .line 2276
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v0, v2}, Ldolphin/webkit/jq;->b(Ldolphin/webkit/jq;Landroid/os/Message;)V

    .line 2278
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    invoke-static {v0}, Ldolphin/webkit/jq;->f(Ldolphin/webkit/jq;)V

    .line 2279
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/he;->b(Ldolphin/webkit/WebViewClassic;)V

    .line 2280
    monitor-exit v1

    .line 2281
    return-void

    .line 2280
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected enterFullscreenForVideoLayer(ILjava/lang/String;)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 660
    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-nez v1, :cond_0

    .line 666
    :goto_0
    return-void

    .line 661
    :cond_0
    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v2, 0x89

    invoke-static {v1, v2, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 663
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 664
    iget-object v2, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2, p2}, Ldolphin/webkit/WebViewClassic;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 665
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method protected exceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 10
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 535
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    invoke-direct {p0}, Ldolphin/webkit/WebViewCore;->getUsedQuota()J

    move-result-wide v7

    new-instance v9, Ldolphin/webkit/jj;

    invoke-direct {v9, p0}, Ldolphin/webkit/jj;-><init>(Ldolphin/webkit/WebViewCore;)V

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v9}, Ldolphin/webkit/ae;->a(Ljava/lang/String;Ljava/lang/String;JJJLdolphin/webkit/WebStorage$QuotaUpdater;)V

    .line 543
    return-void
.end method

.method protected exitFullscreenVideo()V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 674
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 678
    :goto_0
    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x8c

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 677
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method protected geolocationPermissionsHidePrompt()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    invoke-virtual {v0}, Ldolphin/webkit/ae;->j()V

    .line 600
    return-void
.end method

.method protected geolocationPermissionsShowPrompt(Ljava/lang/String;)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 580
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    new-instance v1, Ldolphin/webkit/jm;

    invoke-direct {v1, p0}, Ldolphin/webkit/jm;-><init>(Ldolphin/webkit/WebViewCore;)V

    invoke-virtual {v0, p1, v1}, Ldolphin/webkit/ae;->a(Ljava/lang/String;Ldolphin/webkit/GeolocationPermissions$Callback;)V

    .line 592
    return-void
.end method

.method declared-synchronized getBrowserFrame()Ldolphin/webkit/BrowserFrame;
    .locals 1

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3404
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getDeviceMotionService()Ldolphin/webkit/DeviceMotionService;
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3590
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mDeviceMotionService:Ldolphin/webkit/DeviceMotionService;

    if-nez v0, :cond_0

    .line 3591
    new-instance v0, Ldolphin/webkit/DeviceMotionService;

    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Ldolphin/webkit/DeviceMotionAndOrientationManager;

    iget-object v2, p0, Ldolphin/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Ldolphin/webkit/DeviceMotionService;-><init>(Ldolphin/webkit/DeviceMotionAndOrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Ldolphin/webkit/WebViewCore;->mDeviceMotionService:Ldolphin/webkit/DeviceMotionService;

    .line 3594
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mDeviceMotionService:Ldolphin/webkit/DeviceMotionService;

    return-object v0
.end method

.method protected getDeviceOrientationService()Ldolphin/webkit/DeviceOrientationService;
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 3599
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mDeviceOrientationService:Ldolphin/webkit/DeviceOrientationService;

    if-nez v0, :cond_0

    .line 3600
    new-instance v0, Ldolphin/webkit/DeviceOrientationService;

    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Ldolphin/webkit/DeviceMotionAndOrientationManager;

    iget-object v2, p0, Ldolphin/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Ldolphin/webkit/DeviceOrientationService;-><init>(Ldolphin/webkit/DeviceMotionAndOrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Ldolphin/webkit/WebViewCore;->mDeviceOrientationService:Ldolphin/webkit/DeviceOrientationService;

    .line 3603
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mDeviceOrientationService:Ldolphin/webkit/DeviceOrientationService;

    return-object v0
.end method

.method public getInputDispatcherCallbacks()Ldolphin/webkit/ks;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    return-object v0
.end method

.method getNativeClass()I
    .locals 1

    .prologue
    .line 3611
    iget v0, p0, Ldolphin/webkit/WebViewCore;->mNativeClass:I

    return v0
.end method

.method public getPerformanceCounter(I)J
    .locals 2

    .prologue
    .line 367
    invoke-direct {p0, p1}, Ldolphin/webkit/WebViewCore;->nativeGetPerformanceCounter(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSettings()Ldolphin/webkit/WebSettingsClassic;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mSettings:Ldolphin/webkit/WebSettingsClassic;

    return-object v0
.end method

.method getWebViewClassic()Ldolphin/webkit/WebViewClassic;
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 2817
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;

    return-object v0
.end method

.method initializeSubwindow()V
    .locals 2

    .prologue
    .line 320
    invoke-direct {p0}, Ldolphin/webkit/WebViewCore;->initialize()V

    .line 322
    sget-object v0, Ldolphin/webkit/WebViewCore;->sWebCoreHandler:Ldolphin/util/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ldolphin/util/j;->removeMessages(ILjava/lang/Object;)V

    .line 323
    return-void
.end method

.method protected jsAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method protected jsConfirm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 609
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/ae;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected jsInterrupt()Z
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 644
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    invoke-virtual {v0}, Ldolphin/webkit/ae;->k()Z

    move-result v0

    return v0
.end method

.method protected jsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 621
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1, p2, p3}, Ldolphin/webkit/ae;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jsUnload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 633
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/ae;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method pauseWebKitDraw()V
    .locals 2

    .prologue
    .line 2541
    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->m_skipDrawFlagLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2542
    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebViewCore;->m_skipDrawFlag:Z

    if-nez v0, :cond_0

    .line 2543
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/WebViewCore;->m_skipDrawFlag:Z

    .line 2545
    :cond_0
    monitor-exit v1

    .line 2546
    return-void

    .line 2545
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected populateVisitedLinks()V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 563
    new-instance v0, Ldolphin/webkit/jl;

    invoke-direct {v0, p0}, Ldolphin/webkit/jl;-><init>(Ldolphin/webkit/WebViewCore;)V

    .line 569
    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    invoke-virtual {v1, v0}, Ldolphin/webkit/ae;->a(Ldolphin/webkit/ValueCallback;)V

    .line 570
    return-void
.end method

.method protected reachedMaxAppCacheSize(J)V
    .locals 6
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    invoke-direct {p0}, Ldolphin/webkit/WebViewCore;->getUsedQuota()J

    move-result-wide v3

    new-instance v5, Ldolphin/webkit/jk;

    invoke-direct {v5, p0}, Ldolphin/webkit/jk;-><init>(Ldolphin/webkit/WebViewCore;)V

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Ldolphin/webkit/ae;->a(JJLdolphin/webkit/WebStorage$QuotaUpdater;)V

    .line 559
    return-void
.end method

.method removeMessages()V
    .locals 1

    .prologue
    .line 2264
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    invoke-static {v0}, Ldolphin/webkit/jq;->e(Ldolphin/webkit/jq;)V

    .line 2265
    return-void
.end method

.method removeMessages(I)V
    .locals 1

    .prologue
    .line 2260
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    invoke-static {v0, p1}, Ldolphin/webkit/jq;->b(Ldolphin/webkit/jq;I)V

    .line 2261
    return-void
.end method

.method resumeWebKitDraw()V
    .locals 4

    .prologue
    .line 2549
    iget-object v1, p0, Ldolphin/webkit/WebViewCore;->m_skipDrawFlagLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2550
    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebViewCore;->m_skipDrawFlag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldolphin/webkit/WebViewCore;->m_drawWasSkipped:Z

    if-eqz v0, :cond_0

    .line 2552
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/WebViewCore;->m_drawWasSkipped:Z

    .line 2553
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    const/4 v2, 0x0

    const/16 v3, 0x82

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v0, v2}, Ldolphin/webkit/jq;->a(Ldolphin/webkit/jq;Landroid/os/Message;)V

    .line 2555
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/WebViewCore;->m_skipDrawFlag:Z

    .line 2556
    monitor-exit v1

    .line 2557
    return-void

    .line 2556
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sendMessage(I)V
    .locals 2

    .prologue
    .line 2220
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/jq;->a(Ldolphin/webkit/jq;Landroid/os/Message;)V

    .line 2221
    return-void
.end method

.method sendMessage(II)V
    .locals 3

    .prologue
    .line 2234
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/jq;->a(Ldolphin/webkit/jq;Landroid/os/Message;)V

    .line 2235
    return-void
.end method

.method sendMessage(III)V
    .locals 2

    .prologue
    .line 2238
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/jq;->a(Ldolphin/webkit/jq;Landroid/os/Message;)V

    .line 2239
    return-void
.end method

.method sendMessage(IIILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 2247
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/jq;->a(Ldolphin/webkit/jq;Landroid/os/Message;)V

    .line 2248
    return-void
.end method

.method sendMessage(IILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 2243
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/jq;->a(Ldolphin/webkit/jq;Landroid/os/Message;)V

    .line 2244
    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 2229
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/jq;->a(Ldolphin/webkit/jq;Landroid/os/Message;)V

    .line 2230
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2208
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    invoke-static {v0, p1}, Ldolphin/webkit/jq;->a(Ldolphin/webkit/jq;Landroid/os/Message;)V

    .line 2209
    return-void
.end method

.method sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 2224
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/jq;->b(Ldolphin/webkit/jq;Landroid/os/Message;)V

    .line 2226
    return-void
.end method

.method sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 2251
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/jq;->b(Ldolphin/webkit/jq;Landroid/os/Message;)V

    .line 2253
    return-void
.end method

.method sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 2

    .prologue
    .line 2256
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1, p3, p4}, Ldolphin/webkit/jq;->a(Ldolphin/webkit/jq;Landroid/os/Message;J)V

    .line 2257
    return-void
.end method

.method sendMessages(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2212
    iget-object v2, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    monitor-enter v2

    .line 2213
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2214
    iget-object v3, p0, Ldolphin/webkit/WebViewCore;->mEventHub:Ldolphin/webkit/jq;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-static {v3, v0}, Ldolphin/webkit/jq;->a(Ldolphin/webkit/jq;Landroid/os/Message;)V

    .line 2213
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2216
    :cond_0
    monitor-exit v2

    .line 2217
    return-void

    .line 2216
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setInstallableWebApp()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 652
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;

    invoke-virtual {v0}, Ldolphin/webkit/ae;->l()V

    .line 653
    return-void
.end method

.method public setMockDeviceOrientation(ZDZDZD)V
    .locals 10

    .prologue
    .line 3584
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Ldolphin/webkit/DeviceMotionAndOrientationManager;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Ldolphin/webkit/DeviceMotionAndOrientationManager;->a(ZDZDZD)V

    .line 3586
    return-void
.end method

.method signalRepaintDone()V
    .locals 1

    .prologue
    .line 2809
    const/4 v0, 0x0

    sput-boolean v0, Ldolphin/webkit/WebViewCore;->mRepaintScheduled:Z

    .line 2810
    return-void
.end method

.method stopLoading()V
    .locals 1

    .prologue
    .line 2193
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    if-eqz v0, :cond_0

    .line 2194
    iget-object v0, p0, Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    invoke-virtual {v0}, Ldolphin/webkit/BrowserFrame;->l()V

    .line 2196
    :cond_0
    return-void
.end method
