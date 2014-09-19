.class public Lcom/tapjoy/mraid/view/MraidView;
.super Landroid/webkit/WebView;
.source "MraidView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/mraid/view/MraidView$7;,
        Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;,
        Lcom/tapjoy/mraid/view/MraidView$ScrollEater;,
        Lcom/tapjoy/mraid/view/MraidView$NewLocationReciever;,
        Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;,
        Lcom/tapjoy/mraid/view/MraidView$OrientationThread;,
        Lcom/tapjoy/mraid/view/MraidView$TimeOut;,
        Lcom/tapjoy/mraid/view/MraidView$Action;,
        Lcom/tapjoy/mraid/view/MraidView$customCloseState;,
        Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;,
        Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;
    }
.end annotation


# static fields
.field public static final ACTION_KEY:Ljava/lang/String; = "action"

.field private static final AD_PATH:Ljava/lang/String; = "AD_PATH"

.field protected static final BACKGROUND_ID:I = 0x65

.field private static final CURRENT_FILE:Ljava/lang/String; = "_current_file"

.field public static final DIMENSIONS:Ljava/lang/String; = "expand_dimensions"

.field private static final ERROR_ACTION:Ljava/lang/String; = "action"

.field private static final ERROR_MESSAGE:Ljava/lang/String; = "message"

.field private static final EXPAND_PROPERTIES:Ljava/lang/String; = "expand_properties"

.field public static final EXPAND_URL:Ljava/lang/String; = "expand_url"

.field private static final MESSAGE_CLOSE:I = 0x3e9

.field private static final MESSAGE_EXPAND:I = 0x3ec

.field private static final MESSAGE_HIDE:I = 0x3ea

.field private static final MESSAGE_OPEN:I = 0x3ee

.field private static final MESSAGE_PLAY_AUDIO:I = 0x3f0

.field private static final MESSAGE_PLAY_VIDEO:I = 0x3ef

.field private static final MESSAGE_RAISE_ERROR:I = 0x3f1

.field private static final MESSAGE_RESIZE:I = 0x3e8

.field private static final MESSAGE_RESIZE_ORIENTATION:I = 0x3f2

.field private static final MESSAGE_SEND_EXPAND_CLOSE:I = 0x3ed

.field private static final MESSAGE_SHOW:I = 0x3eb

.field public static final MRAID_ID:I = 0x66

.field private static final NO_CONNECTION_HTML:Ljava/lang/String; = "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\"><html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"><title>Connection not Established</title></head><h2>Connection Not Properly Established</h2><body></body></html>"

.field protected static final PLACEHOLDER_ID:I = 0x64

.field public static final PLAYER_PROPERTIES:Ljava/lang/String; = "player_properties"

.field private static final RESIZE_ALLOWOFFSCREEN:Ljava/lang/String; = "resize_allowOffScreen"

.field private static final RESIZE_CUSTOMCLOSEPOSITION:Ljava/lang/String; = "resize_customClosePostition"

.field private static final RESIZE_HEIGHT:Ljava/lang/String; = "resize_height"

.field private static final RESIZE_WIDTH:Ljava/lang/String; = "resize_width"

.field private static final RESIZE_X:Ljava/lang/String; = "resize_x"

.field private static final RESIZE_Y:Ljava/lang/String; = "resize_y"

.field private static final TAG:Ljava/lang/String; = "MRAIDView"

.field private static attrs:[I

.field private static mScriptPath:Ljava/lang/String;

.field private static player:Lcom/tapjoy/mraid/util/MraidPlayer;

.field private static final videoFormats:[Ljava/lang/String;


# instance fields
.field private bGotLayoutParams:Z

.field private bKeyboardOut:Z

.field private bPageFinished:Z

.field private closeButtonState:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

.field private ctx:Landroid/content/Context;

.field private initialExpandUrl:Ljava/lang/String;

.field private initialLoadUrl:Z

.field private isMraid:Z

.field private lastScreenHeight:I

.field private lastScreenWidth:I

.field private mContentViewHeight:I

.field private mDefaultHeight:I

.field private mDefaultWidth:I

.field private mDefaultX:I

.field private mDefaultY:I

.field private mDensity:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mInitLayoutHeight:I

.field private mInitLayoutWidth:I

.field private mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;

.field private mLocalFilePath:Ljava/lang/String;

.field private mTimeOut:Lcom/tapjoy/mraid/view/MraidView$TimeOut;

.field private mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

.field private mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

.field mWebChromeClient:Landroid/webkit/WebChromeClient;

.field mWebViewClient:Landroid/webkit/WebViewClient;

.field private orientationThread:Ljava/lang/Thread;

.field private originalRequestedOrientation:I

.field private placement:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

.field private progressBar:Landroid/widget/ProgressBar;

.field private final registeredProtocols:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoRelativeLayout:Landroid/widget/RelativeLayout;

.field private videoView:Landroid/widget/VideoView;

.field private videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private viewDetached:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 104
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView;->attrs:[I

    .line 144
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".3gp"

    aput-object v2, v0, v1

    const-string v1, ".mpg"

    aput-object v1, v0, v3

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView;->videoFormats:[Ljava/lang/String;

    return-void

    .line 104
    :array_0
    .array-data 0x4
        0x1ft 0x1t 0x1t 0x1t
        0x20t 0x1t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 249
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 147
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->UNKNOWN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->closeButtonState:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    .line 151
    iput-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->initialExpandUrl:Ljava/lang/String;

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->initialLoadUrl:Z

    .line 153
    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->isMraid:Z

    .line 176
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    .line 190
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->registeredProtocols:Ljava/util/HashSet;

    .line 193
    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenWidth:I

    .line 194
    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenHeight:I

    .line 196
    iput-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    .line 197
    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->viewDetached:Z

    .line 652
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$2;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    .line 942
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$4;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$4;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 1047
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$5;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$5;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 250
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->ctx:Landroid/content/Context;

    .line 251
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->initialize()V

    .line 252
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "set"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 593
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    sget-object v3, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->UNKNOWN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->closeButtonState:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    .line 151
    iput-object v4, p0, Lcom/tapjoy/mraid/view/MraidView;->initialExpandUrl:Ljava/lang/String;

    .line 152
    iput-boolean v7, p0, Lcom/tapjoy/mraid/view/MraidView;->initialLoadUrl:Z

    .line 153
    iput-boolean v5, p0, Lcom/tapjoy/mraid/view/MraidView;->isMraid:Z

    .line 176
    sget-object v3, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    .line 190
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->registeredProtocols:Ljava/util/HashSet;

    .line 193
    iput v5, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenWidth:I

    .line 194
    iput v5, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenHeight:I

    .line 196
    iput-object v4, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    .line 197
    iput-boolean v5, p0, Lcom/tapjoy/mraid/view/MraidView;->viewDetached:Z

    .line 652
    new-instance v3, Lcom/tapjoy/mraid/view/MraidView$2;

    invoke-direct {v3, p0}, Lcom/tapjoy/mraid/view/MraidView$2;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    .line 942
    new-instance v3, Lcom/tapjoy/mraid/view/MraidView$4;

    invoke-direct {v3, p0}, Lcom/tapjoy/mraid/view/MraidView$4;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 1047
    new-instance v3, Lcom/tapjoy/mraid/view/MraidView$5;

    invoke-direct {v3, p0}, Lcom/tapjoy/mraid/view/MraidView$5;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 594
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->initialize()V

    .line 595
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/tapjoy/mraid/view/MraidView;->attrs:[I

    invoke-virtual {v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 596
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 597
    .local v2, w:I
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 598
    .local v1, h:I
    if-lez v2, :cond_0

    if-lez v1, :cond_0

    .line 599
    iget-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {v3, v2, v1}, Lcom/tapjoy/mraid/controller/Utility;->setMaxSize(II)V

    .line 600
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 601
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/mraid/listener/MraidViewListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 219
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 147
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->UNKNOWN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->closeButtonState:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    .line 151
    iput-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->initialExpandUrl:Ljava/lang/String;

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->initialLoadUrl:Z

    .line 153
    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->isMraid:Z

    .line 176
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    .line 190
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->registeredProtocols:Ljava/util/HashSet;

    .line 193
    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenWidth:I

    .line 194
    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenHeight:I

    .line 196
    iput-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    .line 197
    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->viewDetached:Z

    .line 652
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$2;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    .line 942
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$4;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$4;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 1047
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$5;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$5;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 220
    invoke-virtual {p0, p2}, Lcom/tapjoy/mraid/view/MraidView;->setListener(Lcom/tapjoy/mraid/listener/MraidViewListener;)V

    .line 221
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->ctx:Landroid/content/Context;

    .line 222
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->initialize()V

    .line 223
    return-void
.end method

.method static synthetic access$001(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/tapjoy/mraid/view/MraidView;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/view/MraidView;->doExpand(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/tapjoy/mraid/view/MraidView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/tapjoy/mraid/view/MraidView;->mDefaultHeight:I

    return p1
.end method

.method static synthetic access$1202(Lcom/tapjoy/mraid/view/MraidView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/tapjoy/mraid/view/MraidView;->mDefaultWidth:I

    return p1
.end method

.method static synthetic access$1300(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/controller/Utility;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/tapjoy/mraid/view/MraidView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/tapjoy/mraid/view/MraidView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/tapjoy/mraid/view/MraidView;Landroid/widget/VideoView;)Landroid/widget/VideoView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->videoRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/tapjoy/mraid/view/MraidView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoRelativeLayout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/tapjoy/mraid/view/MraidView;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->progressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/tapjoy/mraid/view/MraidView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->viewDetached:Z

    return v0
.end method

.method static synthetic access$200(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->checkForOrientationChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    return-object v0
.end method

.method static synthetic access$302(Lcom/tapjoy/mraid/view/MraidView;Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;)Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    return-object p1
.end method

.method static synthetic access$400(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/view/MraidView;->repositionCloseButton(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tapjoy/mraid/view/MraidView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mDensity:F

    return v0
.end method

.method static synthetic access$600(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->placement:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$customCloseState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->closeButtonState:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->closeResized()V

    return-void
.end method

.method static synthetic access$900(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->closeWindow()V

    return-void
.end method

.method private changeContentArea(Lcom/tapjoy/mraid/controller/Abstract$Dimensions;)Landroid/widget/FrameLayout;
    .locals 13
    .parameter "d"

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 831
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v9

    const v10, 0x1020002

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 833
    .local v2, contentView:Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 834
    .local v7, parent:Landroid/view/ViewGroup;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v9, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    iget v10, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    invoke-direct {v4, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 836
    .local v4, fl:Landroid/widget/FrameLayout$LayoutParams;
    iget v9, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 837
    iget v9, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 838
    const/4 v5, 0x0

    .line 839
    .local v5, index:I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 840
    .local v3, count:I
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 841
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-ne v9, p0, :cond_1

    .line 844
    :cond_0
    iput v5, p0, Lcom/tapjoy/mraid/view/MraidView;->mIndex:I

    .line 845
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 846
    .local v8, placeHolder:Landroid/widget/FrameLayout;
    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setId(I)V

    .line 847
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getHeight()I

    move-result v10

    invoke-direct {v6, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 849
    .local v6, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v7, v8, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 850
    invoke-virtual {v7, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 851
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 852
    .local v0, backGround:Landroid/widget/FrameLayout;
    new-instance v9, Lcom/tapjoy/mraid/view/MraidView$3;

    invoke-direct {v9, p0}, Lcom/tapjoy/mraid/view/MraidView$3;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 859
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 862
    .local v1, bgfl:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v9, 0x65

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setId(I)V

    .line 863
    iget v9, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    iget v10, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    invoke-virtual {v0, v9, v10, v12, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 864
    invoke-virtual {v0, p0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    return-object v0

    .line 840
    .end local v0           #backGround:Landroid/widget/FrameLayout;
    .end local v1           #bgfl:Landroid/widget/FrameLayout$LayoutParams;
    .end local v6           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v8           #placeHolder:Landroid/widget/FrameLayout;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private checkForOrientationChange()V
    .locals 5

    .prologue
    .line 1368
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1369
    .local v2, windowManager:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1370
    .local v1, screenWidth:I
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 1375
    .local v0, screenHeight:I
    iget v3, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenWidth:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenHeight:I

    if-eq v0, v3, :cond_3

    .line 1385
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getPlacementType()Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    move-result-object v3

    sget-object v4, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INLINE:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getViewState()Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    move-result-object v3

    sget-object v4, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->EXPANDED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    if-eq v3, v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getPlacementType()Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    move-result-object v3

    sget-object v4, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INTERSTITIAL:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    if-ne v3, v4, :cond_3

    .line 1387
    :cond_2
    const-string v3, "top-right"

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v0, v3, v4}, Lcom/tapjoy/mraid/view/MraidView;->resizeOrientation(IILjava/lang/String;Z)V

    .line 1390
    :cond_3
    return-void
.end method

.method private static checkForVideo(Ljava/lang/String;)Z
    .locals 5
    .parameter "url"

    .prologue
    .line 1635
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView;->videoFormats:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1636
    .local v1, i:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 1638
    .end local v1           #i:Ljava/lang/String;
    :goto_1
    return v4

    .line 1635
    .restart local v1       #i:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1638
    .end local v1           #i:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private closeResized()V
    .locals 4

    .prologue
    const-string v3, ", "

    .line 922
    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iput-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    .line 923
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;

    if-eqz v1, :cond_0

    .line 924
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;

    invoke-interface {v1}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onResizeClose()Z

    .line 926
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidview.fireChangeEvent({ state: \'default\', size: { width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mDefaultWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mDefaultHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x:0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "y:0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 933
    .local v0, injection:Ljava/lang/String;
    const-string v1, "MRAIDView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeResized: injection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 935
    const-string v1, "top-right"

    invoke-direct {p0, v1}, Lcom/tapjoy/mraid/view/MraidView;->repositionCloseButton(Ljava/lang/String;)V

    .line 936
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->resetLayout()V

    .line 937
    return-void
.end method

.method private closeWindow()V
    .locals 3

    .prologue
    .line 814
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;

    if-eqz v2, :cond_0

    .line 816
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;

    invoke-interface {v2}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onClose()Z

    .line 818
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 819
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 820
    return-void
.end method

.method private doExpand(Landroid/os/Bundle;)V
    .locals 9
    .parameter "data"

    .prologue
    .line 873
    iget-object v6, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    sget-object v7, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->EXPANDED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    if-ne v6, v7, :cond_1

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    const-string v6, "expand_dimensions"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;

    .line 876
    .local v2, d:Lcom/tapjoy/mraid/controller/Abstract$Dimensions;
    const-string v6, "expand_url"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 877
    .local v5, url:Ljava/lang/String;
    const-string v6, "expand_properties"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/mraid/controller/Abstract$Properties;

    .line 878
    .local v4, p:Lcom/tapjoy/mraid/controller/Abstract$Properties;
    invoke-static {v5}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 879
    invoke-virtual {p0, v5}, Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V

    .line 881
    :cond_2
    invoke-direct {p0, v2}, Lcom/tapjoy/mraid/view/MraidView;->changeContentArea(Lcom/tapjoy/mraid/controller/Abstract$Dimensions;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 882
    .local v0, backGround:Landroid/widget/FrameLayout;
    iget-boolean v6, v4, Lcom/tapjoy/mraid/controller/Abstract$Properties;->useBackground:Z

    if-eqz v6, :cond_3

    .line 883
    iget v6, v4, Lcom/tapjoy/mraid/controller/Abstract$Properties;->backgroundColor:I

    iget v7, v4, Lcom/tapjoy/mraid/controller/Abstract$Properties;->backgroundOpacity:F

    const/high16 v8, 0x437f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/high16 v8, 0x1000

    mul-int/2addr v7, v8

    or-int v1, v6, v7

    .line 885
    .local v1, color:I
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 887
    .end local v1           #color:I
    :cond_3
    iget-boolean v6, v4, Lcom/tapjoy/mraid/controller/Abstract$Properties;->useCustomClose:Z

    if-nez v6, :cond_4

    .line 888
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->showCloseImageButton()V

    .line 890
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "window.mraidview.fireChangeEvent({ state: \'expanded\', size: { width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    int-to-float v7, v7

    iget v8, p0, Lcom/tapjoy/mraid/view/MraidView;->mDensity:F

    div-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    int-to-float v7, v7

    iget v8, p0, Lcom/tapjoy/mraid/view/MraidView;->mDensity:F

    div-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x:0,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "y:0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " });"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 902
    .local v3, injection:Ljava/lang/String;
    const-string v6, "MRAIDView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doExpand: injection: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    invoke-virtual {p0, v3}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 905
    sget-object v6, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->EXPANDED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iput-object v6, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    .line 912
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->checkForOrientationChange()V

    .line 914
    iget-object v6, p0, Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;

    if-eqz v6, :cond_0

    .line 915
    iget-object v6, p0, Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;

    invoke-interface {v6}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onExpand()Z

    goto/16 :goto_0
.end method

.method private getContentViewHeight()I
    .locals 3

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1403
    .local v0, contentView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1404
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1406
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private initAndPlayVideo(Ljava/lang/String;)V
    .locals 9
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1626
    new-instance v6, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;

    invoke-direct {v6}, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;-><init>()V

    .line 1627
    .local v6, d:Lcom/tapjoy/mraid/controller/Abstract$Dimensions;
    iput v2, v6, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    .line 1628
    iput v2, v6, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    .line 1629
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getWidth()I

    move-result v0

    iput v0, v6, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    .line 1630
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getHeight()I

    move-result v0

    iput v0, v6, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    .line 1631
    const-string v7, "fullscreen"

    const-string v8, "exit"

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v2

    invoke-virtual/range {v0 .. v8}, Lcom/tapjoy/mraid/view/MraidView;->playVideo(Ljava/lang/String;ZZZZLcom/tapjoy/mraid/controller/Abstract$Dimensions;Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    return-void
.end method

.method private isRegisteredProtocol(Landroid/net/Uri;)Z
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 354
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, scheme:Ljava/lang/String;
    if-nez v2, :cond_0

    move v3, v4

    .line 362
    :goto_0
    return v3

    .line 358
    :cond_0
    iget-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->registeredProtocols:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 359
    .local v1, protocol:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 360
    const/4 v3, 0x1

    goto :goto_0

    .end local v1           #protocol:Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 362
    goto :goto_0
.end method

.method private repositionCloseButton(Ljava/lang/String;)V
    .locals 3
    .parameter "position"

    .prologue
    .line 611
    if-nez p1, :cond_0

    .line 647
    :goto_0
    return-void

    .line 613
    :cond_0
    const/4 v0, 0x0

    .line 614
    .local v0, injection:Ljava/lang/String;
    const-string v1, "top-right"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 615
    const-string v0, "document.getElementById(\"closeButton\").style.right = 1;document.getElementById(\"closeButton\").style.top = 1;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.left = mraid.getSize().width -36"

    .line 642
    :cond_1
    :goto_1
    if-eqz v0, :cond_8

    .line 643
    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    goto :goto_0

    .line 618
    :cond_2
    const-string v1, "top-center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 619
    const-string v0, "document.getElementById(\"closeButton\").style.right = mraid.getSize().width/2 - 18;document.getElementById(\"closeButton\").style.top = 1;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.left = mraid.getSize().width/2 -18"

    goto :goto_1

    .line 622
    :cond_3
    const-string v1, "top-left"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 623
    const-string v0, "document.getElementById(\"closeButton\").style.right = mraid.getSize().width -36;document.getElementById(\"closeButton\").style.top = 1;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.left = 1"

    goto :goto_1

    .line 626
    :cond_4
    const-string v1, "center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 627
    const-string v0, "document.getElementById(\"closeButton\").style.right = mraid.getSize().width/2 - 18;document.getElementById(\"closeButton\").style.top = mraid.getSize().height/2 -18;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height/2 -18;document.getElementById(\"closeButton\").style.left = mraid.getSize().width/2 -18"

    goto :goto_1

    .line 630
    :cond_5
    const-string v1, "bottom-right"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 631
    const-string v0, "document.getElementById(\"closeButton\").style.right = 1;document.getElementById(\"closeButton\").style.top = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.bottom = 1;document.getElementById(\"closeButton\").style.left = mraid.getSize().width -36"

    goto :goto_1

    .line 633
    :cond_6
    const-string v1, "bottom-left"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 634
    const-string v0, "document.getElementById(\"closeButton\").style.left = 1;document.getElementById(\"closeButton\").style.bottom = 1;document.getElementById(\"closeButton\").style.right = mraid.getSize().width -36;document.getElementById(\"closeButton\").style.top = mraid.getSize().height-36;"

    goto :goto_1

    .line 637
    :cond_7
    const-string v1, "bottom-center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 638
    const-string v0, "document.getElementById(\"closeButton\").style.bottom = 1;document.getElementById(\"closeButton\").style.right = mraid.getSize().width -36document.getElementById(\"closeButton\").style.right = mraid.getSize().width/2 -18;document.getElementById(\"closeButton\").style.top = mraid.getSize().height-36;"

    goto :goto_1

    .line 645
    :cond_8
    const-string v1, "MRAIDView"

    const-string v2, "Reposition of close button failed."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetLayout()V
    .locals 2

    .prologue
    .line 1882
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1883
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->bGotLayoutParams:Z

    if-eqz v1, :cond_0

    .line 1884
    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mInitLayoutHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1885
    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mInitLayoutWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1887
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    .line 1888
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->requestLayout()V

    .line 1889
    return-void
.end method

.method private declared-synchronized setScriptPath()V
    .locals 3

    .prologue
    .line 1413
    monitor-enter p0

    :try_start_0
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " paths"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/mraid/view/MraidView;->mScriptPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView;->mScriptPath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tapjoy/TapjoyUtil;->getMraidJsString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

    const-string v1, "/js/mraid.js"

    const-string v2, "js/mraid.js"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/mraid/controller/Utility;->copyTextFromJarIntoAssetDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView;->mScriptPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1419
    :cond_0
    monitor-exit p0

    return-void

    .line 1413
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter "obj"
    .parameter "name"

    .prologue
    .line 1393
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/mraid/view/MraidView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1394
    return-void
.end method

.method public clearView()V
    .locals 0

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->reset()V

    .line 566
    invoke-super {p0}, Landroid/webkit/WebView;->clearView()V

    .line 567
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1517
    return-void
.end method

.method protected declared-synchronized closeExpanded()V
    .locals 4

    .prologue
    .line 1425
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->resetContents()V

    .line 1427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidview.fireChangeEvent({ state: \'default\', size: { width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mDefaultWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mDefaultHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1434
    .local v0, injection:Ljava/lang/String;
    const-string v1, "MRAIDView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeExpanded: injection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 1436
    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iput-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    .line 1437
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1438
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    .line 1439
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->removeCloseImageButton()V

    .line 1441
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->originalRequestedOrientation:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1442
    monitor-exit p0

    return-void

    .line 1425
    .end local v0           #injection:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected closeOpened(Landroid/view/View;)V
    .locals 1
    .parameter "openedFrame"

    .prologue
    .line 1451
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1453
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->requestLayout()V

    .line 1454
    return-void
.end method

.method public createCloseImageButton()V
    .locals 3

    .prologue
    .line 278
    const-string v0, "window.mraidview.createCss();"

    .line 279
    .local v0, injection:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 280
    const-string v1, "MRAIDView"

    const-string v2, "Creating close button."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public deregisterProtocol(Ljava/lang/String;)V
    .locals 2
    .parameter "protocol"

    .prologue
    .line 340
    if-eqz p1, :cond_0

    .line 341
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->registeredProtocols:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 342
    :cond_0
    return-void
.end method

.method public expand(Lcom/tapjoy/mraid/controller/Abstract$Dimensions;Ljava/lang/String;Lcom/tapjoy/mraid/controller/Abstract$Properties;)V
    .locals 4
    .parameter "dimensions"
    .parameter "URL"
    .parameter "properties"

    .prologue
    .line 1554
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ec

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1555
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1556
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "expand_dimensions"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1557
    const-string v2, "expand_url"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    const-string v2, "expand_properties"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1559
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1560
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1561
    return-void
.end method

.method public getCloseButtonState()Lcom/tapjoy/mraid/view/MraidView$customCloseState;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->closeButtonState:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    return-object v0
.end method

.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 1539
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public getPlacementType()Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->placement:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    return-object v0
.end method

.method getPlayer()Lcom/tapjoy/mraid/util/MraidPlayer;
    .locals 2

    .prologue
    .line 2034
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView;->player:Lcom/tapjoy/mraid/util/MraidPlayer;

    if-eqz v0, :cond_0

    .line 2035
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView;->player:Lcom/tapjoy/mraid/util/MraidPlayer;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/util/MraidPlayer;->releasePlayer()V

    .line 2036
    :cond_0
    new-instance v0, Lcom/tapjoy/mraid/util/MraidPlayer;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/mraid/util/MraidPlayer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView;->player:Lcom/tapjoy/mraid/util/MraidPlayer;

    .line 2037
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView;->player:Lcom/tapjoy/mraid/util/MraidPlayer;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mDensity:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mDensity:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewState()Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;
    .locals 1

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    return-object v0
.end method

.method public hasMraidTag(Ljava/lang/String;)Z
    .locals 5
    .parameter "html"

    .prologue
    .line 418
    const-string v4, "<\\s*script[^>]+ormma\\.js"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 419
    .local v2, ormma:Ljava/util/regex/Pattern;
    const-string v4, "<\\s*script[^>]+mraid\\.js"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 421
    .local v0, mraid:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 422
    .local v1, mraidMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 424
    .local v3, ormmaMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1524
    return-void
.end method

.method public initialize()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v6, "window"

    .line 1226
    sget-object v3, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INTERSTITIAL:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    invoke-virtual {p0, v3}, Lcom/tapjoy/mraid/view/MraidView;->setPlacementType(Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;)V

    .line 1227
    invoke-virtual {p0, v5}, Lcom/tapjoy/mraid/view/MraidView;->setScrollContainer(Z)V

    .line 1228
    invoke-virtual {p0, v5}, Lcom/tapjoy/mraid/view/MraidView;->setVerticalScrollBarEnabled(Z)V

    .line 1229
    invoke-virtual {p0, v5}, Lcom/tapjoy/mraid/view/MraidView;->setHorizontalScrollBarEnabled(Z)V

    .line 1230
    new-instance v3, Landroid/view/GestureDetector;

    new-instance v4, Lcom/tapjoy/mraid/view/MraidView$ScrollEater;

    invoke-direct {v4, p0}, Lcom/tapjoy/mraid/view/MraidView$ScrollEater;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    invoke-direct {v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1232
    invoke-virtual {p0, v5}, Lcom/tapjoy/mraid/view/MraidView;->setBackgroundColor(I)V

    .line 1233
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1234
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1237
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1238
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mDensity:F

    .line 1240
    iput-boolean v5, p0, Lcom/tapjoy/mraid/view/MraidView;->bPageFinished:Z

    .line 1242
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1244
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1247
    :cond_0
    new-instance v3, Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/tapjoy/mraid/controller/Utility;-><init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

    .line 1249
    iget-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

    const-string v4, "MRAIDUtilityControllerBridge"

    invoke-virtual {p0, v3, v4}, Lcom/tapjoy/mraid/view/MraidView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1252
    iget-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v3}, Lcom/tapjoy/mraid/view/MraidView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1254
    iget-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v3}, Lcom/tapjoy/mraid/view/MraidView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1255
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->setScriptPath()V

    .line 1257
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v3

    iput v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mContentViewHeight:I

    .line 1259
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1260
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1263
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1264
    .local v1, windowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenWidth:I

    .line 1265
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenHeight:I

    .line 1267
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    iput v3, p0, Lcom/tapjoy/mraid/view/MraidView;->originalRequestedOrientation:I

    .line 1268
    return-void
.end method

.method public injectMraidJavaScript(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 373
    if-eqz p1, :cond_0

    .line 376
    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->isMraid:Z

    if-eqz v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 379
    :cond_0
    return-void
.end method

.method public isExpanded()Z
    .locals 2

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->EXPANDED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMraid()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->isMraid:Z

    return v0
.end method

.method public isPageFinished()Z
    .locals 1

    .prologue
    .line 1897
    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->bPageFinished:Z

    return v0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    .line 432
    if-nez p2, :cond_0

    .line 528
    :goto_0
    return-void

    .line 436
    :cond_0
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 437
    .local v10, buffer:Ljava/lang/StringBuffer;
    const-string v3, "<html>"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 439
    .local v12, htmlPresent:I
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tapjoy/mraid/view/MraidView;->isMraid:Z

    .line 441
    const-string v3, "mraid.js"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 442
    .local v16, start:I
    if-gez v16, :cond_1

    .line 443
    const-string v3, "ormma.js"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 446
    :cond_1
    move/from16 v14, v16

    .line 447
    .local v14, send:I
    move/from16 v15, v16

    .line 453
    .local v15, sstart:I
    if-lez v16, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->hasMraidTag(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 454
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tapjoy/mraid/view/MraidView;->isMraid:Z

    .line 458
    move/from16 v13, v16

    .local v13, i:I
    :goto_1
    if-ltz v13, :cond_2

    .line 459
    add-int/lit8 v3, v13, 0x7

    move-object/from16 v0, p2

    move v1, v13

    move v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "<script"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 460
    move v15, v13

    .line 464
    :cond_2
    const/4 v13, 0x0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v13, v3, :cond_3

    .line 465
    add-int v3, v16, v13

    add-int v4, v16, v13

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p2

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 467
    add-int v3, v13, v16

    add-int/lit8 v14, v3, 0x2

    .line 478
    :cond_3
    :goto_3
    if-gez v12, :cond_9

    .line 480
    const-string v3, "MRAIDView"

    const-string v4, "wrapping fragment"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v3, "<html>"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    const-string v3, "<head>"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 483
    const-string v3, "<meta name=\'viewport\' content=\'user-scalable=no initial-scale=1.0\' />"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    const-string v3, "<title>Advertisement</title>"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 485
    const-string v3, "</head>"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    const-string v3, "<body style=\"margin:0; padding:0; overflow:hidden; background-color:transparent;\">"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    const-string v3, "<div align=\"center\"> "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    const/4 v3, 0x0

    move-object/from16 v0, p2

    move v1, v3

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    const-string v3, "<script type=text/javascript>"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    invoke-static {}, Lcom/tapjoy/TapjoyUtil;->getMraidJsString()Ljava/lang/String;

    move-result-object v9

    .line 495
    .local v9, bigString:Ljava/lang/String;
    if-nez v9, :cond_4

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/mraid/view/MraidView;->mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

    move-object v3, v0

    const-string v4, "js/mraid.js"

    invoke-virtual {v3, v4}, Lcom/tapjoy/mraid/controller/Utility;->copyTextFromJarIntoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 499
    :cond_4
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    const-string v3, "</script>"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    .end local v9           #bigString:Ljava/lang/String;
    :cond_5
    :goto_4
    const-string v3, "MRAIDView"

    const-string v4, "injected js/mraid.js"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .end local v13           #i:I
    :goto_5
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-super/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 458
    .restart local v13       #i:I
    :cond_6
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_1

    .line 470
    :cond_7
    add-int v3, v16, v13

    add-int v4, v16, v13

    add-int/lit8 v4, v4, 0x9

    move-object/from16 v0, p2

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "</script>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 472
    add-int v3, v13, v16

    add-int/lit8 v14, v3, 0x9

    .line 473
    goto/16 :goto_3

    .line 464
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 503
    :cond_9
    const-string v3, "<head>"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 504
    .local v11, headStart:I
    const/4 v3, -0x1

    if-eq v11, v3, :cond_5

    .line 506
    invoke-static {}, Lcom/tapjoy/TapjoyUtil;->getMraidJsString()Ljava/lang/String;

    move-result-object v9

    .line 509
    .restart local v9       #bigString:Ljava/lang/String;
    if-nez v9, :cond_a

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/mraid/view/MraidView;->mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

    move-object v3, v0

    const-string v4, "js/mraid.js"

    invoke-virtual {v3, v4}, Lcom/tapjoy/mraid/controller/Utility;->copyTextFromJarIntoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 513
    :cond_a
    const/4 v3, 0x0

    add-int/lit8 v4, v11, 0x6

    move-object/from16 v0, p2

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    const-string v3, "<script type=\'text/javascript\'>"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    const-string v3, "</script>"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 517
    add-int/lit8 v3, v11, 0x6

    move-object/from16 v0, p2

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 523
    .end local v9           #bigString:Ljava/lang/String;
    .end local v11           #headStart:I
    .end local v13           #i:I
    :cond_b
    move-object v0, v10

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->ctx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/mraid/view/MraidView$1;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/mraid/view/MraidView$1;-><init>(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 406
    return-void
.end method

.method public loadUrlStandard(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1937
    iget-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->bGotLayoutParams:Z

    if-nez v1, :cond_0

    .line 1938
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1939
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mInitLayoutHeight:I

    .line 1940
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mInitLayoutWidth:I

    .line 1941
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->bGotLayoutParams:Z

    .line 1944
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->viewDetached:Z

    .line 1948
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1950
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tapjoy/mraid/view/MraidView$OrientationThread;

    invoke-direct {v2, p0}, Lcom/tapjoy/mraid/view/MraidView$OrientationThread;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    .line 1951
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1954
    :cond_2
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 1955
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 2012
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->viewDetached:Z

    .line 2013
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/controller/Utility;->stopAllListeners()V

    .line 2018
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;

    if-eqz v1, :cond_0

    .line 2019
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 2021
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v1, :cond_1

    .line 2022
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2029
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 2030
    return-void

    .line 2024
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2026
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 1903
    iget-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->bKeyboardOut:Z

    .line 1904
    .local v1, state:Z
    iget-boolean v2, p0, Lcom/tapjoy/mraid/view/MraidView;->bKeyboardOut:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mContentViewHeight:I

    if-ltz v2, :cond_0

    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mContentViewHeight:I

    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1908
    const/4 v1, 0x1

    .line 1909
    const-string v0, "window.mraidview.fireChangeEvent({ keyboardState: true});"

    .line 1910
    .local v0, injection:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 1912
    .end local v0           #injection:Ljava/lang/String;
    :cond_0
    iget-boolean v2, p0, Lcom/tapjoy/mraid/view/MraidView;->bKeyboardOut:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mContentViewHeight:I

    if-ltz v2, :cond_1

    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mContentViewHeight:I

    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1915
    const/4 v1, 0x0

    .line 1916
    const-string v0, "window.mraidview.fireChangeEvent({ keyboardState: false});"

    .line 1917
    .restart local v0       #injection:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 1919
    .end local v0           #injection:Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mContentViewHeight:I

    if-gez v2, :cond_2

    .line 1920
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v2

    iput v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mContentViewHeight:I

    .line 1922
    :cond_2
    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->bKeyboardOut:Z

    .line 1923
    return-void
.end method

.method public open(Ljava/lang/String;ZZZ)V
    .locals 7
    .parameter "url"
    .parameter "back"
    .parameter "forward"
    .parameter "refresh"

    .prologue
    const-string v6, "MRAIDView"

    .line 1577
    const/4 v1, 0x0

    .line 1578
    .local v1, isVideo:Z
    const/4 v3, 0x0

    .line 1581
    .local v3, videoURL:Ljava/lang/String;
    invoke-static {p1}, Lcom/tapjoy/mraid/view/MraidView;->checkForVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1583
    const/4 v1, 0x1

    .line 1584
    move-object v3, p1

    .line 1605
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 1607
    invoke-direct {p0, v3}, Lcom/tapjoy/mraid/view/MraidView;->initAndPlayVideo(Ljava/lang/String;)V

    .line 1622
    :goto_1
    return-void

    .line 1588
    :cond_1
    new-instance v4, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v4}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    invoke-virtual {v4, p1}, Lcom/tapjoy/TapjoyURLConnection;->getRedirectFromURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v2

    .line 1590
    .local v2, response:Lcom/tapjoy/TapjoyHttpURLResponse;
    const-string v4, "MRAIDView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "redirect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1596
    iget-object v4, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->checkForVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1598
    const/4 v1, 0x1

    .line 1599
    iget-object v3, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    goto :goto_0

    .line 1612
    .end local v2           #response:Lcom/tapjoy/TapjoyHttpURLResponse;
    :cond_2
    const-string v4, "MRAIDView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mraid Browser open:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/tapjoy/mraid/view/Browser;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1614
    .local v0, i:Landroid/content/Intent;
    const-string v4, "extra_url"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1615
    const-string v4, "open_show_back"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1616
    const-string v4, "open_show_forward"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1617
    const-string v4, "open_show_refresh"

    invoke-virtual {v0, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1618
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1619
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public openMap(Ljava/lang/String;Z)V
    .locals 5
    .parameter "POI"
    .parameter "fullscreen"

    .prologue
    .line 1660
    const-string v2, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening Map Url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1662
    invoke-static {p1}, Lcom/tapjoy/mraid/util/Utils;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1663
    if-eqz p2, :cond_0

    .line 1665
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1667
    .local v1, mapIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1668
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    .end local v1           #mapIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1669
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1671
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public playAudio(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "url"
    .parameter "autoPlay"
    .parameter "controls"
    .parameter "loop"
    .parameter "position"
    .parameter "startStyle"
    .parameter "stopStyle"

    .prologue
    .line 1709
    new-instance v0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    invoke-direct {v0}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;-><init>()V

    .line 1711
    .local v0, properties:Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;
    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move/from16 v4, p5

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->setProperties(ZZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 1714
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1716
    .local v8, data:Landroid/os/Bundle;
    const-string v1, "action"

    sget-object v2, Lcom/tapjoy/mraid/view/MraidView$Action;->PLAY_AUDIO:Lcom/tapjoy/mraid/view/MraidView$Action;

    invoke-virtual {v2}, Lcom/tapjoy/mraid/view/MraidView$Action;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    const-string v1, "expand_url"

    invoke-virtual {v8, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    const-string v1, "player_properties"

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1720
    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1722
    :try_start_0
    new-instance v10, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tapjoy/mraid/view/ActionHandler;

    invoke-direct {v10, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1723
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual {v10, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1724
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1733
    .end local v10           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1725
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 1726
    .local v9, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v9}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1729
    .end local v9           #e:Landroid/content/ActivityNotFoundException;
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 1730
    .local v11, msg:Landroid/os/Message;
    invoke-virtual {v11, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1731
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public playAudioImpl(Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 1677
    const-string v3, "player_properties"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    .line 1679
    .local v1, properties:Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;
    const-string v3, "expand_url"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1680
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getPlayer()Lcom/tapjoy/mraid/util/MraidPlayer;

    move-result-object v0

    .line 1681
    .local v0, audioPlayer:Lcom/tapjoy/mraid/util/MraidPlayer;
    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/mraid/util/MraidPlayer;->setPlayData(Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;Ljava/lang/String;)V

    .line 1682
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/tapjoy/mraid/util/MraidPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1683
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1684
    invoke-virtual {v0}, Lcom/tapjoy/mraid/util/MraidPlayer;->playAudio()V

    .line 1685
    return-void
.end method

.method public playVideo(Ljava/lang/String;ZZZZLcom/tapjoy/mraid/controller/Abstract$Dimensions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .parameter "url"
    .parameter "audioMuted"
    .parameter "autoPlay"
    .parameter "controls"
    .parameter "loop"
    .parameter "d"
    .parameter "startStyle"
    .parameter "stopStyle"

    .prologue
    .line 1812
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3ef

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 1813
    .local v14, msg:Landroid/os/Message;
    new-instance v3, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    invoke-direct {v3}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;-><init>()V

    .line 1814
    .local v3, properties:Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;
    const/4 v7, 0x0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v3 .. v10}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->setProperties(ZZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 1816
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1817
    .local v11, data:Landroid/os/Bundle;
    const-string v4, "expand_url"

    move-object v0, v11

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    const-string v4, "action"

    sget-object v5, Lcom/tapjoy/mraid/view/MraidView$Action;->PLAY_VIDEO:Lcom/tapjoy/mraid/view/MraidView$Action;

    invoke-virtual {v5}, Lcom/tapjoy/mraid/view/MraidView$Action;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    const-string v4, "player_properties"

    invoke-virtual {v11, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1822
    if-eqz p6, :cond_0

    .line 1823
    const-string v4, "expand_dimensions"

    move-object v0, v11

    move-object v1, v4

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1825
    :cond_0
    invoke-virtual {v3}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->isFullScreen()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1827
    :try_start_0
    new-instance v13, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/tapjoy/mraid/view/ActionHandler;

    invoke-direct {v13, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1828
    .local v13, intent:Landroid/content/Intent;
    invoke-virtual {v13, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1829
    const/high16 v4, 0x1000

    invoke-virtual {v13, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1830
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1838
    .end local v13           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 1831
    :catch_0
    move-exception v4

    move-object v12, v4

    .line 1832
    .local v12, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v12}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1834
    .end local v12           #e:Landroid/content/ActivityNotFoundException;
    :cond_2
    if-eqz p6, :cond_1

    .line 1835
    invoke-virtual {v14, v11}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1836
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public playVideoImpl(Landroid/os/Bundle;)V
    .locals 11
    .parameter "data"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 1737
    const-string v7, "player_properties"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    .line 1739
    .local v4, properties:Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;
    const-string v7, "expand_dimensions"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;

    .line 1740
    .local v2, d:Lcom/tapjoy/mraid/controller/Abstract$Dimensions;
    const-string v7, "expand_url"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1742
    .local v5, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getPlayer()Lcom/tapjoy/mraid/util/MraidPlayer;

    move-result-object v6

    .line 1743
    .local v6, videoPlayer:Lcom/tapjoy/mraid/util/MraidPlayer;
    invoke-virtual {v6, v4, v5}, Lcom/tapjoy/mraid/util/MraidPlayer;->setPlayData(Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;Ljava/lang/String;)V

    .line 1745
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v2, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    iget v8, v2, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    invoke-direct {v3, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1747
    .local v3, fl:Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v2, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1748
    iget v7, v2, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1749
    invoke-virtual {v6, v3}, Lcom/tapjoy/mraid/util/MraidPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1751
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1753
    .local v0, backGround:Landroid/widget/FrameLayout;
    const/16 v7, 0x65

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1754
    iget v7, v2, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    iget v8, v2, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    invoke-virtual {v0, v7, v8, v10, v10}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1756
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020002

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1758
    .local v1, contentView:Landroid/widget/FrameLayout;
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1762
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1763
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    .line 1765
    new-instance v7, Lcom/tapjoy/mraid/view/MraidView$6;

    invoke-direct {v7, p0}, Lcom/tapjoy/mraid/view/MraidView$6;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    invoke-virtual {v6, v7}, Lcom/tapjoy/mraid/util/MraidPlayer;->setListener(Lcom/tapjoy/mraid/listener/Player;)V

    .line 1785
    invoke-virtual {v6}, Lcom/tapjoy/mraid/util/MraidPlayer;->playVideo()V

    .line 1786
    return-void
.end method

.method public raiseError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "strMsg"
    .parameter "action"

    .prologue
    .line 1992
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1994
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1995
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    const-string v2, "action"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1998
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1999
    return-void
.end method

.method public registerProtocol(Ljava/lang/String;)V
    .locals 2
    .parameter "protocol"

    .prologue
    .line 328
    if-eqz p1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->registeredProtocols:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_0
    return-void
.end method

.method public removeCloseImageButton()V
    .locals 3

    .prologue
    .line 284
    const-string v0, "document.getElementById(\"closeButton\").style.visibility=\"hidden\";"

    .line 285
    .local v0, injection:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 286
    const-string v1, "MRAIDView"

    const-string v2, "Removing close button."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->HIDDEN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->closeButtonState:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    .line 288
    return-void
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;

    .line 240
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->EXPANDED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    if-ne v0, v1, :cond_1

    .line 574
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->closeExpanded()V

    .line 578
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->invalidate()V

    .line 579
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Utility;->deleteOldAds()V

    .line 580
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Utility;->stopAllListeners()V

    .line 581
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->resetLayout()V

    .line 582
    return-void

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->RESIZED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    if-ne v0, v1, :cond_0

    .line 576
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->closeResized()V

    goto :goto_0
.end method

.method public resetContents()V
    .locals 6

    .prologue
    .line 1845
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1847
    .local v1, contentView:Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 1849
    .local v3, placeHolder:Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1851
    .local v0, background:Landroid/widget/FrameLayout;
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1852
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1853
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->resetLayout()V

    .line 1854
    if-eqz v3, :cond_0

    .line 1855
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1856
    .local v2, parent:Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 1857
    iget v4, p0, Lcom/tapjoy/mraid/view/MraidView;->mIndex:I

    invoke-virtual {v2, p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1858
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1859
    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    .line 1862
    .end local v2           #parent:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public resize(IIIILjava/lang/String;Z)V
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "offsetX"
    .parameter "offsetY"
    .parameter "customClosePosition"
    .parameter "allowOffScreen"

    .prologue
    .line 1480
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1481
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1482
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "resize_width"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1483
    const-string v2, "resize_height"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1484
    const-string v2, "resize_x"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1485
    const-string v2, "resize_y"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1486
    const-string v2, "resize_allowOffScreen"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1487
    const-string v2, "resize_customClosePostition"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1489
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1490
    return-void
.end method

.method public resizeOrientation(IILjava/lang/String;Z)V
    .locals 5
    .parameter "width"
    .parameter "height"
    .parameter "customClosePosition"
    .parameter "allowOffScreen"

    .prologue
    .line 1497
    iput p1, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenWidth:I

    .line 1498
    iput p2, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenHeight:I

    .line 1500
    const-string v2, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resizeOrientation to dimensions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1503
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1504
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "resize_width"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1505
    const-string v2, "resize_height"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1506
    const-string v2, "resize_allowOffScreen"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1507
    const-string v2, "resize_customClosePostition"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1509
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1510
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 1975
    invoke-super {p0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1
    .parameter "outState"

    .prologue
    .line 1961
    invoke-super {p0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public setListener(Lcom/tapjoy/mraid/listener/MraidViewListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;

    .line 233
    return-void
.end method

.method public setMaxSize(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/mraid/controller/Utility;->setMaxSize(II)V

    .line 318
    return-void
.end method

.method public setOrientationProperties(ZLjava/lang/String;)V
    .locals 2
    .parameter "allowOrientationChange"
    .parameter "forceOrientation"

    .prologue
    .line 1642
    const/4 v0, -0x1

    .line 1644
    .local v0, requestedOrientation:I
    if-nez p1, :cond_0

    .line 1645
    const-string v1, "landscape"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move v0, v1

    .line 1647
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1648
    return-void

    .line 1645
    .restart local p0
    :cond_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public setPlacementType(Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 255
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INLINE:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    invoke-virtual {p1, v0}, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INTERSTITIAL:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    invoke-virtual {p1, v0}, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    :cond_0
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->placement:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    .line 263
    :goto_0
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INLINE:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    invoke-virtual {p1, v0}, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 267
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/mraid/view/MraidView$OrientationThread;

    invoke-direct {v1, p0}, Lcom/tapjoy/mraid/view/MraidView$OrientationThread;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    .line 268
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 271
    :cond_2
    return-void

    .line 259
    :cond_3
    const-string v0, "MRAIDView"

    const-string v1, "Incorrect placement type."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1531
    return-void
.end method

.method public showCloseImageButton()V
    .locals 3

    .prologue
    .line 291
    const-string v0, "document.getElementById(\"closeButton\").style.visibility=\"visible\";"

    .line 292
    .local v0, injection:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 293
    const-string v1, "MRAIDView"

    const-string v2, "Showing close button."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->OPEN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->closeButtonState:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    .line 295
    return-void
.end method

.method public videoPlaying()Z
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public videoViewCleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1185
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 1187
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->videoRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1188
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1189
    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->videoRelativeLayout:Landroid/widget/RelativeLayout;

    .line 1195
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;

    if-eqz v1, :cond_1

    .line 1196
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 1198
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v1, :cond_2

    .line 1199
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1206
    :cond_2
    :goto_0
    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;

    .line 1207
    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 1210
    if-eqz p0, :cond_3

    .line 1211
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    .line 1213
    :cond_3
    const-string v1, "javascript:try{Tapjoy.AdUnit.dispatchEvent(\'videoend\')}catch(e){}"

    invoke-virtual {p0, v1}, Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V

    .line 1214
    return-void

    .line 1201
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1203
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
