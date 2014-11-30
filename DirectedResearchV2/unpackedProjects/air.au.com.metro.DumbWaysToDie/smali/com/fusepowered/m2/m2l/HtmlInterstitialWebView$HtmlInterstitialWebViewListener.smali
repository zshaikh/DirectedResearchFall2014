.class Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;
.super Ljava/lang/Object;
.source "HtmlInterstitialWebView.java"

# interfaces
.implements Lcom/fusepowered/m2/m2l/HtmlWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HtmlInterstitialWebViewListener"
.end annotation


# instance fields
.field private final mCustomEventInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 0
    .param p1, "customEventInterstitialListener"    # Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;->mCustomEventInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 105
    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;->mCustomEventInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    .line 120
    return-void
.end method

.method public onCollapsed()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;->mCustomEventInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 115
    return-void
.end method

.method public onLoaded(Lcom/fusepowered/m2/m2l/BaseHtmlWebView;)V
    .locals 1
    .param p1, "mHtmlWebView"    # Lcom/fusepowered/m2/m2l/BaseHtmlWebView;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$HtmlInterstitialWebViewListener;->mCustomEventInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 110
    return-void
.end method
