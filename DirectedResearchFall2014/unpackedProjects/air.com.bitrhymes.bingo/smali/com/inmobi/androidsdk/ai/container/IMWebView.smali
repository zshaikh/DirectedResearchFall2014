.class public Lcom/inmobi/androidsdk/ai/container/IMWebView;
.super Landroid/webkit/WebView;
.source "IMWebView.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;,
        Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;,
        Lcom/inmobi/androidsdk/ai/container/IMWebView$a;
    }
.end annotation


# static fields
.field protected static final IMWEBVIEW_INTERSTITIAL_ID:I = 0x75

.field protected static final INT_BACKGROUND_ID:I = 0xe0

.field protected static final INT_CLOSE_BUTTON:I = 0xe1

.field protected static final PLACEHOLDER_ID:I = 0x1b5

.field protected static final RELATIVELAYOUT_ID:I = 0x1b6

.field private static a:[I = null

.field private static synthetic ad:[I = null

.field public static isInterstitialDisplayed:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static final serialVersionUID:J = 0x6282f5dae34d0336L

.field public static userInitiatedClose:Z


# instance fields
.field private A:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private C:I

.field private D:I

.field private E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

.field private H:Landroid/view/Display;

.field private I:Landroid/view/ViewGroup;

.field private J:Landroid/webkit/WebViewClient;

.field private K:Landroid/widget/VideoView;

.field private L:Landroid/view/ViewGroup;

.field private M:Landroid/widget/FrameLayout;

.field private N:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private O:Landroid/webkit/WebChromeClient;

.field private P:Landroid/media/MediaPlayer$OnCompletionListener;

.field private Q:Z

.field private R:Z

.field private S:Landroid/os/Message;

.field private T:Landroid/os/Message;

.field private U:Landroid/os/Message;

.field private V:Landroid/app/Activity;

.field private W:Landroid/app/Activity;

.field private Z:Landroid/os/Message;

.field private aa:I

.field private ab:I

.field private ac:Landroid/webkit/WebViewClient;

.field private b:Z

.field private c:Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

.field private i:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

.field public isTablet:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field public mIsInterstitialAd:Z

.field public mMsgOnInterstitialShown:Landroid/os/Message;

.field public mOriginalWebviewForExpandUrl:Lcom/inmobi/androidsdk/ai/container/IMWebView;

.field private n:I

.field private o:Z

.field private p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

.field public publisherOrientation:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

.field private u:Z

.field public useLockOrient:Z

.field private v:Ljava/lang/String;

.field private w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

.field public webviewUserAgent:Ljava/lang/String;

.field private x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

.field private y:Ljava/lang/Object;

.field private z:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a:[I

    .line 237
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->userInitiatedClose:Z

    .line 248
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isInterstitialDisplayed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    return-void

    .line 93
    nop

    :array_0
    .array-data 0x4
        0x1ft 0x1t 0x1t 0x1t
        0x20t 0x1t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x5

    const/4 v1, 0x0

    .line 426
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    .line 174
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->j:Z

    .line 175
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->k:Z

    .line 179
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    .line 180
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isTablet:Z

    .line 184
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o:Z

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 189
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->r:Z

    .line 191
    iput-boolean v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s:Z

    .line 193
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u:Z

    .line 200
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->y:Ljava/lang/Object;

    .line 201
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 207
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->A:Ljava/util/Hashtable;

    .line 208
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->B:Ljava/util/Hashtable;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->E:Ljava/util/ArrayList;

    .line 250
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 769
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    .line 1269
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->J:Landroid/webkit/WebViewClient;

    .line 1570
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->O:Landroid/webkit/WebChromeClient;

    .line 1637
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$9;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$9;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->P:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1726
    iput-boolean v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->R:Z

    .line 1738
    iput v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    .line 1739
    iput v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:I

    .line 428
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->f()V

    .line 430
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 440
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x5

    const/4 v1, 0x0

    .line 261
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 164
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    .line 174
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->j:Z

    .line 175
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->k:Z

    .line 179
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    .line 180
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isTablet:Z

    .line 184
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o:Z

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 189
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->r:Z

    .line 191
    iput-boolean v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s:Z

    .line 193
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u:Z

    .line 200
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->y:Ljava/lang/Object;

    .line 201
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 207
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->A:Ljava/util/Hashtable;

    .line 208
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->B:Ljava/util/Hashtable;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->E:Ljava/util/ArrayList;

    .line 250
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 769
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    .line 1269
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->J:Landroid/webkit/WebViewClient;

    .line 1570
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->O:Landroid/webkit/WebChromeClient;

    .line 1637
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$9;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$9;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->P:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1726
    iput-boolean v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->R:Z

    .line 1738
    iput v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    .line 1739
    iput v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:I

    .line 262
    iput-object p2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->i:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 263
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->f()V

    .line 264
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x5

    const/4 v1, 0x0

    .line 268
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 164
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    .line 174
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->j:Z

    .line 175
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->k:Z

    .line 179
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    .line 180
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isTablet:Z

    .line 184
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o:Z

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 189
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->r:Z

    .line 191
    iput-boolean v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s:Z

    .line 193
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u:Z

    .line 200
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->y:Ljava/lang/Object;

    .line 201
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 207
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->A:Ljava/util/Hashtable;

    .line 208
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->B:Ljava/util/Hashtable;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->E:Ljava/util/ArrayList;

    .line 250
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 769
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    .line 1269
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->J:Landroid/webkit/WebViewClient;

    .line 1570
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->O:Landroid/webkit/WebChromeClient;

    .line 1637
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$9;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$9;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->P:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1726
    iput-boolean v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->R:Z

    .line 1738
    iput v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    .line 1739
    iput v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:I

    .line 270
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    .line 271
    iput-boolean p3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    .line 272
    iput-boolean p4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->q:Z

    .line 273
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_0

    .line 274
    const/16 v0, 0x75

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setId(I)V

    .line 276
    :cond_0
    iput-object p2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->i:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 277
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->f()V

    .line 278
    return-void
.end method

.method static synthetic A(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 1009
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d()V

    return-void
.end method

.method static synthetic B(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    return-object v0
.end method

.method static synthetic C(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 2273
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->m()V

    return-void
.end method

.method private a(Landroid/app/Activity;)I
    .locals 4
    .parameter

    .prologue
    .line 3699
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3700
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3702
    const/high16 v2, 0x1

    .line 3701
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3704
    const/4 v1, 0x0

    .line 3706
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 3713
    :goto_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    return v0

    .line 3706
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 3707
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 3709
    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/webkit/WebViewClient;
    .locals 1
    .parameter

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ac:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method private a(Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;)Landroid/widget/FrameLayout;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 786
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 787
    const v1, 0x1020002

    .line 786
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 789
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c()V

    .line 793
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 794
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 795
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v3

    .line 796
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v4

    .line 794
    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 799
    const/16 v3, 0x1b3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 805
    new-instance v3, Lcom/inmobi/androidsdk/ai/container/IMWebView$10;

    invoke-direct {v3, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$10;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 814
    iget v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    iget v4, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    invoke-virtual {v1, v3, v4, v5, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 818
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 819
    iget v5, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 818
    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 821
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 822
    const/16 v5, 0x1b6

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 824
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 825
    iget v6, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iget v7, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 824
    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 826
    iget-boolean v6, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o:Z

    if-eqz v6, :cond_0

    .line 827
    iget-object v6, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v4, v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 832
    :goto_0
    iget-boolean v5, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->useCustomClose:Z

    invoke-direct {p0, v4, v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Landroid/view/ViewGroup;Z)V

    .line 834
    invoke-virtual {v1, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 836
    invoke-virtual {p0, v8}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setFocusable(Z)V

    .line 837
    invoke-virtual {p0, v8}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setFocusableInTouchMode(Z)V

    .line 838
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestFocus()Z

    .line 839
    return-object v1

    .line 829
    :cond_0
    invoke-virtual {v4, p0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2476
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 2059
    .line 2061
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 2062
    new-instance v1, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 2063
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 2064
    invoke-interface {v0, v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 2065
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 2066
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    .line 2068
    const-string v0, "http.request"

    invoke-interface {v1, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 2067
    check-cast p0, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 2070
    const-string v0, "http.target_host"

    invoke-interface {v1, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2069
    check-cast v0, Lorg/apache/http/HttpHost;

    .line 2071
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 2072
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2078
    :goto_0
    return-object v0

    .line 2072
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2073
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2075
    :catch_0
    move-exception v0

    .line 2076
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Exception getting final redirect url"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    .line 1675
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidview.fireOrientationChangeEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1676
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getCurrentRotation(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1675
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1677
    const-string v1, "InMobiAndroidSDK_3.6.2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSDisplayController-> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 1680
    iget-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o:Z

    if-eqz v1, :cond_0

    .line 1681
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 1683
    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 896
    :try_start_0
    const-string v0, "expand_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 897
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 898
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o:Z

    .line 899
    new-instance v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->i:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 900
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V

    .line 899
    iput-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 901
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o:Z

    .line 902
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->publisherOrientation:I

    iput v2, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->publisherOrientation:I

    .line 903
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s:Z

    iput-boolean v2, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s:Z

    .line 904
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    new-instance v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    invoke-direct {v2}, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;-><init>()V

    iput-object v2, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    .line 905
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    iput v2, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    .line 906
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    iput v2, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    .line 907
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    iput v2, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 908
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    iput v2, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 909
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->useLockOrient:Z

    iput-boolean v2, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->useLockOrient:Z

    .line 910
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iput-object p0, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 915
    :goto_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setExpandedActivity(Landroid/app/Activity;)V

    .line 918
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-boolean v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->lockOrientation:Z

    if-nez v1, :cond_0

    .line 919
    const/4 v1, -0x5

    iput v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    .line 920
    const/4 v1, -0x5

    iput v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:I

    .line 921
    const-string v1, "window.mraidview.registerOrientationListener()"

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 924
    :cond_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 925
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 926
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iput v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->n:I

    .line 927
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v1, :cond_1

    .line 928
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iput v2, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->n:I

    .line 932
    :cond_1
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;)V

    .line 933
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->y:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    :try_start_1
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 935
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->y:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 933
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 937
    :try_start_2
    iget-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o:Z

    if-eqz v1, :cond_2

    .line 938
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->loadUrl(Ljava/lang/String;)V

    .line 940
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->i:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_3

    .line 941
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->i:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;->onExpand()V

    .line 952
    :cond_3
    :goto_1
    return-void

    .line 912
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 944
    :catch_0
    move-exception v0

    .line 945
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Exception in doexpand "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 946
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    .line 947
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 948
    :try_start_3
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 949
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->y:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 947
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 933
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method private a(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 2670
    .line 2671
    const-string v0, "player_properties"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    .line 2673
    const-string v1, "expand_url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2675
    if-nez v1, :cond_0

    .line 2676
    const-string v1, ""

    .line 2679
    :cond_0
    iget-object v2, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-direct {p0, v2, v1, p2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2783
    :cond_1
    :goto_0
    return-void

    .line 2683
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2684
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->B:Ljava/util/Hashtable;

    iget-object v3, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2685
    :cond_4
    const-string v0, "Request must specify a valid URL"

    const-string v1, "playAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2689
    :cond_5
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    if-eqz v2, :cond_1

    .line 2690
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    .line 2691
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v2, v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setPlayData(Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;Ljava/lang/String;)V

    .line 2693
    :cond_6
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->B:Ljava/util/Hashtable;

    iget-object v2, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2696
    const v1, 0x1020002

    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2695
    check-cast v1, Landroid/widget/FrameLayout;

    .line 2697
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2698
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2699
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v3

    .line 2700
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v4

    .line 2698
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2701
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2702
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v3, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2704
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2705
    new-instance v3, Lcom/inmobi/androidsdk/ai/container/IMWebView$13;

    invoke-direct {v3, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$13;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2714
    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2715
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2716
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v4

    .line 2717
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2715
    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2718
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2720
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setBackGroundLayout(Landroid/view/ViewGroup;)V

    .line 2721
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->requestFocus()Z

    .line 2722
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    new-instance v2, Lcom/inmobi/androidsdk/ai/container/IMWebView$14;

    invoke-direct {v2, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$14;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2745
    :goto_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    new-instance v2, Lcom/inmobi/androidsdk/ai/container/IMWebView$15;

    invoke-direct {v2, p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$15;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setListener(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayerListener;)V

    .line 2780
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->play()V

    goto/16 :goto_0

    .line 2739
    :cond_7
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 2740
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2739
    invoke-virtual {v2, v3}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2742
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4248

    .line 867
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 868
    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 867
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 869
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 872
    if-eqz p2, :cond_0

    .line 873
    new-instance v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d:F

    sget-object v4, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-direct {v1, v2, v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;-><init>(Landroid/content/Context;FLcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    .line 878
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 879
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$11;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$11;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 887
    return-void

    .line 875
    :cond_0
    new-instance v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d:F

    sget-object v4, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-direct {v1, v2, v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;-><init>(Landroid/content/Context;FLcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    goto :goto_0
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-string v5, "InMobiAndroidSDK_3.6.2"

    .line 1535
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IMWebView-> Search query requested:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 1538
    const-string v0, "?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1539
    if-lez v0, :cond_0

    .line 1540
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1541
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1542
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->m:Ljava/lang/String;

    .line 1544
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1547
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1548
    const-string v3, "finaltargeturl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->Z:Landroid/os/Message;

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1550
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->Z:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1558
    :cond_0
    :goto_0
    return-void

    .line 1555
    :catch_0
    move-exception v0

    .line 1556
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v1, "Handle search ad exception "

    invoke-static {v5, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;)V
    .locals 2
    .parameter

    .prologue
    .line 1900
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    .line 1903
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-eq p1, v0, :cond_0

    .line 1904
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidview.fireStateChangeEvent(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1905
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1904
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 1907
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 892
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2668
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Landroid/os/Bundle;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1728
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->S:Landroid/os/Message;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1561
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->L:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1563
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->N:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1533
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/widget/FrameLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1562
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->M:Landroid/widget/FrameLayout;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/widget/VideoView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1560
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->K:Landroid/widget/VideoView;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1899
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->j:Z

    return-void
.end method

.method private a(Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;)V
    .locals 6
    .parameter

    .prologue
    const/high16 v3, 0x4248

    const/4 v4, 0x1

    .line 3349
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    .line 3350
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    int-to-float v0, v0

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    .line 3351
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    .line 3352
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    .line 3353
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 3354
    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->n:I

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 3355
    const/4 v2, 0x0

    .line 3357
    iget v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    if-lez v3, :cond_0

    iget v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    if-gtz v3, :cond_1

    .line 3358
    :cond_0
    iput v4, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    .line 3359
    iput v4, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    move v2, v4

    .line 3363
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3364
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3366
    iget v5, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    if-le v5, v3, :cond_2

    .line 3367
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v3

    iput v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    .line 3368
    :cond_2
    iget v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    if-le v3, v4, :cond_3

    .line 3369
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v3

    iput v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    .line 3371
    :cond_3
    if-nez v2, :cond_4

    .line 3372
    iget v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    iget v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    add-int/2addr v2, v3

    if-le v2, v1, :cond_4

    iget v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    if-ge v2, v1, :cond_4

    .line 3373
    iget v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    if-ge v1, v0, :cond_4

    iget v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    iget v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    add-int/2addr v1, v2

    if-le v1, v0, :cond_4

    .line 3374
    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    .line 3376
    :cond_4
    return-void
.end method

.method private a(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3644
    const v0, -0x383cb080

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 3646
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->isInlineVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    if-eq v1, v0, :cond_0

    .line 3647
    iget v1, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    if-eq v1, v0, :cond_0

    .line 3648
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    .line 3649
    iget v2, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3648
    invoke-virtual {p1, v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3650
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getBackGroundLayout()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 3651
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    if-nez v1, :cond_1

    .line 3652
    iget v1, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    iget v2, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 3658
    :cond_0
    :goto_0
    return-void

    .line 3654
    :cond_1
    iget v1, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    add-int/2addr v1, v2

    .line 3655
    iget v2, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    add-int/2addr v2, v3

    .line 3654
    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1954
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->R:Z

    .line 1957
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidview.fireViewableChangeEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1958
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isViewable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1957
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 1959
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2282
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->B:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2284
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->B:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    .line 2285
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    if-nez v0, :cond_1

    .line 2286
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->B:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 2287
    const-string v0, "Too many audio players"

    const-string v1, "playAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 2319
    :goto_0
    return v0

    .line 2290
    :cond_0
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-direct {v0, p3, p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    .line 2319
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2293
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getMediaURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 2294
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getState()Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->PLAYING:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-ne v0, v1, :cond_3

    move v0, v3

    .line 2297
    goto :goto_0

    .line 2298
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getState()Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->PAUSED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-ne v0, v1, :cond_4

    .line 2299
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->start()V

    move v0, v3

    .line 2300
    goto :goto_0

    .line 2302
    :cond_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getProperties()Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    move-result-object v0

    .line 2303
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getMediaURL()Ljava/lang/String;

    move-result-object v1

    .line 2304
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v2, v3}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->releasePlayer(Z)V

    .line 2305
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->B:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2306
    new-instance v2, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-direct {v2, p3, p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    .line 2307
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v2, v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setPlayData(Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;Ljava/lang/String;)V

    goto :goto_1

    .line 2310
    :cond_5
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0, v3}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->releasePlayer(Z)V

    .line 2311
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->B:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2312
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-direct {v0, p3, p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    goto :goto_1

    .line 2316
    :cond_6
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-direct {v0, p3, p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2420
    const/4 v0, 0x1

    .line 2422
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    if-eqz v1, :cond_0

    .line 2423
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2429
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    .line 2471
    :cond_1
    :goto_0
    return v0

    .line 2432
    :cond_2
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getState()Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    move-result-object v1

    .line 2433
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2435
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getMediaURL()Ljava/lang/String;

    move-result-object v2

    .line 2439
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2441
    :cond_3
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a()[I

    move-result-object v0

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    move v0, v4

    .line 2459
    goto :goto_0

    .line 2443
    :pswitch_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->start()V

    .line 2444
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-direct {p0, v0, p4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;)V

    goto :goto_1

    .line 2448
    :pswitch_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-direct {p0, v0, p4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;)V

    goto :goto_1

    .line 2452
    :pswitch_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getProperties()Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->doLoop()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2453
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->start()V

    goto :goto_1

    .line 2461
    :cond_5
    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2462
    const-string v0, "Request must specify a valid URL"

    const-string v1, "playVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 2463
    goto :goto_0

    .line 2465
    :cond_6
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v1, v4}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->releasePlayer(Z)V

    .line 2466
    new-instance v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-direct {v1, p3, p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    goto :goto_0

    .line 2441
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 71
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ad:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->values()[Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->COMPLETED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->HIDDEN:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->INIT:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->PAUSED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->PLAYING:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->RELEASED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->SHOWING:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ad:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h()V

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->invalidate()V

    .line 412
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c:Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->deleteOldAds()V

    .line 413
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c:Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->stopAllListeners()V

    .line 414
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->l()V

    .line 415
    return-void
.end method

.method private b(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2984
    .line 2985
    const-string v0, "player_properties"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    .line 2986
    const-string v1, "expand_dimensions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;

    .line 2987
    const-string v2, "InMobiAndroidSDK_3.6.2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Final dimensions: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2988
    const-string v2, "expand_url"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2990
    iget-object v3, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-direct {p0, v3, v2, p2, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3116
    :goto_0
    return-void

    .line 2994
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->k:Z

    .line 2996
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 2997
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getProperties()Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    move-result-object v0

    .line 2998
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getPlayDimensions()Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;

    move-result-object v1

    .line 2999
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getMediaURL()Ljava/lang/String;

    move-object v2, v0

    .line 3006
    :goto_1
    const v0, 0x1020002

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3005
    check-cast v0, Landroid/widget/FrameLayout;

    .line 3008
    invoke-virtual {v2}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3010
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3011
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v2

    .line 3012
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v3

    .line 3010
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3013
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3014
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v2, v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3016
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 3017
    new-instance v2, Lcom/inmobi/androidsdk/ai/container/IMWebView$2;

    invoke-direct {v2, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$2;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3024
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 3025
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 3026
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v3

    .line 3027
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3025
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3028
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 3030
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setBackGroundLayout(Landroid/view/ViewGroup;)V

    .line 3031
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->requestFocus()Z

    .line 3033
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    new-instance v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$3;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$3;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3073
    :goto_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    new-instance v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$4;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$4;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setListener(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayerListener;)V

    .line 3114
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->play()V

    goto/16 :goto_0

    .line 3001
    :cond_1
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v3, v0, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setPlayData(Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;Ljava/lang/String;)V

    .line 3002
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v2, v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setPlayDimensions(Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;)V

    move-object v2, v0

    goto :goto_1

    .line 3050
    :cond_2
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    .line 3051
    iget v5, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3050
    invoke-virtual {v2, v3}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3053
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3055
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    if-nez v3, :cond_3

    .line 3056
    iget v3, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 3064
    :goto_3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3065
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v3

    .line 3066
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3064
    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3068
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setBackGroundLayout(Landroid/view/ViewGroup;)V

    .line 3070
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 3058
    :cond_3
    iget v3, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    add-int/2addr v3, v4

    .line 3059
    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    add-int/2addr v1, v4

    .line 3058
    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_3
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2982
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Landroid/os/Bundle;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/ai/container/IMWebView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2085
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/ai/container/IMWebView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1953
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const-string v6, "open"

    const-string v5, "Invalid url"

    const-string v4, "InMobiAndroidSDK_3.6.2"

    .line 2088
    :try_start_0
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2089
    const-string v0, "play.google.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2090
    const-string v0, "market.android.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2091
    const-string v0, "market%3A%2F%2F"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2093
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2094
    const-string v0, "Invalid url"

    const-string v1, "open"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    :cond_0
    :goto_0
    return-void

    .line 2098
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->W:Landroid/app/Activity;

    const-class v2, Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2099
    const-string v1, "InMobiAndroidSDK_3.6.2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IMWebView-> open:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    const-string v1, "extra_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2101
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getStateVariable()Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->q:Z

    if-nez v1, :cond_2

    .line 2102
    const-string v1, "FIRST_INSTANCE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2104
    :cond_2
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->i:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-static {v1}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setWebViewListener(Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;)V

    .line 2105
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->W:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2106
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->q:Z

    if-nez v0, :cond_0

    .line 2107
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->r()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2127
    :catch_0
    move-exception v0

    .line 2128
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v0, "Failed to perform mraid Open"

    invoke-static {v4, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2109
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$12;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$12;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2124
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2129
    :catch_1
    move-exception v0

    .line 2130
    const-string v0, "Invalid url"

    const-string v0, "open"

    invoke-virtual {p0, v5, v6}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 3508
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/app/Activity;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3717
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3718
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Landroid/app/Activity;)I

    move-result v1

    .line 3723
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_0

    .line 3724
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_0

    .line 3725
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_4

    :cond_0
    move v2, v4

    .line 3729
    :goto_0
    const/16 v3, 0xd

    if-lt v0, v3, :cond_3

    .line 3730
    and-int/lit16 v0, v1, 0x400

    if-eqz v0, :cond_1

    .line 3731
    and-int/lit16 v0, v1, 0x800

    if-nez v0, :cond_3

    :cond_1
    move v0, v4

    .line 3736
    :goto_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    move v0, v5

    :goto_2
    return v0

    :cond_2
    move v0, v4

    goto :goto_2

    :cond_3
    move v0, v5

    goto :goto_1

    :cond_4
    move v2, v5

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2386
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2387
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->A:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2388
    :cond_1
    const-string v0, "Request must specify a valid URL"

    const-string v1, "playVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 2414
    :goto_0
    return v0

    .line 2393
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    if-eqz v0, :cond_3

    .line 2394
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->releasePlayer(Z)V

    .line 2397
    :cond_3
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    move-result-object v0

    .line 2400
    if-nez v0, :cond_5

    .line 2401
    new-instance v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-direct {v1, p3, p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    .line 2406
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 2407
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getProperties()Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    move-result-object v2

    .line 2408
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getMediaURL()Ljava/lang/String;

    move-result-object v3

    .line 2407
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setPlayData(Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;Ljava/lang/String;)V

    .line 2409
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getPlayDimensions()Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->setPlayDimensions(Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;)V

    .line 2413
    :cond_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->A:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    const/4 v0, 0x1

    goto :goto_0

    .line 2403
    :cond_5
    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    goto :goto_1
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->i:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    return-object v0
.end method

.method private declared-synchronized c(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;
    .locals 2
    .parameter

    .prologue
    .line 2324
    monitor-enter p0

    const/4 v0, 0x0

    .line 2326
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    if-eqz v1, :cond_1

    .line 2327
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2329
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2335
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 2330
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->B:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2331
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->B:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2333
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->B:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/ai/container/IMWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2057
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 844
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 847
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 848
    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    .line 852
    :cond_0
    iput v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->g:I

    .line 853
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 854
    const/16 v3, 0x1b5

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 855
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getWidth()I

    move-result v4

    .line 856
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getHeight()I

    move-result v5

    .line 855
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 857
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 858
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 859
    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->I:Landroid/view/ViewGroup;

    .line 863
    :goto_1
    return-void

    .line 849
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 848
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 860
    :catch_0
    move-exception v0

    .line 861
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Exception in replaceByPlaceHolder "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/ai/container/IMWebView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o:Z

    return-void
.end method

.method private c(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 3512
    if-eq p1, v1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;
    .locals 1
    .parameter

    .prologue
    .line 2373
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->A:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2374
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->A:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    move-object v0, p0

    .line 2375
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private d()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v0, " ,"

    const-string v7, "InMobiAndroidSDK_3.6.2"

    .line 1010
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->H:Landroid/view/Display;

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getDisplayRotation(Landroid/view/Display;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    .line 1012
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    const/4 v1, -0x5

    if-eq v0, v1, :cond_9

    .line 1013
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:I

    if-eq v0, v1, :cond_9

    .line 1016
    :try_start_0
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMWebView-> SensorEventListener, It came inside the listener"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1017
    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1016
    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:I

    .line 1019
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1020
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1021
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1023
    iget-boolean v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isTablet:Z

    if-eqz v2, :cond_1

    .line 1024
    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    .line 1025
    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    if-le v2, v8, :cond_0

    .line 1026
    const/4 v2, 0x0

    iput v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    .line 1028
    :cond_0
    const-string v2, "InMobiAndroidSDK_3.6.2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IMWebView-> SensorEventListener, It is a tablet"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1029
    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1028
    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    :cond_1
    iget-boolean v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v2, :cond_8

    .line 1033
    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    if-eqz v2, :cond_2

    .line 1034
    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    if-ne v2, v5, :cond_a

    .line 1035
    :cond_2
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    iput v3, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualWidthRequested:I

    .line 1036
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    iput v3, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualHeightRequested:I

    .line 1037
    if-le v0, v1, :cond_16

    move v2, v1

    .line 1051
    :goto_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-boolean v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->zeroWidthHeight:Z

    if-eqz v1, :cond_3

    .line 1052
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iput v2, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualWidthRequested:I

    .line 1053
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iput v0, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualHeightRequested:I

    .line 1056
    :cond_3
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->topStuff:I

    sub-int v3, v0, v1

    .line 1060
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o:Z

    if-eqz v0, :cond_b

    .line 1061
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 1062
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1061
    check-cast v0, Landroid/widget/FrameLayout;

    .line 1067
    :goto_1
    const/4 v1, 0x0

    .line 1068
    const/4 v4, 0x0

    .line 1069
    if-eqz v0, :cond_15

    .line 1071
    const/16 v1, 0x1b3

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1070
    check-cast v0, Landroid/widget/FrameLayout;

    .line 1073
    const/16 v1, 0x1b6

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1072
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1076
    :goto_2
    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    if-eqz v4, :cond_4

    .line 1077
    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    if-ne v4, v5, :cond_e

    .line 1079
    :cond_4
    const-string v4, "InMobiAndroidSDK_3.6.2"

    const-string v5, "IMWebView-> SensorEventListener, It is the case from landscape to portrait"

    invoke-static {v4, v5}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    .line 1083
    iget-object v5, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v5, v5, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualWidthRequested:I

    .line 1082
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1084
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    sub-int/2addr v3, v4

    .line 1085
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    .line 1086
    iget-object v5, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v5, v5, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualHeightRequested:I

    .line 1085
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1089
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    add-int/2addr v3, v4

    .line 1088
    sub-int/2addr v2, v3

    .line 1091
    if-gez v2, :cond_c

    .line 1092
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    add-int/2addr v2, v3

    .line 1093
    if-gez v2, :cond_5

    .line 1094
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1095
    add-int/2addr v2, v4

    .line 1094
    iput v2, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    move v2, v6

    .line 1101
    :cond_5
    :goto_3
    if-eqz v0, :cond_8

    .line 1103
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1102
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1104
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iput v2, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 1105
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    iput v3, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 1106
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    .line 1107
    iget-boolean v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o:Z

    if-eqz v3, :cond_6

    .line 1108
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    .line 1109
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 1108
    iput v3, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 1110
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    .line 1111
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 1110
    iput v3, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 1112
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    .line 1114
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->isInlineVideo()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1115
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getPlayDimensions()Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;

    move-result-object v3

    .line 1116
    if-eqz v3, :cond_7

    iget v4, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    if-ltz v4, :cond_7

    iget v4, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    if-ltz v4, :cond_7

    .line 1118
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getBackGroundLayout()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1117
    check-cast v0, Landroid/widget/FrameLayout;

    .line 1119
    iget v4, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    add-int/2addr v4, v2

    .line 1120
    iget-object v5, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v5, v5, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    add-int/2addr v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1119
    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1124
    :cond_7
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1125
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1126
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1124
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1127
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o:Z

    if-eqz v0, :cond_d

    .line 1128
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 1129
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1130
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1131
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1129
    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1132
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iput v1, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->n:I

    .line 1140
    :goto_4
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Dimensions: {"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1142
    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1143
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1140
    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    :cond_8
    :goto_5
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(I)V

    .line 1226
    :cond_9
    :goto_6
    return-void

    .line 1043
    :cond_a
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    iput v3, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualWidthRequested:I

    .line 1044
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    iput v3, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualHeightRequested:I

    .line 1045
    if-ge v0, v1, :cond_16

    move v2, v1

    .line 1048
    goto/16 :goto_0

    .line 1064
    :cond_b
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1065
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1064
    check-cast v0, Landroid/widget/FrameLayout;

    goto/16 :goto_1

    .line 1099
    :cond_c
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    goto/16 :goto_3

    .line 1135
    :cond_d
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1136
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1137
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1135
    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1138
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->n:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 1221
    :catch_0
    move-exception v0

    .line 1222
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v1, "Exception while changing the container coordinates or width while orientation change "

    invoke-static {v7, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1145
    :cond_e
    :try_start_1
    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_f

    .line 1146
    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    if-ne v4, v8, :cond_8

    .line 1148
    :cond_f
    const-string v4, "InMobiAndroidSDK_3.6.2"

    .line 1149
    const-string v5, "IMWebView-> SensorEventListener, It is the case from portrait to landscape"

    .line 1148
    invoke-static {v4, v5}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    .line 1153
    iget-object v5, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v5, v5, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualHeightRequested:I

    .line 1152
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1154
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    sub-int/2addr v2, v4

    .line 1155
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    .line 1156
    iget-object v5, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v5, v5, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualWidthRequested:I

    .line 1155
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1160
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    add-int/2addr v2, v4

    .line 1159
    sub-int v2, v3, v2

    .line 1162
    if-gez v2, :cond_13

    .line 1163
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    add-int/2addr v2, v3

    .line 1164
    if-gez v2, :cond_10

    .line 1165
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1166
    add-int/2addr v2, v4

    .line 1165
    iput v2, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    move v2, v6

    .line 1172
    :cond_10
    :goto_7
    if-eqz v0, :cond_8

    .line 1173
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    .line 1174
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1173
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1175
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    iput v3, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 1176
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iput v2, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 1177
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    .line 1178
    iget-boolean v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o:Z

    if-eqz v3, :cond_11

    .line 1179
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    .line 1180
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 1179
    iput v3, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 1181
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    .line 1182
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 1181
    iput v3, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 1183
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    .line 1185
    :cond_11
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->isInlineVideo()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1186
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getPlayDimensions()Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;

    move-result-object v3

    .line 1187
    if-eqz v3, :cond_12

    iget v4, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    if-ltz v4, :cond_12

    iget v4, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    if-ltz v4, :cond_12

    .line 1189
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getBackGroundLayout()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1188
    check-cast v0, Landroid/widget/FrameLayout;

    .line 1190
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    iget v5, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    add-int/2addr v4, v5

    .line 1191
    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    add-int/2addr v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1190
    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1195
    :cond_12
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1196
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1197
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1195
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1198
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o:Z

    if-eqz v0, :cond_14

    .line 1199
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 1200
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1201
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1202
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1200
    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1203
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iput v1, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->n:I

    .line 1211
    :goto_8
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Dimensions: {"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1212
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1213
    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1214
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1211
    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1170
    :cond_13
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    goto/16 :goto_7

    .line 1206
    :cond_14
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1207
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1208
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1206
    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1209
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->n:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :cond_15
    move-object v0, v1

    move-object v1, v4

    goto/16 :goto_2

    :cond_16
    move v2, v0

    move v0, v1

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/ai/container/IMWebView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->k:Z

    return-void
.end method

.method private declared-synchronized e(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;
    .locals 2
    .parameter

    .prologue
    .line 2478
    monitor-enter p0

    const/4 v0, 0x0

    .line 2480
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    if-eqz v1, :cond_1

    .line 2481
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2483
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2489
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 2484
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->A:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2485
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->A:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2487
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->A:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2478
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 1656
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->K:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    .line 1671
    :goto_0
    return-void

    .line 1659
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->K:Landroid/widget/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 1661
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->M:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->K:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1662
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->K:Landroid/widget/VideoView;

    .line 1663
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->M:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1664
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->N:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 1666
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->L:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1667
    :catch_0
    move-exception v0

    .line 1668
    const-string v1, "InMobiAndroidSDK_3.6.2"

    .line 1669
    const-string v2, "Error removing html5 video"

    .line 1668
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Z
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->j:Z

    return v0
.end method

.method static synthetic f(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->E:Ljava/util/ArrayList;

    return-object v0
.end method

.method private f()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v4, "window"

    .line 1749
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->W:Landroid/app/Activity;

    .line 1750
    sput-boolean v3, Lcom/inmobi/androidsdk/ai/container/IMWebView;->userInitiatedClose:Z

    .line 1751
    invoke-virtual {p0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setScrollContainer(Z)V

    .line 1752
    invoke-virtual {p0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setVerticalScrollBarEnabled(Z)V

    .line 1753
    invoke-virtual {p0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1754
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->webviewUserAgent:Ljava/lang/String;

    .line 1756
    invoke-virtual {p0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setBackgroundColor(I)V

    .line 1757
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1758
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1759
    const-string v2, "window"

    .line 1758
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1761
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1763
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d:F

    .line 1764
    iput-boolean v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b:Z

    .line 1766
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1768
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c:Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;

    .line 1770
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c:Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;

    const-string v1, "utilityController"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1772
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->J:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1774
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->O:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1781
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    .line 1782
    const-string v1, "window"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1781
    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->H:Landroid/view/Display;

    .line 1783
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->n:I

    .line 1786
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1788
    invoke-static {p0}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->disableHardwareAccl(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    .line 1791
    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1795
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "IMWebView-> initStates"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    .line 1798
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1801
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->R:Z

    .line 1803
    return-void
.end method

.method static synthetic g(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Z
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o:Z

    return v0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1832
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1872
    :goto_0
    return-void

    .line 1837
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 1838
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1839
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->y:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1837
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1842
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->publisherOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1844
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s:Z

    .line 1852
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->k()V

    .line 1854
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->releaseAllPlayers()V

    .line 1857
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1859
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->sendEmptyMessage(I)Z

    .line 1860
    invoke-virtual {p0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setVisibility(I)V

    .line 1862
    iput-boolean v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o:Z

    .line 1863
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->useLockOrient:Z

    if-eqz v0, :cond_2

    .line 1865
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    .line 1866
    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->D:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1869
    :cond_2
    const-string v0, "window.mraidview.unRegisterOrientationListener()"

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 1871
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;)V

    goto :goto_0

    .line 1837
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic h(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Z
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->q:Z

    return v0
.end method

.method static synthetic i(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->S:Landroid/os/Message;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->W:Landroid/app/Activity;

    .line 1987
    const/16 v1, 0xe1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1986
    check-cast v0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    .line 1988
    if-eqz v0, :cond_0

    .line 1989
    iget-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->r:Z

    if-eqz v1, :cond_1

    .line 1990
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setSwitchInt(Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    .line 1991
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->invalidate()V

    .line 1997
    :cond_0
    :goto_0
    return-void

    .line 1993
    :cond_1
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setSwitchInt(Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    .line 1994
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->invalidate()V

    goto :goto_0
.end method

.method static synthetic j(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->T:Landroid/os/Message;

    return-object v0
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 2000
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->r:Z

    return v0
.end method

.method private k()V
    .locals 7

    .prologue
    const-string v6, "InMobiAndroidSDK_3.6.2"

    .line 2141
    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o:Z

    if-eqz v0, :cond_3

    .line 2142
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 2143
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2142
    check-cast v0, Landroid/widget/FrameLayout;

    move-object v3, v0

    .line 2148
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    .line 2149
    const/16 v1, 0x1b5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2148
    check-cast v0, Landroid/widget/FrameLayout;

    .line 2151
    const/16 v1, 0x1b3

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2150
    check-cast v1, Landroid/widget/FrameLayout;

    .line 2152
    const-string v2, "InMobiAndroidSDK_3.6.2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PlaceHolder ID: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2153
    const-string v5, " Bg ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2152
    invoke-static {v2, v4}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    iget-boolean v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o:Z

    if-eqz v2, :cond_0

    .line 2155
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->releaseAllPlayers()V

    .line 2157
    :cond_0
    if-eqz v1, :cond_1

    .line 2158
    iget-boolean v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o:Z

    if-eqz v2, :cond_4

    .line 2159
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2160
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2161
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 2165
    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2167
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->l()V

    .line 2168
    if-eqz v0, :cond_2

    .line 2169
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->I:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2171
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->I:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->g:I

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2172
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->I:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2186
    :goto_2
    return-void

    .line 2145
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 2146
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2145
    check-cast v0, Landroid/widget/FrameLayout;

    move-object v3, v0

    goto :goto_0

    .line 2163
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2173
    :catch_0
    move-exception v0

    .line 2175
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 2176
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2177
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 2178
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2183
    :goto_3
    const-string v1, "InMobiAndroidSDK_3.6.2"

    .line 2184
    const-string v1, "Exception while closing the expanded Ad"

    .line 2183
    invoke-static {v6, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2179
    :catch_1
    move-exception v1

    .line 2180
    const-string v2, "InMobiAndroidSDK_3.6.2"

    const-string v2, "IMWebview reset contents "

    invoke-static {v6, v2, v1}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method static synthetic k(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Z
    .locals 1
    .parameter

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->l:Z

    return v0
.end method

.method static synthetic l(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->W:Landroid/app/Activity;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 2192
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2193
    iget-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->Q:Z

    if-eqz v1, :cond_0

    .line 2194
    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2195
    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->f:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2197
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setVisibility(I)V

    .line 2198
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestLayout()V

    .line 2199
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 2274
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->userInitiatedClose:Z

    .line 2275
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isInterstitialDisplayed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2276
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->close()V

    .line 2277
    return-void
.end method

.method static synthetic m(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 3743
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->r()V

    return-void
.end method

.method static synthetic n(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->M:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private n()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x5

    .line 3531
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u:Z

    if-eqz v0, :cond_6

    .line 3537
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getIntegerCurrentRotation()I

    move-result v0

    .line 3538
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->v:Ljava/lang/String;

    const-string v2, "portrait"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3540
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3541
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    .line 3542
    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamPortraitOrientation(I)I

    move-result v0

    .line 3541
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 3575
    :cond_0
    :goto_0
    return-void

    .line 3543
    :cond_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3546
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->isInlineVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3547
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getState()Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->RELEASED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3548
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v1, v3}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->releasePlayer(Z)V

    .line 3550
    :cond_2
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    .line 3551
    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamPortraitOrientation(I)I

    move-result v0

    .line 3550
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 3555
    :cond_3
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3556
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    .line 3557
    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamLandscapeOrientation(I)I

    move-result v0

    .line 3556
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 3558
    :cond_4
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3561
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->isInlineVideo()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3562
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getState()Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->RELEASED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3563
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v1, v3}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->releasePlayer(Z)V

    .line 3565
    :cond_5
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    .line 3566
    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamLandscapeOrientation(I)I

    move-result v0

    .line 3565
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 3571
    :cond_6
    iput v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    .line 3572
    iput v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:I

    .line 3573
    const-string v0, "window.mraidview.registerOrientationListener()"

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic o(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->L:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 3579
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getIntegerCurrentRotation()I

    move-result v0

    .line 3580
    iget-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u:Z

    if-eqz v1, :cond_0

    .line 3581
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->v:Ljava/lang/String;

    const-string v2, "portrait"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3582
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    .line 3583
    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamPortraitOrientation(I)I

    move-result v0

    .line 3582
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 3591
    :cond_0
    :goto_0
    return-void

    .line 3584
    :cond_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->v:Ljava/lang/String;

    const-string v2, "landscape"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3585
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    .line 3586
    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamLandscapeOrientation(I)I

    move-result v0

    .line 3585
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3588
    :catch_0
    move-exception v0

    .line 3589
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "IMWebview Handle orientation for 2 piece "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/widget/VideoView;
    .locals 1
    .parameter

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->K:Landroid/widget/VideoView;

    return-object v0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 3602
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    .line 3605
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->C:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 3607
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->releaseAllPlayers()V

    .line 3609
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    .line 3610
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3609
    check-cast v0, Landroid/widget/FrameLayout;

    .line 3613
    const/16 v1, 0xe0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3612
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 3614
    if-eqz v1, :cond_0

    .line 3615
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3616
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3620
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->U:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 3621
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->U:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->U:Landroid/os/Message;

    .line 3625
    :cond_1
    const-string v0, "window.mraidview.unRegisterOrientationListener()"

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 3628
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->HIDDEN:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3634
    :goto_0
    return-void

    .line 3630
    :catch_0
    move-exception v0

    .line 3631
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Failed to close the interstitial ad"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic q(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->P:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method private q()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3672
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    if-eqz v0, :cond_0

    .line 3673
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getState()Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->RELEASED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-eq v0, v1, :cond_0

    .line 3674
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->A:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3675
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->hide()V

    .line 3676
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0, v5}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->releasePlayer(Z)V

    .line 3679
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->B:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3696
    return-void

    .line 3679
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3680
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    .line 3681
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a()[I

    move-result-object v3

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getState()Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 3683
    :pswitch_0
    invoke-virtual {v1, v5}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->releasePlayer(Z)V

    .line 3684
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->B:Ljava/util/Hashtable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3688
    :pswitch_1
    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->pause()V

    goto :goto_0

    .line 3681
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private r()V
    .locals 2

    .prologue
    .line 3745
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->i:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getStateVariable()Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v0, :cond_0

    .line 3746
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v1, 0x404

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->requestOnAdDismiss(Landroid/os/Message;)V

    .line 3747
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->i:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;->onShowAdScreen()V

    .line 3749
    :cond_0
    return-void
.end method

.method static synthetic r(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 1654
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e()V

    return-void
.end method

.method static synthetic s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 1830
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h()V

    return-void
.end method

.method static synthetic t(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 3593
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p()V

    return-void
.end method

.method static synthetic u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Ljava/util/Hashtable;
    .locals 1
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->B:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic v(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Ljava/util/Hashtable;
    .locals 1
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->A:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic w(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    return-object v0
.end method

.method static synthetic x(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 1985
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->i()V

    return-void
.end method

.method static synthetic y(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 3670
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->q()V

    return-void
.end method

.method static synthetic z(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 3515
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->n()V

    return-void
.end method


# virtual methods
.method public acceptAction(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1805
    return-void
.end method

.method public addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1814
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1815
    return-void
.end method

.method public cancelLoad()V
    .locals 2

    .prologue
    .line 3740
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3741
    return-void
.end method

.method public changeContentAreaForInterstitials(Z)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/high16 v7, -0x100

    const/high16 v5, 0x4248

    .line 3384
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    .line 3385
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    .line 3384
    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->C:I

    .line 3389
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->n()V

    .line 3396
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    .line 3397
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3396
    check-cast v0, Landroid/widget/FrameLayout;

    .line 3399
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 3400
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3401
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v3

    .line 3402
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v4

    .line 3400
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3404
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3405
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setFocusable(Z)V

    .line 3406
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setFocusableInTouchMode(Z)V

    .line 3407
    invoke-virtual {v1, p0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3409
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3410
    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 3409
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3413
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->j()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3414
    new-instance v3, Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d:F

    .line 3415
    sget-object v6, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    .line 3414
    invoke-direct {v3, v4, v5, v6}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;-><init>(Landroid/content/Context;FLcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    .line 3420
    :goto_0
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3421
    const/16 v4, 0xe1

    invoke-virtual {v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setId(I)V

    .line 3422
    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3423
    new-instance v2, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;

    invoke-direct {v2, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    invoke-virtual {v3, v2}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3430
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3431
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v3

    .line 3432
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamFillParent()I

    move-result v4

    .line 3430
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3434
    const/16 v3, 0xe0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 3436
    if-eqz p1, :cond_2

    move v3, v8

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 3437
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3440
    if-eqz p1, :cond_3

    move v0, v8

    :goto_2
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setBackgroundColor(I)V

    .line 3441
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestFocus()Z

    .line 3443
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$6;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$6;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3461
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3477
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isInterstitialDisplayed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3479
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mMsgOnInterstitialShown:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 3480
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mMsgOnInterstitialShown:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mMsgOnInterstitialShown:Landroid/os/Message;

    .line 3484
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Z)V

    .line 3489
    :goto_3
    return-void

    .line 3417
    :cond_1
    new-instance v3, Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d:F

    .line 3418
    sget-object v6, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    .line 3417
    invoke-direct {v3, v4, v5, v6}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;-><init>(Landroid/content/Context;FLcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3486
    :catch_0
    move-exception v0

    .line 3487
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Failed showing interstitial ad"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    move v3, v7

    .line 3436
    goto :goto_1

    :cond_3
    move v0, v7

    .line 3440
    goto :goto_2
.end method

.method public clearView()V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b()V

    .line 398
    invoke-super {p0}, Landroid/webkit/WebView;->clearView()V

    .line 399
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    const/16 v1, 0x3e9

    .line 1935
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->sendEmptyMessage(I)Z

    .line 1937
    :cond_0
    return-void
.end method

.method protected closeOpened(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 1881
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1882
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1883
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestLayout()V

    .line 1884
    return-void
.end method

.method public closeVideo(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const-string v3, "closeVideo"

    .line 3207
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    move-result-object v0

    .line 3208
    if-nez v0, :cond_0

    .line 3209
    const-string v0, "Invalid property ID"

    const-string v1, "closeVideo"

    invoke-virtual {p0, v0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3221
    :goto_0
    return-void

    .line 3211
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getState()Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->RELEASED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-ne v1, v2, :cond_1

    .line 3212
    const-string v0, "Invalid player state"

    const-string v1, "closeVideo"

    invoke-virtual {p0, v0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3216
    :cond_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->A:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3217
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v2, 0x3f4

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3218
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3219
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public deinit()V
    .locals 2

    .prologue
    .line 1822
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getStateVariable()Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getStateVariable()Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_1

    .line 1823
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->close()V

    .line 1825
    :cond_1
    return-void
.end method

.method public doHidePlayers()V
    .locals 2

    .prologue
    .line 3661
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v1, 0x3ff

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->sendEmptyMessage(I)Z

    .line 3662
    return-void
.end method

.method public expand(Ljava/lang/String;Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-string v4, " ,"

    .line 2015
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;)V

    .line 2016
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o:Z

    .line 2018
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2020
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2022
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2024
    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2028
    iput-object p2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    .line 2030
    const-string v1, "InMobiAndroidSDK_3.6.2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dimensions: {"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2031
    const-string v3, " ,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2032
    const-string v3, " ,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2030
    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-boolean v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->lockOrientation:Z

    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s:Z

    .line 2036
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->sendMessage(Landroid/os/Message;)Z

    .line 2037
    return-void
.end method

.method public fireOnLeaveApplication()V
    .locals 1

    .prologue
    .line 3665
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->doHidePlayers()V

    .line 3666
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->i:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_0

    .line 3667
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->i:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;->onLeaveApplication()V

    .line 3668
    :cond_0
    return-void
.end method

.method public getAudioVolume(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 2950
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    move-result-object v0

    .line 2952
    if-nez v0, :cond_0

    .line 2953
    const-string v0, "Invalid property ID"

    const-string v1, "getAudioVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2954
    const/4 v0, -0x1

    .line 2958
    :goto_0
    return v0

    .line 2956
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getVolume()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentRotation(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1703
    const-string v0, "-1"

    .line 1704
    packed-switch p1, :pswitch_data_0

    .line 1721
    :goto_0
    return-object v0

    .line 1706
    :pswitch_0
    const-string v0, "0"

    goto :goto_0

    .line 1710
    :pswitch_1
    const-string v0, "90"

    goto :goto_0

    .line 1714
    :pswitch_2
    const-string v0, "180"

    goto :goto_0

    .line 1718
    :pswitch_3
    const-string v0, "270"

    goto :goto_0

    .line 1704
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getExpandedActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->W:Landroid/app/Activity;

    return-object v0
.end method

.method public getIntegerCurrentRotation()I
    .locals 3

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->W:Landroid/app/Activity;

    .line 1687
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1686
    check-cast v0, Landroid/view/WindowManager;

    .line 1687
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1688
    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getDisplayRotation(Landroid/view/Display;)I

    move-result v0

    .line 1690
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->W:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1691
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->W:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1692
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1690
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getWhetherTablet(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1693
    add-int/lit8 v0, v0, 0x1

    .line 1694
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 1695
    const/4 v0, 0x0

    .line 1697
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isTablet:Z

    .line 1699
    :cond_1
    return v0
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1966
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_0

    .line 1967
    const-string v0, "interstitial"

    .line 1969
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "inline"

    goto :goto_0
.end method

.method public getSize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2216
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2217
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStateVariable()Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;
    .locals 1

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    return-object v0
.end method

.method public getVideoVolume(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 3336
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    move-result-object v0

    .line 3338
    if-nez v0, :cond_0

    .line 3339
    const-string v0, "Invalid property ID"

    const-string v1, "getVideoVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3340
    const/4 v0, -0x1

    .line 3344
    :goto_0
    return v0

    .line 3342
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getVolume()I

    move-result v0

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->sendEmptyMessage(I)Z

    .line 1944
    return-void
.end method

.method public hideVideo(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3225
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v1, 0x3f5

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3226
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3227
    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3228
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3229
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->sendMessage(Landroid/os/Message;)Z

    .line 3231
    return-void
.end method

.method public injectJavaScript(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const-string v3, "InMobiAndroidSDK_3.6.2"

    .line 348
    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->j:Z

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    .line 350
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Injecting JavaScript: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_1
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 357
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v1, "Error injecting javascript "

    invoke-static {v3, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isAudioMuted(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 2920
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    move-result-object v0

    .line 2922
    if-nez v0, :cond_0

    .line 2923
    const-string v0, "Invalid property ID"

    const-string v1, "isAudioMuted"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2924
    const/4 v0, 0x0

    .line 2929
    :goto_0
    return v0

    .line 2926
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->isMediaMuted()Z

    move-result v0

    goto :goto_0
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 1910
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->k:Z

    return v0
.end method

.method public isExpanded()Z
    .locals 2

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPageFinished()Z
    .locals 1

    .prologue
    .line 2207
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b:Z

    return v0
.end method

.method public isVideoMuted(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 3303
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    move-result-object v0

    .line 3305
    if-nez v0, :cond_0

    .line 3306
    const-string v0, "Invalid property ID"

    const-string v1, "isVideoMuted"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3307
    const/4 v0, 0x0

    .line 3312
    :goto_0
    return v0

    .line 3309
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->isMediaMuted()Z

    move-result v0

    goto :goto_0
.end method

.method public isViewable()Z
    .locals 1

    .prologue
    .line 1962
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->R:Z

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 378
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->g()V

    .line 387
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->g()V

    .line 369
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public lockExpandOrientation(Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;)V
    .locals 3
    .parameter

    .prologue
    .line 964
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->D:I

    .line 978
    iget-boolean v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->lockOrientation:Z

    if-eqz v0, :cond_1

    .line 984
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->useLockOrient:Z

    .line 985
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getIntegerCurrentRotation()I

    move-result v0

    .line 986
    iget-object v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    const-string v2, "portrait"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 987
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 988
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 989
    :cond_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    .line 990
    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamPortraitOrientation(I)I

    move-result v0

    .line 989
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1003
    :cond_1
    :goto_0
    return-void

    .line 992
    :cond_2
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 993
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 994
    :cond_3
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    .line 995
    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->getParamLandscapeOrientation(I)I

    move-result v0

    .line 994
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1000
    :catch_0
    move-exception v0

    .line 1001
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Exception handling the orientation "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public muteAudio(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const-string v2, "muteAudio"

    .line 2880
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    move-result-object v0

    .line 2882
    if-nez v0, :cond_0

    .line 2883
    const-string v0, "Invalid property ID"

    const-string v1, "muteAudio"

    invoke-virtual {p0, v0, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    :goto_0
    return-void

    .line 2885
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getState()Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->RELEASED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-ne v0, v1, :cond_1

    .line 2886
    const-string v0, "Invalid player state"

    const-string v1, "muteAudio"

    invoke-virtual {p0, v0, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2890
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v1, 0x3fb

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2891
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2892
    const-string v2, "aplayerref"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2893
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2894
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public muteVideo(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const-string v3, "muteVideo"

    .line 3244
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    move-result-object v0

    .line 3246
    if-nez v0, :cond_0

    .line 3247
    const-string v0, "Invalid property ID"

    const-string v1, "muteVideo"

    invoke-virtual {p0, v0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    :goto_0
    return-void

    .line 3249
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getState()Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->RELEASED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-eq v1, v2, :cond_1

    .line 3250
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getState()Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->INIT:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-ne v1, v2, :cond_2

    .line 3251
    :cond_1
    const-string v0, "Invalid player state"

    const-string v1, "muteVideo"

    invoke-virtual {p0, v0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3255
    :cond_2
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v2, 0x3f7

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3256
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3257
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 2229
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "IMWebView-> onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->Q:Z

    if-nez v0, :cond_0

    .line 2232
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2233
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e:I

    .line 2234
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->f:I

    .line 2235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->Q:Z

    .line 2237
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 2238
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 2261
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "IMWebView-> onDetatchedFromWindow"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c:Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->stopAllListeners()V

    .line 2263
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2268
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->q:Z

    if-nez v0, :cond_0

    .line 2269
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->m()V

    .line 2270
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 2271
    return-void
.end method

.method public onOrientationEventChange()V
    .locals 2

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v1, 0x403

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->sendEmptyMessage(I)Z

    .line 1007
    return-void
.end method

.method public openURL(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2041
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isViewable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2042
    const-string v0, "Cannot open URL.Ad is not viewable yet"

    const-string v1, "openURL"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    :goto_0
    return-void

    .line 2049
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->doHidePlayers()V

    .line 2050
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2051
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2052
    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2054
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public pageFinishedCallbackForAdCreativeTesting(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 2512
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->T:Landroid/os/Message;

    .line 2514
    return-void
.end method

.method public pauseAudio(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const-string v3, "pauseAudio"

    .line 2858
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    move-result-object v0

    .line 2860
    if-nez v0, :cond_1

    .line 2861
    const-string v0, "Invalid property ID"

    const-string v1, "pauseAudio"

    invoke-virtual {p0, v0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    :cond_0
    :goto_0
    return-void

    .line 2863
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getState()Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->PLAYING:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-eq v1, v2, :cond_2

    .line 2864
    const-string v0, "Invalid player state"

    const-string v1, "pauseAudio"

    invoke-virtual {p0, v0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2867
    :cond_2
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2870
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2871
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2872
    const-string v2, "aplayerref"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2873
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2874
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public pauseVideo(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3198
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3199
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3200
    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3201
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3202
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->sendMessage(Landroid/os/Message;)Z

    .line 3203
    return-void
.end method

.method public playAudio(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v4, "playAudio"

    .line 2807
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 2808
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 2810
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->y:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2807
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2817
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-eq v0, v1, :cond_1

    .line 2818
    const-string v0, "Cannot play audio.Ad is not in an expanded state"

    const-string v1, "playAudio"

    invoke-virtual {p0, v0, v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2839
    :goto_1
    return-void

    .line 2811
    :catch_0
    move-exception v1

    .line 2812
    :try_start_3
    const-string v2, "InMobiAndroidSDK_3.6.2"

    const-string v3, "mutex failed "

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2807
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 2820
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isViewable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2821
    const-string v0, "Cannot play audio.Ad is not viewable yet"

    const-string v1, "playAudio"

    invoke-virtual {p0, v0, v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2825
    :cond_2
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;-><init>()V

    .line 2827
    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->setProperties(ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2832
    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2833
    const-string v2, "player_properties"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2835
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v2, 0x3ef

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2836
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2837
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public playVideo(Ljava/lang/String;ZZZZLcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3144
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->y:Ljava/lang/Object;

    monitor-enter v3

    .line 3145
    :try_start_0
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 3147
    :try_start_1
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->y:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3144
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3156
    iget-boolean v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    sget-object v4, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-eq v3, v4, :cond_1

    .line 3157
    const-string v3, "Cannot play video.Ad is not in an expanded state"

    const-string v4, "playVideo"

    invoke-virtual {p0, v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3194
    :goto_1
    return-void

    .line 3148
    :catch_0
    move-exception v4

    .line 3149
    :try_start_3
    const-string v5, "InMobiAndroidSDK_3.6.2"

    const-string v6, "mutex failed "

    invoke-static {v5, v6, v4}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3144
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 3159
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isViewable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3160
    const-string v3, "Cannot play video.Ad is not viewable yet"

    const-string v4, "playVideo"

    invoke-virtual {p0, v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3165
    :cond_2
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->A:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3166
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->A:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 3167
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->A:Ljava/util/Hashtable;

    move-object v0, v3

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3168
    const-string v3, "Player Error. Exceeding permissible limit for saved play instances"

    const-string v4, "playVideo"

    invoke-virtual {p0, v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3172
    :cond_3
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v4, 0x3ee

    invoke-virtual {v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 3174
    new-instance v3, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    invoke-direct {v3}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;-><init>()V

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 3176
    invoke-virtual/range {v3 .. v10}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->setProperties(ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3179
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3180
    const-string v5, "expand_url"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3182
    const-string v5, "player_properties"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3184
    const-string v3, "InMobiAndroidSDK_3.6.2"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Before validation dimension: ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3185
    move-object/from16 v0, p6

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3184
    invoke-static {v3, v5}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3186
    move-object v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;)V

    .line 3187
    const-string v3, "InMobiAndroidSDK_3.6.2"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "After validation dimension: ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3188
    move-object/from16 v0, p6

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3187
    invoke-static {v3, v5}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3189
    const-string v3, "expand_dimensions"

    move-object v0, v4

    move-object v1, v3

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3191
    invoke-virtual {v11, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3192
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    invoke-virtual {v3, v11}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method

.method public postInjectJavaScript(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 328
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->j:Z

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    .line 330
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Injecting JavaScript: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v1, 0x401

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 333
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 334
    const-string v2, "injectMessage"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 336
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 338
    :cond_1
    return-void
.end method

.method public raiseError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2244
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2245
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    const-string v2, "action"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2248
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->sendMessage(Landroid/os/Message;)Z

    .line 2249
    return-void
.end method

.method public reinitializeExpandProperties()V
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c:Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->reinitializeExpandProperties()V

    .line 1819
    return-void
.end method

.method public rejectAction(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1807
    return-void
.end method

.method public releaseAllPlayers()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const-string v5, "InMobiAndroidSDK_3.6.2"

    const-string v4, "IMwebview release all players "

    .line 2345
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    if-eqz v0, :cond_0

    .line 2346
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->A:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2349
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->A:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 2356
    :goto_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->A:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 2357
    iput-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    .line 2360
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->B:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_2

    .line 2367
    :goto_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->userInitiatedClose:Z

    .line 2368
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->B:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 2369
    iput-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    .line 2370
    return-void

    .line 2349
    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2350
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    sget-boolean v2, Lcom/inmobi/androidsdk/ai/container/IMWebView;->userInitiatedClose:Z

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->releasePlayer(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2352
    :catch_0
    move-exception v0

    .line 2353
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v1, "IMwebview release all players "

    invoke-static {v5, v4, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2360
    :cond_2
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2361
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    sget-boolean v2, Lcom/inmobi/androidsdk/ai/container/IMWebView;->userInitiatedClose:Z

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->releasePlayer(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 2363
    :catch_1
    move-exception v0

    .line 2364
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v1, "IMwebview release all players "

    invoke-static {v5, v4, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public requestOnInterstitialClosed(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 2527
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->U:Landroid/os/Message;

    .line 2529
    return-void
.end method

.method public requestOnInterstitialShown(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 2520
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mMsgOnInterstitialShown:Landroid/os/Message;

    .line 2521
    return-void
.end method

.method public requestOnPageFinishedCallback(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 2506
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->S:Landroid/os/Message;

    .line 2508
    return-void
.end method

.method public requestOnSearchAdClicked(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 2532
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->Z:Landroid/os/Message;

    .line 2533
    return-void
.end method

.method public seekAudio(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-string v3, "seekAudio"

    .line 2962
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    move-result-object v0

    .line 2964
    if-nez v0, :cond_0

    .line 2965
    const-string v0, "Invalid property ID"

    const-string v1, "seekAudio"

    invoke-virtual {p0, v0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2980
    :goto_0
    return-void

    .line 2967
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getState()Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->RELEASED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-ne v1, v2, :cond_1

    .line 2968
    const-string v0, "Invalid player state"

    const-string v1, "seekAudio"

    invoke-virtual {p0, v0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2972
    :cond_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v2, 0x3fe

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2973
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2974
    const-string v3, "seekaudio"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2975
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2976
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2977
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public seekVideo(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-string v3, "seekVideo"

    .line 3282
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    move-result-object v0

    .line 3284
    if-nez v0, :cond_0

    .line 3285
    const-string v0, "Invalid property ID"

    const-string v1, "seekVideo"

    invoke-virtual {p0, v0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3300
    :goto_0
    return-void

    .line 3287
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getState()Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->RELEASED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-eq v1, v2, :cond_1

    .line 3288
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getState()Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->INIT:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-ne v1, v2, :cond_2

    .line 3289
    :cond_1
    const-string v0, "Invalid player state"

    const-string v1, "seekVideo"

    invoke-virtual {p0, v0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3293
    :cond_2
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v2, 0x3fa

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3294
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3295
    const-string v3, "seek"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3296
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3297
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3298
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendasyncPing(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c:Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->asyncPing(Ljava/lang/String;)V

    .line 1811
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 2536
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Landroid/app/Activity;

    .line 2537
    return-void
.end method

.method public setAdUnitData(ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2498
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->l:Z

    .line 2499
    iput-object p2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->m:Ljava/lang/String;

    .line 2500
    return-void
.end method

.method public setAudioVolume(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2933
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    move-result-object v0

    .line 2935
    if-nez v0, :cond_0

    .line 2936
    const-string v0, "Invalid property ID"

    const-string v1, "setAudioVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2947
    :goto_0
    return-void

    .line 2939
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v1, 0x3fd

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2940
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2941
    const-string v2, "vol"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2942
    const-string v2, "aplayerref"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2943
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2944
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setCustomClose(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1975
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->r:Z

    .line 1976
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_0

    .line 1978
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    .line 1979
    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1980
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->sendMessage(Landroid/os/Message;)Z

    .line 1983
    :cond_0
    return-void
.end method

.method public setExpandPropertiesForInterstitial(ZZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3494
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setCustomClose(Z)V

    .line 3495
    iput-object p3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->v:Ljava/lang/String;

    .line 3496
    iput-boolean p2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u:Z

    .line 3497
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->q:Z

    if-eqz v0, :cond_0

    .line 3498
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o()V

    .line 3502
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isViewable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_1

    .line 3503
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v1, 0x402

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->sendEmptyMessage(I)Z

    .line 3505
    :cond_1
    return-void
.end method

.method public setExpandedActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 955
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->W:Landroid/app/Activity;

    .line 956
    return-void
.end method

.method public setExternalWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0
    .parameter

    .prologue
    .line 3638
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ac:Landroid/webkit/WebViewClient;

    .line 3639
    return-void
.end method

.method public setVideoVolume(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-string v3, "setVideoVolume"

    .line 3316
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    move-result-object v0

    .line 3318
    if-nez v0, :cond_0

    .line 3319
    const-string v0, "Invalid property ID"

    const-string v1, "setVideoVolume"

    invoke-virtual {p0, v0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3333
    :goto_0
    return-void

    .line 3321
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getState()Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->RELEASED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-ne v1, v2, :cond_1

    .line 3322
    const-string v0, "Invalid player state"

    const-string v1, "setVideoVolume"

    invoke-virtual {p0, v0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3326
    :cond_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v2, 0x3f9

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3327
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3328
    const-string v3, "volume"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3329
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3330
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3331
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->sendEmptyMessage(I)Z

    .line 1951
    return-void
.end method

.method public showVideo(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3235
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v1, 0x3f6

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3236
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3237
    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3238
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3239
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->sendMessage(Landroid/os/Message;)Z

    .line 3241
    return-void
.end method

.method public unMuteAudio(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const-string v2, "unmuteAudio"

    .line 2900
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    move-result-object v0

    .line 2902
    if-nez v0, :cond_0

    .line 2903
    const-string v0, "Invalid property ID"

    const-string v1, "unmuteAudio"

    invoke-virtual {p0, v0, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2917
    :goto_0
    return-void

    .line 2905
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getState()Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->RELEASED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-ne v0, v1, :cond_1

    .line 2906
    const-string v0, "Invalid player state"

    const-string v1, "unmuteAudio"

    invoke-virtual {p0, v0, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2910
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v1, 0x3fc

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2911
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2912
    const-string v2, "aplayerref"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2913
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2914
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public unMuteVideo(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const-string v3, "unMuteVideo"

    .line 3263
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    move-result-object v0

    .line 3265
    if-nez v0, :cond_0

    .line 3266
    const-string v0, "Invalid property ID"

    const-string v1, "unMuteVideo"

    invoke-virtual {p0, v0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3279
    :goto_0
    return-void

    .line 3268
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getState()Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->RELEASED:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-eq v1, v2, :cond_1

    .line 3269
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->getState()Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;->INIT:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$playerState;

    if-ne v1, v2, :cond_2

    .line 3270
    :cond_1
    const-string v0, "Invalid player state"

    const-string v1, "unMuteVideo"

    invoke-virtual {p0, v0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3274
    :cond_2
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    const/16 v2, 0x3f8

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3275
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3276
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->G:Lcom/inmobi/androidsdk/ai/container/IMWebView$a;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
