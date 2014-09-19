.class public Lcom/fusepowered/m2/m2l/BaseHtmlWebView;
.super Lcom/fusepowered/m2/m2l/BaseWebView;
.source "BaseHtmlWebView.java"

# interfaces
.implements Lcom/fusepowered/m2/m2l/ViewGestureDetector$UserClickListener;


# instance fields
.field private mClicked:Z

.field private final mViewGestureDetector:Lcom/fusepowered/m2/m2l/ViewGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/m2/m2l/AdConfiguration;)V
    .locals 3
    .parameter "context"
    .parameter "adConfiguration"

    .prologue
    const/4 v2, 0x1

    .line 50
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->disableScrollingAndZoom()V

    .line 53
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 55
    new-instance v0, Lcom/fusepowered/m2/m2l/ViewGestureDetector;

    invoke-direct {v0, p1, p0, p2}, Lcom/fusepowered/m2/m2l/ViewGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/fusepowered/m2/m2l/AdConfiguration;)V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->mViewGestureDetector:Lcom/fusepowered/m2/m2l/ViewGestureDetector;

    .line 56
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->mViewGestureDetector:Lcom/fusepowered/m2/m2l/ViewGestureDetector;

    invoke-virtual {v0, p0}, Lcom/fusepowered/m2/m2l/ViewGestureDetector;->setUserClickListener(Lcom/fusepowered/m2/m2l/ViewGestureDetector$UserClickListener;)V

    .line 58
    invoke-static {}, Lcom/fusepowered/m2/m2l/util/VersionCode;->currentApiLevel()Lcom/fusepowered/m2/m2l/util/VersionCode;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m2/m2l/util/VersionCode;->ICE_CREAM_SANDWICH:Lcom/fusepowered/m2/m2l/util/VersionCode;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/util/VersionCode;->isAtLeast(Lcom/fusepowered/m2/m2l/util/VersionCode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0, v2}, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->enablePlugins(Z)V

    .line 61
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->setBackgroundColor(I)V

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/fusepowered/m2/m2l/BaseHtmlWebView;)Lcom/fusepowered/m2/m2l/ViewGestureDetector;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->mViewGestureDetector:Lcom/fusepowered/m2/m2l/ViewGestureDetector;

    return-object v0
.end method

.method private disableScrollingAndZoom()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 80
    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->setHorizontalScrollbarOverlay(Z)V

    .line 81
    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->setVerticalScrollBarEnabled(Z)V

    .line 82
    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->setVerticalScrollbarOverlay(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 84
    return-void
.end method


# virtual methods
.method public init(Z)V
    .locals 0
    .parameter "isScrollable"

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->initializeOnTouchListener(Z)V

    .line 66
    return-void
.end method

.method initializeOnTouchListener(Z)V
    .locals 1
    .parameter "isScrollable"

    .prologue
    .line 91
    new-instance v0, Lcom/fusepowered/m2/m2l/BaseHtmlWebView$1;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/m2/m2l/BaseHtmlWebView$1;-><init>(Lcom/fusepowered/m2/m2l/BaseHtmlWebView;Z)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    return-void
.end method

.method loadHtmlResponse(Ljava/lang/String;)V
    .locals 6
    .parameter "htmlResponse"

    .prologue
    .line 87
    const-string v1, "http://ads.mopub.com/"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 70
    if-nez p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-super {p0, p1}, Lcom/fusepowered/m2/m2l/BaseWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResetUserClick()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->mClicked:Z

    .line 109
    return-void
.end method

.method public onUserClick()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->mClicked:Z

    .line 104
    return-void
.end method

.method public wasClicked()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->mClicked:Z

    return v0
.end method
