.class public Ldolphin/webkit/WebView;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field private static final ENABLE_CANVAS_ACCELERATED_ON_2_3:Z = true

.field private static final LOGTAG:Ljava/lang/String; = "webview_proxy"

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFakeView:Landroid/view/View;

.field private mGameMode:Z

.field private mPrivateAccess:Ldolphin/webkit/ia;

.field private mProvider:Ldolphin/webkit/WebViewProvider;

.field protected mTitleBar:Landroid/view/View;

.field private viewImpl:Ldolphin/webkit/WebView$IViewImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 673
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldolphin/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 674
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 691
    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Ldolphin/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 692
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 702
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ldolphin/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 703
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    if-nez p1, :cond_0

    .line 740
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid context argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_0
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 743
    iput-boolean p6, p0, Ldolphin/webkit/WebView;->mGameMode:Z

    .line 744
    iput-object p1, p0, Ldolphin/webkit/WebView;->mContext:Landroid/content/Context;

    .line 746
    invoke-static {}, Ldolphin/webkit/WebViewClassic;->ad()V

    .line 747
    invoke-static {}, Ldolphin/webkit/JWebCoreJavaBridge;->a()V

    .line 750
    invoke-direct {p0}, Ldolphin/webkit/WebView;->ensureProviderCreated()V

    .line 751
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p4, p5}, Ldolphin/webkit/WebViewProvider;->init(Ljava/util/Map;Z)V

    .line 755
    new-instance v0, Ldolphin/webkit/ib;

    invoke-direct {v0, p0}, Ldolphin/webkit/ib;-><init>(Ldolphin/webkit/WebView;)V

    iput-object v0, p0, Ldolphin/webkit/WebView;->viewImpl:Ldolphin/webkit/WebView$IViewImpl;

    .line 757
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 7

    .prologue
    .line 716
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Ldolphin/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;ZZ)V

    .line 717
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 681
    const v3, 0x1010085

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, p2

    invoke-direct/range {v0 .. v6}, Ldolphin/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;ZZ)V

    .line 682
    return-void
.end method

.method static synthetic access$000(Ldolphin/webkit/WebView;)Ldolphin/webkit/ia;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;

    return-object v0
.end method

.method static synthetic access$100(Ldolphin/webkit/WebView;)Ldolphin/webkit/WebViewProvider;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    return-object v0
.end method

.method private static checkThread()V
    .locals 3

    .prologue
    .line 2354
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2355
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: A WebView method was called on thread \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "All WebView methods must be called on the UI thread. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Future versions of WebView may not support use on other threads."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 2360
    const-string v1, "webview_proxy"

    invoke-static {v0}, Ldolphin/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    :cond_0
    return-void
.end method

.method public static clearWebkitCache()V
    .locals 1

    .prologue
    .line 2518
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2519
    invoke-static {}, Ldolphin/webkit/WebViewClassic;->ac()V

    .line 2522
    :goto_0
    return-void

    .line 2521
    :cond_0
    invoke-static {}, Ldolphin/webkit/CacheManager;->e()Z

    goto :goto_0
.end method

.method public static disablePlatformNotifications()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 943
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 944
    invoke-static {}, Ldolphin/webkit/WebView;->getFactory()Ldolphin/webkit/ki;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ki;->a()Ldolphin/webkit/kj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldolphin/webkit/kj;->a(Z)V

    .line 945
    return-void
.end method

.method public static enablePlatformNotifications()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 931
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 932
    invoke-static {}, Ldolphin/webkit/WebView;->getFactory()Ldolphin/webkit/ki;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ki;->a()Ldolphin/webkit/kj;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ldolphin/webkit/kj;->a(Z)V

    .line 933
    return-void
.end method

.method private ensureProviderCreated()V
    .locals 3

    .prologue
    .line 2311
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 2312
    iget-object v0, p0, Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;

    if-nez v0, :cond_0

    .line 2314
    iget-boolean v0, p0, Ldolphin/webkit/WebView;->mGameMode:Z

    if-eqz v0, :cond_2

    .line 2315
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 2316
    new-instance v0, Ldolphin/webkit/WebViewImpl;

    iget-object v1, p0, Ldolphin/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Ldolphin/webkit/WebViewImpl;-><init>(Landroid/content/Context;Ldolphin/webkit/WebView;)V

    .line 2317
    invoke-virtual {v0}, Ldolphin/webkit/WebViewImpl;->getPrivateAccess()Ldolphin/webkit/ia;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;

    .line 2318
    sget-object v0, Ldolphin/webkit/WebViewProvider$GameModeStatus;->AUTO_GAME_MODE:Ldolphin/webkit/WebViewProvider$GameModeStatus;

    .line 2340
    :goto_0
    invoke-static {}, Ldolphin/webkit/WebView;->getFactory()Ldolphin/webkit/ki;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;

    invoke-interface {v1, p0, v2}, Ldolphin/webkit/ki;->a(Ldolphin/webkit/WebView;Ldolphin/webkit/ia;)Ldolphin/webkit/WebViewProvider;

    move-result-object v1

    iput-object v1, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    .line 2341
    iget-object v1, p0, Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;

    iget-object v2, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v1, v2}, Ldolphin/webkit/ia;->a(Ldolphin/webkit/WebViewProvider;)V

    .line 2342
    iget-object v1, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v1, v0}, Ldolphin/webkit/WebViewProvider;->setGameModeStatus(Ldolphin/webkit/WebViewProvider$GameModeStatus;)V

    .line 2344
    :cond_0
    return-void

    .line 2320
    :cond_1
    new-instance v0, Ldolphin/webkit/GLWebView;

    iget-object v1, p0, Ldolphin/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Ldolphin/webkit/GLWebView;-><init>(Landroid/content/Context;Ldolphin/webkit/WebView;)V

    .line 2321
    invoke-virtual {v0}, Ldolphin/webkit/GLWebView;->getPrivateAccess()Ldolphin/webkit/ia;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;

    .line 2322
    sget-object v0, Ldolphin/webkit/WebViewProvider$GameModeStatus;->NONE_GAME_MODE:Ldolphin/webkit/WebViewProvider$GameModeStatus;

    .line 2323
    new-instance v1, Ldolphin/webkit/hz;

    iget-object v2, p0, Ldolphin/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Ldolphin/webkit/hz;-><init>(Ldolphin/webkit/WebView;Landroid/content/Context;)V

    iput-object v1, p0, Ldolphin/webkit/WebView;->mFakeView:Landroid/view/View;

    goto :goto_0

    .line 2333
    :cond_2
    new-instance v0, Ldolphin/webkit/WebViewImpl;

    iget-object v1, p0, Ldolphin/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Ldolphin/webkit/WebViewImpl;-><init>(Landroid/content/Context;Ldolphin/webkit/WebView;)V

    .line 2334
    invoke-virtual {v0}, Ldolphin/webkit/WebViewImpl;->getPrivateAccess()Ldolphin/webkit/ia;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;

    .line 2335
    sget-object v0, Ldolphin/webkit/WebViewProvider$GameModeStatus;->POTENTIAL_GAME_MODE:Ldolphin/webkit/WebViewProvider$GameModeStatus;

    goto :goto_0
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1668
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1669
    invoke-static {}, Ldolphin/webkit/WebView;->getFactory()Ldolphin/webkit/ki;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ki;->a()Ldolphin/webkit/kj;

    move-result-object v0

    invoke-interface {v0, p0}, Ldolphin/webkit/kj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 2526
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2527
    check-cast p0, Landroid/app/Activity;

    .line 2535
    :goto_0
    return-object p0

    .line 2529
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 2530
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 2531
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 2532
    check-cast v0, Landroid/app/Activity;

    move-object p0, v0

    goto :goto_0

    .line 2535
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized getFactory()Ldolphin/webkit/ki;
    .locals 2

    .prologue
    .line 2349
    const-class v1, Ldolphin/webkit/WebView;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 2350
    invoke-static {}, Ldolphin/webkit/kh;->a()Ldolphin/webkit/ki;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2349
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPluginList()Ldolphin/webkit/ft;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1831
    const-class v1, Ldolphin/webkit/WebView;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1832
    new-instance v0, Ldolphin/webkit/ft;

    invoke-direct {v0}, Ldolphin/webkit/ft;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1831
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isHardwareAccelerated(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2395
    sget-boolean v1, Ldolphin/webkit/VersionInfo;->IS_ICS:Z

    if-nez v1, :cond_1

    .line 2404
    :cond_0
    :goto_0
    return v0

    .line 2399
    :cond_1
    sget-boolean v1, Ldolphin/webkit/VersionInfo;->IS_JB_MR1:Z

    if-eqz v1, :cond_3

    .line 2400
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-gtz v1, :cond_2

    const-string v1, "persist.sys.ui.hw"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 2404
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->isHardwareAccelerated()Z

    move-result v0

    goto :goto_0
.end method

.method public static isHardwareAccelerated(Landroid/graphics/Canvas;)Z
    .locals 2

    .prologue
    .line 2378
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 2379
    const/4 v0, 0x0

    .line 2382
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    goto :goto_0
.end method

.method public static isHardwareAccelerated(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2386
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 2390
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v2

    if-eq v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static startActionMode(Ldolphin/webkit/b;)Ldolphin/webkit/a;
    .locals 1

    .prologue
    .line 2372
    new-instance v0, Ldolphin/webkit/a;

    invoke-direct {v0}, Ldolphin/webkit/a;-><init>()V

    .line 2373
    invoke-virtual {v0, p0}, Ldolphin/webkit/a;->a(Ldolphin/webkit/b;)V

    .line 2374
    return-object v0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1794
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1795
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/WebViewProvider;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1796
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 1178
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1179
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1

    .prologue
    .line 1216
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1217
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->canGoBackOrForward(I)Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 1196
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1197
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public canZoomIn()Z
    .locals 1

    .prologue
    .line 1919
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1920
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->canZoomIn()Z

    move-result v0

    return v0
.end method

.method public canZoomOut()Z
    .locals 1

    .prologue
    .line 1929
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1930
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->canZoomOut()Z

    move-result v0

    return v0
.end method

.method public captureBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Ldolphin/webkit/WebViewProvider;->captureBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 1282
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1283
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public clearCache(Z)V
    .locals 1

    .prologue
    .line 1528
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1529
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->clearCache(Z)V

    .line 1530
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 1537
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1538
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->clearFormData()V

    .line 1539
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 1545
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1546
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->clearHistory()V

    .line 1547
    return-void
.end method

.method public clearMatches()V
    .locals 1

    .prologue
    .line 1677
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1678
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->clearMatches()V

    .line 1679
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .prologue
    .line 1554
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1555
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->clearSslPreferences()V

    .line 1556
    return-void
.end method

.method public clearView()V
    .locals 1

    .prologue
    .line 1268
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1269
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->clearView()V

    .line 1270
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 2509
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getScrollDelegate()Ldolphin/webkit/ku;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/ku;->x()I

    move-result v0

    return v0
.end method

.method public contentToViewX(I)I
    .locals 1

    .prologue
    .line 2051
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->getProvider()Ldolphin/webkit/WebViewProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->contentToViewX(I)I

    move-result v0

    return v0
.end method

.method public contentToViewY(I)I
    .locals 1

    .prologue
    .line 2055
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->getProvider()Ldolphin/webkit/WebViewProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->contentToViewY(I)I

    move-result v0

    return v0
.end method

.method public copyBackForwardList()Ldolphin/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 1567
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1568
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->copyBackForwardList()Ldolphin/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public copySelection()Z
    .locals 1

    .prologue
    .line 2420
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->copySelection()Z

    move-result v0

    return v0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 1

    .prologue
    .line 2480
    iget-object v0, p0, Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;

    invoke-interface {v0, p1}, Ldolphin/webkit/ia;->a(Landroid/view/ContextMenu;)V

    .line 2481
    return-void
.end method

.method public debugDump()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2095
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 2096
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->debugDump()V

    .line 2097
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 919
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 920
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->destroy()V

    .line 921
    return-void
.end method

.method public dismissZoomControl()V
    .locals 1

    .prologue
    .line 1960
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1961
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->getProvider()Ldolphin/webkit/WebViewProvider;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->dismissZoomControl()V

    .line 1962
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 2015
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 2444
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->documentAsText(Landroid/os/Message;)V

    .line 2445
    return-void
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1689
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1690
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->documentHasImages(Landroid/os/Message;)V

    .line 1691
    return-void
.end method

.method public emulateShiftHeld()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1852
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1853
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->emulateShiftHeld()V

    .line 1854
    return-void
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1610
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1611
    const-string v0, "webview_proxy"

    const-string v1, "findAll blocks UI: prefer findAllAsync"

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->findAll(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1625
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1626
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->findAllAsync(Ljava/lang/String;)V

    .line 1627
    return-void
.end method

.method public findNext(Z)V
    .locals 1

    .prologue
    .line 1595
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1596
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->findNext(Z)V

    .line 1597
    return-void
.end method

.method public flingScroll(II)V
    .locals 1

    .prologue
    .line 1891
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1892
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/WebViewProvider;->flingScroll(II)V

    .line 1893
    return-void
.end method

.method public freeMemory()V
    .locals 1

    .prologue
    .line 1517
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1518
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->freeMemory()V

    .line 1519
    return-void
.end method

.method public gameModeDetectAlertDialogCallback(Z)V
    .locals 1

    .prologue
    .line 2513
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->gameModeDetectAlertDialogCallback(Z)V

    .line 2514
    return-void
.end method

.method public getActivityContext()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 2539
    iget-object v0, p0, Ldolphin/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/webkit/WebView;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapByUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->getBitmapByUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 820
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 821
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 1449
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1450
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 1460
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Ldolphin/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 2488
    iget-object v0, p0, Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;

    invoke-interface {v0}, Ldolphin/webkit/ia;->h()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1418
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1419
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 2039
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHitTestResult()Ldolphin/webkit/WebView$HitTestResult;
    .locals 1

    .prologue
    .line 1340
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1341
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getHitTestResult()Ldolphin/webkit/WebView$HitTestResult;

    move-result-object v0

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 909
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 910
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/WebViewProvider;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIViewImpl()Ldolphin/webkit/WebView$IViewImpl;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Ldolphin/webkit/WebView;->viewImpl:Ldolphin/webkit/WebView$IViewImpl;

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1396
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1397
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPerformanceCounter(I)J
    .locals 2

    .prologue
    .line 842
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->getPerformanceCounter(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 1439
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1440
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getProgress()I

    move-result v0

    return v0
.end method

.method public getProvider()Ldolphin/webkit/WebViewProvider;
    .locals 1

    .prologue
    .line 2452
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 1292
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1293
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getScale()F

    move-result v0

    return v0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 2027
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 2031
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getSettings()Ldolphin/webkit/WebSettings;
    .locals 1

    .prologue
    .line 1818
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1819
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getSettings()Ldolphin/webkit/WebSettings;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1407
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1408
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 2472
    iget-object v0, p0, Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;

    invoke-interface {v0}, Ldolphin/webkit/ia;->g()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTitleHeight()I
    .locals 1

    .prologue
    .line 2476
    iget-object v0, p0, Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;

    invoke-interface {v0}, Ldolphin/webkit/ia;->i()I

    move-result v0

    return v0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTranscodedContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2086
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 2087
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getTranscodedContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1382
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1383
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 1979
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->getProvider()Ldolphin/webkit/WebViewProvider;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewHeight()I

    move-result v0

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 2023
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->getProvider()Ldolphin/webkit/WebViewProvider;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewWidth()I

    move-result v0

    return v0
.end method

.method public getVisibleTitleHeight()I
    .locals 1

    .prologue
    .line 809
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 810
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getVisibleTitleHeight()I

    move-result v0

    return v0
.end method

.method public getWebBackForwardListClient()Ldolphin/webkit/WebBackForwardListClient;
    .locals 1

    .prologue
    .line 1760
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1761
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getWebBackForwardListClient()Ldolphin/webkit/WebBackForwardListClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewCore()Ldolphin/webkit/WebViewCore;
    .locals 1

    .prologue
    .line 2548
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    instance-of v0, v0, Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 2549
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->Y()Ldolphin/webkit/WebViewCore;

    move-result-object v0

    .line 2551
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWebViewProvider()Ldolphin/webkit/WebViewProvider;
    .locals 1

    .prologue
    .line 2111
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 2035
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1909
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1910
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getZoomControls()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 1186
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1187
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->goBack()V

    .line 1188
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1

    .prologue
    .line 1229
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1230
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->goBackOrForward(I)V

    .line 1231
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 1204
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1205
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->goForward()V

    .line 1206
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 1317
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1318
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->invokeZoomPicker()V

    .line 1319
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 1237
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1238
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->isPrivateBrowsingEnabled()Z

    move-result v0

    return v0
.end method

.method public isSelectingText()Z
    .locals 1

    .prologue
    .line 2433
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->isSelectingText()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1096
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1097
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Ldolphin/webkit/WebViewProvider;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1125
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1126
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Ldolphin/webkit/WebViewProvider;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1051
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1052
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->loadUrl(Ljava/lang/String;)V

    .line 1053
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
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
    .line 1041
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1042
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/WebViewProvider;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 1043
    return-void
.end method

.method protected nativeDrawGL(IIILandroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 2071
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->getProvider()Ldolphin/webkit/WebViewProvider;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->callNativeDrawGL(IIILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public notifyFindDialogDismissed()V
    .locals 1

    .prologue
    .line 2440
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->notifyFindDialogDismissed()V

    .line 2441
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1863
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1872
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1

    .prologue
    .line 2492
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 2493
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 1965
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1966
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->getProvider()Ldolphin/webkit/WebViewProvider;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->getViewDelegate()Ldolphin/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider$ViewDelegate;->onDraw(Landroid/graphics/Canvas;)V

    .line 1967
    return-void
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1882
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 2007
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 2011
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    .prologue
    .line 2502
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1490
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1491
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->onPause()V

    .line 1492
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1498
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1499
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->onResume()V

    .line 1500
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .prologue
    .line 2506
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2496
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1970
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1971
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 2059
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2060
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 789
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 790
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 799
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 800
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->overlayVerticalScrollbar()Z

    move-result v0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1

    .prologue
    .line 1259
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1260
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->pageDown(Z)Z

    move-result v0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1

    .prologue
    .line 1248
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1249
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->pageUp(Z)Z

    move-result v0

    return v0
.end method

.method public pauseTimers()V
    .locals 1

    .prologue
    .line 1469
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1470
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->pauseTimers()V

    .line 1471
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 1064
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1065
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/WebViewProvider;->postUrl(Ljava/lang/String;[B)V

    .line 1066
    return-void
.end method

.method public refreshPlugins(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1841
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1842
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 1168
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1169
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->reload()V

    .line 1170
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1806
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1807
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1808
    return-void
.end method

.method public requestCurrentPageInformation(Ldolphin/webkit/WebView$GetPageInformationResultCallback;)Z
    .locals 1

    .prologue
    .line 2559
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    instance-of v0, v0, Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 2560
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebView$GetPageInformationResultCallback;)Z

    move-result v0

    .line 2563
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestFocus()Z
    .locals 1

    .prologue
    .line 2019
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1358
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1359
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 1360
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1370
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1371
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->requestImageRef(Landroid/os/Message;)V

    .line 1372
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1005
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1006
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/WebViewProvider;->restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/os/Bundle;)Ldolphin/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 1025
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1026
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->restoreState(Landroid/os/Bundle;)Ldolphin/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public resumeTimers()V
    .locals 1

    .prologue
    .line 1478
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1479
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->resumeTimers()V

    .line 1480
    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 880
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 881
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Ldolphin/webkit/WebViewProvider;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 989
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 990
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/WebViewProvider;->savePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)Ldolphin/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 974
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 975
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->saveState(Landroid/os/Bundle;)Ldolphin/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1135
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1136
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->saveWebArchive(Ljava/lang/String;)V

    .line 1137
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLdolphin/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ldolphin/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1152
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1153
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Ldolphin/webkit/WebViewProvider;->saveWebArchive(Ljava/lang/String;ZLdolphin/webkit/ValueCallback;)V

    .line 1154
    return-void
.end method

.method public scrollTo(II)V
    .locals 1

    .prologue
    .line 2067
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 2068
    return-void
.end method

.method public selectText()Z
    .locals 1

    .prologue
    .line 2429
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->selectText()Z

    move-result v0

    return v0
.end method

.method public selectionDone()V
    .locals 1

    .prologue
    .line 2411
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->selectionDone()V

    .line 2412
    return-void
.end method

.method public setBackForwardAnimation(ZZLandroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 2596
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    instance-of v0, v0, Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 2597
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, p1, p2, p3}, Ldolphin/webkit/WebViewClassic;->a(ZZLandroid/view/animation/Animation;)V

    .line 2599
    :cond_0
    return-void
.end method

.method public setBackForwardAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1

    .prologue
    .line 2610
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    instance-of v0, v0, Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 2611
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebViewClassic;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2613
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 1975
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1976
    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1

    .prologue
    .line 828
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 829
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->setCertificate(Landroid/net/http/SslCertificate;)V

    .line 830
    return-void
.end method

.method public setDownloadListener(Ldolphin/webkit/DownloadListener;)V
    .locals 1

    .prologue
    .line 1712
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1713
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->setDownloadListener(Ldolphin/webkit/DownloadListener;)V

    .line 1714
    return-void
.end method

.method public setEmbeddedTitleBar(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2467
    iget-object v0, p0, Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;

    invoke-interface {v0, p1}, Ldolphin/webkit/ia;->d(Landroid/view/View;)V

    .line 2468
    iput-object p1, p0, Ldolphin/webkit/WebView;->mTitleBar:Landroid/view/View;

    .line 2469
    return-void
.end method

.method public setFindIsUp(Z)V
    .locals 1

    .prologue
    .line 1999
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->getProvider()Ldolphin/webkit/WebViewProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->setFindIsUp(Z)V

    .line 2000
    return-void
.end method

.method public setFindListener(Ldolphin/webkit/WebView$FindListener;)V
    .locals 1

    .prologue
    .line 1579
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1580
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->setFindListener(Ldolphin/webkit/WebView$FindListener;)V

    .line 1581
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 1

    .prologue
    .line 769
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 770
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->setHorizontalScrollbarOverlay(Z)V

    .line 771
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 895
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 896
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Ldolphin/webkit/WebViewProvider;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1

    .prologue
    .line 1307
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1308
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->setInitialScale(I)V

    .line 1309
    return-void
.end method

.method public setJsFlags(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1991
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->getProvider()Ldolphin/webkit/WebViewProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->setJsFlags(Ljava/lang/String;)V

    .line 1992
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 2003
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2004
    return-void
.end method

.method public setLoadFaildViewInterface(Ldolphin/net/load/ILoadViewInterface;)V
    .locals 1

    .prologue
    .line 2638
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    instance-of v0, v0, Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 2639
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebViewClassic;->b(Ldolphin/net/load/ILoadViewInterface;)V

    .line 2641
    :cond_0
    return-void
.end method

.method public setLoadingViewInterface(Ldolphin/net/load/ILoadViewInterface;)V
    .locals 1

    .prologue
    .line 2632
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    instance-of v0, v0, Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 2633
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/net/load/ILoadViewInterface;)V

    .line 2635
    :cond_0
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 1

    .prologue
    .line 1885
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1886
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->setMapTrackballToArrowKeys(Z)V

    .line 1887
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1

    .prologue
    .line 955
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 956
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->setNetworkAvailable(Z)V

    .line 957
    return-void
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1995
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->getProvider()Ldolphin/webkit/WebViewProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/WebViewProvider;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1

    .prologue
    .line 2484
    iget-object v0, p0, Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;

    invoke-interface {v0, p1}, Ldolphin/webkit/ia;->a(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 2485
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .prologue
    .line 2063
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 2064
    return-void
.end method

.method public setPictureListener(Ldolphin/webkit/WebView$PictureListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1747
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1748
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->setPictureListener(Ldolphin/webkit/WebView$PictureListener;)V

    .line 1749
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    .prologue
    .line 1983
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 1984
    return-void
.end method

.method public setScrollbarFadingEnabled(Z)V
    .locals 1

    .prologue
    .line 1987
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    .line 1988
    return-void
.end method

.method public setTranscodedContent(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 2081
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 2082
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->setTranscodedContent(Ljava/lang/Object;)V

    .line 2083
    return-void
.end method

.method public setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2555
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Ldolphin/webkit/WebViewProvider;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2556
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1

    .prologue
    .line 779
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 780
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->setVerticalScrollbarOverlay(Z)V

    .line 781
    return-void
.end method

.method public setWebBackForwardListClient(Ldolphin/webkit/WebBackForwardListClient;)V
    .locals 1

    .prologue
    .line 1752
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1753
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->setWebBackForwardListClient(Ldolphin/webkit/WebBackForwardListClient;)V

    .line 1754
    return-void
.end method

.method public setWebChromeClient(Ldolphin/webkit/WebChromeClient;)V
    .locals 1

    .prologue
    .line 1724
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1725
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->setWebChromeClient(Ldolphin/webkit/WebChromeClient;)V

    .line 1726
    return-void
.end method

.method public setWebContentClient(Ldolphin/webkit/WebContentClient;)V
    .locals 1

    .prologue
    .line 1735
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1736
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->setWebContentClient(Ldolphin/webkit/WebContentClient;)V

    .line 1737
    return-void
.end method

.method public setWebViewClient(Ldolphin/webkit/WebViewClient;)V
    .locals 1

    .prologue
    .line 1700
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1701
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->setWebViewClient(Ldolphin/webkit/WebViewClient;)V

    .line 1702
    return-void
.end method

.method public showBackForwardAnimationFrame(I)V
    .locals 1

    .prologue
    .line 2623
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    instance-of v0, v0, Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 2624
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebViewClassic;->e(I)V

    .line 2626
    :cond_0
    return-void
.end method

.method public showFindDialog(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 1641
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1642
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Ldolphin/webkit/WebViewProvider;->showFindDialog(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public showLoadView(ZZ)V
    .locals 1

    .prologue
    .line 2644
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    instance-of v0, v0, Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 2645
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/WebViewClassic;->a(ZZ)V

    .line 2647
    :cond_0
    return-void
.end method

.method public startBackgroundUrl(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2575
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    instance-of v0, v0, Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 2576
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebViewClassic;->f(Ljava/lang/String;)Z

    move-result v0

    .line 2579
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startPrereadUrl(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2567
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    instance-of v0, v0, Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 2568
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebViewClassic;->e(Ljava/lang/String;)Z

    move-result v0

    .line 2571
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 1160
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1161
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->stopLoading()V

    .line 1162
    return-void
.end method

.method public view()Landroid/view/View;
    .locals 1

    .prologue
    .line 2456
    iget-object v0, p0, Ldolphin/webkit/WebView;->mFakeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2457
    iget-object v0, p0, Ldolphin/webkit/WebView;->mFakeView:Landroid/view/View;

    .line 2459
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;

    invoke-interface {v0}, Ldolphin/webkit/ia;->f()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public viewImpl()Landroid/view/View;
    .locals 1

    .prologue
    .line 2463
    iget-object v0, p0, Ldolphin/webkit/WebView;->mPrivateAccess:Ldolphin/webkit/ia;

    invoke-interface {v0}, Ldolphin/webkit/ia;->f()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public viewToContentX(I)I
    .locals 1

    .prologue
    .line 2043
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->getProvider()Ldolphin/webkit/WebViewProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->viewToContentX(I)I

    move-result v0

    return v0
.end method

.method public viewToContentY(I)I
    .locals 1

    .prologue
    .line 2047
    invoke-virtual {p0}, Ldolphin/webkit/WebView;->getProvider()Ldolphin/webkit/WebViewProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/WebViewProvider;->viewToContentY(I)I

    move-result v0

    return v0
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 1939
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1940
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 1949
    invoke-static {}, Ldolphin/webkit/WebView;->checkThread()V

    .line 1950
    iget-object v0, p0, Ldolphin/webkit/WebView;->mProvider:Ldolphin/webkit/WebViewProvider;

    invoke-interface {v0}, Ldolphin/webkit/WebViewProvider;->zoomOut()Z

    move-result v0

    return v0
.end method
