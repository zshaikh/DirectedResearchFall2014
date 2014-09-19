.class Lcom/fusepowered/m2/m2l/HtmlBannerWebView$HtmlBannerWebViewListener;
.super Ljava/lang/Object;
.source "HtmlBannerWebView.java"

# interfaces
.implements Lcom/fusepowered/m2/m2l/HtmlWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/HtmlBannerWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HtmlBannerWebViewListener"
.end annotation


# instance fields
.field private final mCustomEventBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;)V
    .locals 0
    .parameter "customEventBannerListener"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/HtmlBannerWebView$HtmlBannerWebViewListener;->mCustomEventBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    .line 57
    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlBannerWebView$HtmlBannerWebViewListener;->mCustomEventBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 72
    return-void
.end method

.method public onCollapsed()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlBannerWebView$HtmlBannerWebViewListener;->mCustomEventBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;->onBannerCollapsed()V

    .line 77
    return-void
.end method

.method public onFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlBannerWebView$HtmlBannerWebViewListener;->mCustomEventBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 67
    return-void
.end method

.method public onLoaded(Lcom/fusepowered/m2/m2l/BaseHtmlWebView;)V
    .locals 1
    .parameter "htmlWebView"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlBannerWebView$HtmlBannerWebViewListener;->mCustomEventBannerListener:Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 62
    return-void
.end method
