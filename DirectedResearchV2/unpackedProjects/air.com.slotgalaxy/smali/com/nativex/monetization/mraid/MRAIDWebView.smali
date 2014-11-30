.class public Lcom/nativex/monetization/mraid/MRAIDWebView;
.super Landroid/webkit/WebView;
.source "MRAIDWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;,
        Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebChromeClient;
    }
.end annotation


# static fields
.field private static final FILE_PATH_MRAID_CONTROLLER:Ljava/lang/String; = "nativeXMraidController"

.field private static final FILE_PATH_SIZE_SCRIPT:Ljava/lang/String; = "nativeXSizeScript"

.field static final MODAL_BACKGROUND:I

.field public static forceHardware:Ljava/lang/Boolean;

.field private static mraidController:Ljava/lang/String;

.field private static sizeScript:Ljava/lang/String;


# instance fields
.field private adIsMRAID:Z

.field private adLoaded:Z

.field private adReleased:Z

.field private callsHandled:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private container:Lcom/nativex/monetization/mraid/MRAIDContainer;

.field private downloadedData:Ljava/lang/String;

.field private initialLayerType:I

.field private mraidLoaded:Z

.field private schemeHandler:Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 75
    const/16 v0, 0x80

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/nativex/monetization/mraid/MRAIDWebView;->MODAL_BACKGROUND:I

    .line 139
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDWebView;->forceHardware:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 74
    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->mraidLoaded:Z

    .line 80
    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->adReleased:Z

    .line 81
    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->adLoaded:Z

    .line 82
    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->adIsMRAID:Z

    .line 100
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->init(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->mraidLoaded:Z

    .line 80
    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->adReleased:Z

    .line 81
    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->adLoaded:Z

    .line 82
    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->adIsMRAID:Z

    .line 95
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->init(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->mraidLoaded:Z

    .line 80
    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->adReleased:Z

    .line 81
    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->adLoaded:Z

    .line 82
    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->adIsMRAID:Z

    .line 90
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->init(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method static synthetic access$200(Lcom/nativex/monetization/mraid/MRAIDWebView;)Lcom/nativex/monetization/mraid/MRAIDContainer;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWebView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nativex/monetization/mraid/MRAIDWebView;)Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWebView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->schemeHandler:Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nativex/monetization/mraid/MRAIDWebView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWebView;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->callsHandled:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nativex/monetization/mraid/MRAIDWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWebView;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->adIsMRAID:Z

    return v0
.end method

.method static synthetic access$600(Lcom/nativex/monetization/mraid/MRAIDWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWebView;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->adReleased:Z

    return v0
.end method

.method static synthetic access$700(Lcom/nativex/monetization/mraid/MRAIDWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWebView;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->loadAdFailed()V

    return-void
.end method

.method static synthetic access$800(Lcom/nativex/monetization/mraid/MRAIDWebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->handleLoadAdFailure(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/nativex/monetization/mraid/MRAIDWebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->loadAdData(Ljava/lang/String;)V

    return-void
.end method

.method private handleLoadAdFailure(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloading ad failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 528
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->loadAdFailed()V

    .line 529
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->ERROR:Lcom/nativex/monetization/enums/AdEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while downloading the ad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 107
    .local v0, "settings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 108
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 109
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 110
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 111
    const-string v1, "Apache-HttpClient/UNAVAILABLE (java 1.4)"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 113
    new-instance v1, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;

    invoke-direct {v1, p0, v3}, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;-><init>(Lcom/nativex/monetization/mraid/MRAIDWebView;Lcom/nativex/monetization/mraid/MRAIDWebView$1;)V

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 114
    new-instance v1, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebChromeClient;

    invoke-direct {v1, p0, v3}, Lcom/nativex/monetization/mraid/MRAIDWebView$MRAIDWebChromeClient;-><init>(Lcom/nativex/monetization/mraid/MRAIDWebView;Lcom/nativex/monetization/mraid/MRAIDWebView$1;)V

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 115
    invoke-virtual {p0, v2}, Lcom/nativex/monetization/mraid/MRAIDWebView;->setScrollBarStyle(I)V

    .line 116
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getInitialLayerType()I

    move-result v1

    iput v1, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->initialLayerType:I

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->callsHandled:Ljava/util/List;

    .line 120
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->makeTransparent()V

    .line 121
    return-void
.end method

.method private loadAdData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 566
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDWebView;->mraidController:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 567
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->loadMraidController()V

    .line 569
    :cond_0
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDWebView;->sizeScript:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 570
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->loadSizeScript()V

    .line 572
    :cond_1
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->downloadedData:Ljava/lang/String;

    .line 573
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->sendLoadDataMessage(Lcom/nativex/monetization/mraid/MRAIDWebView;)V

    .line 574
    return-void
.end method

.method private loadAdFailed()V
    .locals 4

    .prologue
    .line 533
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->isSecondPartWebView(Lcom/nativex/monetization/mraid/MRAIDWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->resetMRAID()V

    .line 536
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->close()V

    .line 537
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    const-string v1, "Expand failed."

    const/4 v2, 0x0

    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->EXPAND:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 544
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseAd(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    goto :goto_0

    .line 542
    :cond_1
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->release()V

    goto :goto_0
.end method

.method private loadMraidController()V
    .locals 4

    .prologue
    .line 548
    :try_start_0
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "nativeXMraidController"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 549
    .local v1, "stream":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/nativex/common/Utilities;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/nativex/monetization/mraid/MRAIDWebView;->mraidController:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    .end local v1    # "stream":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 550
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 551
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "MRAIDContainer: Exception while loading mraid controller from assets"

    invoke-static {v2, v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private loadSizeScript()V
    .locals 4

    .prologue
    .line 557
    :try_start_0
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "nativeXSizeScript"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 558
    .local v1, "stream":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/nativex/common/Utilities;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/nativex/monetization/mraid/MRAIDWebView;->sizeScript:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    .end local v1    # "stream":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 560
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "MRAIDContainer: Exception while loading mraid controller from assets"

    invoke-static {v2, v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private loadSizeScriptData(Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "htmlData"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v4, -0x1

    const-string v6, "</script></head>"

    .line 665
    if-nez p1, :cond_0

    .line 685
    :goto_0
    return-void

    .line 668
    :cond_0
    const-string v3, "<html"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 669
    .local v2, "indexOfHtml":I
    if-le v2, v4, :cond_2

    .line 670
    const-string v3, "<head"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 671
    .local v1, "indexOfHead":I
    if-le v1, v4, :cond_1

    .line 673
    const-string v3, "</head>"

    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 674
    .local v0, "bracketIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<script>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDWebView;->sizeScript:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</script>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 677
    .end local v0    # "bracketIndex":I
    :cond_1
    const-string v3, ">"

    invoke-virtual {p1, v3, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 678
    .restart local v0    # "bracketIndex":I
    add-int/lit8 v3, v0, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<head><script>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/nativex/monetization/mraid/MRAIDWebView;->sizeScript:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</script></head>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 682
    .end local v0    # "bracketIndex":I
    .end local v1    # "indexOfHead":I
    :cond_2
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<html><head><script>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/nativex/monetization/mraid/MRAIDWebView;->sizeScript:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</script></head>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const-string v3, "</html>"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private makeTransparent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->setBackgroundColor(I)V

    .line 169
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 170
    .local v0, "transparentDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    return-void
.end method

.method private printHtml(Ljava/lang/String;)V
    .locals 4
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 578
    const/4 v0, 0x0

    .line 580
    .local v0, "scanner":Ljava/util/Scanner;
    :try_start_0
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    .end local v0    # "scanner":Ljava/util/Scanner;
    .local v1, "scanner":Ljava/util/Scanner;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 582
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 584
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 588
    .end local v1    # "scanner":Ljava/util/Scanner;
    .restart local v0    # "scanner":Ljava/util/Scanner;
    :goto_1
    if-eqz v0, :cond_0

    .line 589
    :try_start_2
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 595
    :cond_0
    :goto_2
    return-void

    .line 588
    .end local v0    # "scanner":Ljava/util/Scanner;
    .restart local v1    # "scanner":Ljava/util/Scanner;
    :cond_1
    if-eqz v1, :cond_2

    .line 589
    :try_start_3
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    move-object v0, v1

    .line 593
    .end local v1    # "scanner":Ljava/util/Scanner;
    .restart local v0    # "scanner":Ljava/util/Scanner;
    goto :goto_2

    .line 591
    .end local v0    # "scanner":Ljava/util/Scanner;
    .restart local v1    # "scanner":Ljava/util/Scanner;
    :catch_1
    move-exception v2

    move-object v0, v1

    .line 594
    .end local v1    # "scanner":Ljava/util/Scanner;
    .restart local v0    # "scanner":Ljava/util/Scanner;
    goto :goto_2

    .line 587
    :catchall_0
    move-exception v2

    .line 588
    :goto_3
    if-eqz v0, :cond_3

    .line 589
    :try_start_4
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 593
    :cond_3
    :goto_4
    throw v2

    .line 591
    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v3

    goto :goto_4

    .line 587
    .end local v0    # "scanner":Ljava/util/Scanner;
    .restart local v1    # "scanner":Ljava/util/Scanner;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "scanner":Ljava/util/Scanner;
    .restart local v0    # "scanner":Ljava/util/Scanner;
    goto :goto_3

    .line 584
    :catch_4
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    return-object v0
.end method

.method public getInitialLayerType()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 125
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getLayerType"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 126
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 127
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/nativex/monetization/mraid/MRAIDWebView;
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 131
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v1

    .line 128
    :catch_0
    move-exception v1

    move v1, v4

    .line 131
    goto :goto_0
.end method

.method isAdLoaded()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->adLoaded:Z

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 180
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDWebView;->forceHardware:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 181
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDWebView;->forceHardware:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 192
    .end local p0    # "this":Lcom/nativex/monetization/mraid/MRAIDWebView;
    :goto_0
    return v1

    .line 184
    .restart local p0    # "this":Lcom/nativex/monetization/mraid/MRAIDWebView;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isHardwareAccelerated"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Paint;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 187
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 188
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/nativex/monetization/mraid/MRAIDWebView;
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 189
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    move v1, v6

    .line 192
    goto :goto_0
.end method

.method loadAd(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->url:Ljava/lang/String;

    .line 385
    invoke-static {}, Lcom/nativex/monetization/communication/ServerRequestManager;->getInstance()Lcom/nativex/monetization/communication/ServerRequestManager;

    move-result-object v0

    new-instance v1, Lcom/nativex/monetization/mraid/MRAIDWebView$1;

    invoke-direct {v1, p0}, Lcom/nativex/monetization/mraid/MRAIDWebView$1;-><init>(Lcom/nativex/monetization/mraid/MRAIDWebView;)V

    invoke-virtual {v0, p1, v1}, Lcom/nativex/monetization/communication/ServerRequestManager;->getRichMedia(Ljava/lang/String;Lcom/nativex/monetization/listeners/onRichMediaDownloadedListener;)V

    .line 485
    return-void
.end method

.method protected declared-synchronized loadDownloadedData()V
    .locals 13

    .prologue
    const-string v0, "text/html"

    const-string v0, "mraid.js"

    const-string v0, "UTF-8"

    const-string v0, "Error while downloading the ad"

    .line 600
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->downloadedData:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->isSecondPartWebView(Lcom/nativex/monetization/mraid/MRAIDWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->ERROR:Lcom/nativex/monetization/enums/AdEvent;

    const-string v2, "Error while downloading the ad"

    invoke-virtual {v0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 606
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->adReleased:Z

    if-eqz v0, :cond_2

    .line 609
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->ERROR:Lcom/nativex/monetization/enums/AdEvent;

    const-string v2, "Ad was released before the content was loaded."

    invoke-virtual {v0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 656
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 657
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "Failed to load ad"

    invoke-static {v0, v7}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 658
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->loadAdFailed()V

    .line 659
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    sget-object v1, Lcom/nativex/monetization/enums/AdEvent;->ERROR:Lcom/nativex/monetization/enums/AdEvent;

    const-string v2, "Error while downloading the ad"

    invoke-virtual {v0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 600
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 613
    :cond_2
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->downloadedData:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 614
    .local v8, "mraidLoadedData":Ljava/lang/StringBuilder;
    const-string v0, "<video"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    .line 616
    const-string v0, "MRAID has no video. Turning hardware acceleration off"

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->i(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->setSoftwareLayerType()V

    .line 620
    :cond_3
    const-string v12, "mraid.js"

    .line 621
    .local v12, "searchString":Ljava/lang/String;
    const-string v0, "mraid.js"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 622
    .local v9, "mraidPosition":I
    :goto_1
    const/4 v0, -0x1

    if-le v9, v0, :cond_4

    .line 624
    const-string v0, ">"

    invoke-virtual {v8, v0, v9}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v6

    .line 625
    .local v6, "closeBrackedPosition":I
    const-string v0, "<script "

    invoke-virtual {v8, v0, v9}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v11

    .line 627
    .local v11, "scriptTagPosition":I
    if-ge v6, v11, :cond_7

    .line 630
    const-string v0, "</script>"

    invoke-virtual {v8, v0, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 631
    .local v10, "scriptTagClosePosition":I
    invoke-virtual {v8, v11, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDWebView;->mraidController:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDWebView;->sizeScript:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->adIsMRAID:Z

    .line 641
    .end local v6    # "closeBrackedPosition":I
    .end local v10    # "scriptTagClosePosition":I
    .end local v11    # "scriptTagPosition":I
    :cond_4
    iget-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->adIsMRAID:Z

    if-nez v0, :cond_6

    .line 643
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0, p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->isSecondPartWebView(Lcom/nativex/monetization/mraid/MRAIDWebView;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 644
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->trackClick(Ljava/lang/String;)V

    .line 647
    :cond_5
    invoke-direct {p0, v8}, Lcom/nativex/monetization/mraid/MRAIDWebView;->loadSizeScriptData(Ljava/lang/StringBuilder;)V

    .line 651
    :cond_6
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->url:Ljava/lang/String;

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 652
    const/4 v1, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nativex/monetization/mraid/MRAIDWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 639
    .restart local v6    # "closeBrackedPosition":I
    .restart local v11    # "scriptTagPosition":I
    :cond_7
    const-string v0, "mraid.js"

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 640
    goto :goto_1

    .line 654
    .end local v6    # "closeBrackedPosition":I
    .end local v11    # "scriptTagPosition":I
    :cond_8
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->url:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nativex/monetization/mraid/MRAIDWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method release()V
    .locals 3

    .prologue
    .line 369
    :try_start_0
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->destroyDrawingCache()V

    .line 370
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 372
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 374
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->destroy()V

    .line 375
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->adReleased:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Failed to release the WebView"

    invoke-static {v2, v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method resetMRAID()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 333
    iget v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->initialLayerType:I

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->setLayerType(I)V

    .line 334
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->mraidLoaded:Z

    .line 335
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->adLoaded:Z

    .line 336
    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->adIsMRAID:Z

    .line 337
    return-void
.end method

.method runJSCommand(Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;)V
    .locals 4
    .param p1, "command"    # Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;

    .prologue
    .line 349
    :try_start_0
    iget-boolean v2, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->mraidLoaded:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->adReleased:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 350
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->getJSCall()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "jsCommand":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->loadUrl(Ljava/lang/String;)V

    .line 352
    invoke-static {v1}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 361
    .end local v1    # "jsCommand":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->getCommand()Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    move-result-object v2

    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->GET_PAGE_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    if-ne v2, v3, :cond_0

    .line 354
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommand;->getJSCall()Ljava/lang/String;

    move-result-object v1

    .line 355
    .restart local v1    # "jsCommand":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->loadUrl(Ljava/lang/String;)V

    .line 356
    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    .end local v1    # "jsCommand":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Unable to run JS command"

    invoke-static {v2, v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAdLoaded()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->adLoaded:Z

    .line 326
    return-void
.end method

.method public setContainer(Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    .locals 0
    .param p1, "container"    # Lcom/nativex/monetization/mraid/MRAIDContainer;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .line 176
    return-void
.end method

.method setLayerType(I)V
    .locals 7
    .param p1, "layerType"    # I

    .prologue
    .line 143
    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDWebView;->forceHardware:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 144
    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDWebView;->forceHardware:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    const/4 p1, 0x2

    .line 151
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setLayerType"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/graphics/Paint;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 154
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 155
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .line 147
    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    .line 156
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Cannot access setLayerType method in WebView. Must be older API than 11."

    invoke-static {v2}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setMraidLoaded()V
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->mraidLoaded:Z

    .line 689
    return-void
.end method

.method setSchemeHandler(Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;)V
    .locals 0
    .param p1, "schemeHandler"    # Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->schemeHandler:Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;

    .line 137
    return-void
.end method

.method setSoftwareLayerType()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/MRAIDWebView;->setLayerType(I)V

    .line 165
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setIsViewable(Z)V

    .line 344
    return-void

    .line 343
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
