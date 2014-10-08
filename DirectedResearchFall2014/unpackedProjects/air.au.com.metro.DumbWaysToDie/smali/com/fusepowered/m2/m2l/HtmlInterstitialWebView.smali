.class public Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;
.super Lcom/fusepowered/m2/m2l/BaseHtmlWebView;
.source "HtmlInterstitialWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;,
        Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$MoPubUriJavascriptFireFinishLoadListener;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/m2/m2l/AdConfiguration;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adConfiguration"    # Lcom/fusepowered/m2/m2l/AdConfiguration;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;-><init>(Landroid/content/Context;Lcom/fusepowered/m2/m2l/AdConfiguration;)V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;->mHandler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;->postHandlerRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postHandlerRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method


# virtual methods
.method addMoPubUriJavascriptInterface(Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$MoPubUriJavascriptFireFinishLoadListener;)V
    .locals 2
    .param p1, "moPubUriJavascriptFireFinishLoadListener"    # Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$MoPubUriJavascriptFireFinishLoadListener;

    .prologue
    .line 97
    new-instance v0, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$1MoPubUriJavascriptInterface;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$1MoPubUriJavascriptInterface;-><init>(Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$MoPubUriJavascriptFireFinishLoadListener;)V

    const-string v1, "mopubUriInterface"

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public init(Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "customEventInterstitialListener"    # Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;
    .param p2, "isScrollable"    # Z
    .param p3, "redirectUrl"    # Ljava/lang/String;
    .param p4, "clickthroughUrl"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-super {p0, p2}, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->init(Z)V

    .line 56
    new-instance v0, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;

    invoke-direct {v0, p1}, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;-><init>(Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;)V

    .line 57
    .local v0, "htmlInterstitialWebViewListener":Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;
    new-instance v1, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;

    invoke-direct {v1, v0, p0, p4, p3}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;-><init>(Lcom/fusepowered/m2/m2l/HtmlWebViewListener;Lcom/fusepowered/m2/m2l/BaseHtmlWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v1, "htmlWebViewClient":Lcom/fusepowered/m2/m2l/HtmlWebViewClient;
    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 60
    new-instance v2, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$1;

    invoke-direct {v2, p0, p1}, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$1;-><init>(Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;)V

    invoke-virtual {p0, v2}, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;->addMoPubUriJavascriptInterface(Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$MoPubUriJavascriptFireFinishLoadListener;)V

    .line 66
    return-void
.end method
