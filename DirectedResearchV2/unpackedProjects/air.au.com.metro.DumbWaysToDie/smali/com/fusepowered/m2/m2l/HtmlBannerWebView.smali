.class public Lcom/fusepowered/m2/m2l/HtmlBannerWebView;
.super Lcom/fusepowered/m2/m2l/BaseHtmlWebView;
.source "HtmlBannerWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/HtmlBannerWebView$HtmlBannerWebViewListener;
    }
.end annotation


# static fields
.field public static final EXTRA_AD_CLICK_DATA:Ljava/lang/String; = "com.mopub.intent.extra.AD_CLICK_DATA"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/m2/m2l/AdConfiguration;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adConfiguration"    # Lcom/fusepowered/m2/m2l/AdConfiguration;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;-><init>(Landroid/content/Context;Lcom/fusepowered/m2/m2l/AdConfiguration;)V

    .line 44
    return-void
.end method


# virtual methods
.method public init(Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "customEventBannerListener"    # Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;
    .param p2, "isScrollable"    # Z
    .param p3, "redirectUrl"    # Ljava/lang/String;
    .param p4, "clickthroughUrl"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-super {p0, p2}, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->init(Z)V

    .line 49
    new-instance v0, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;

    new-instance v1, Lcom/fusepowered/m2/m2l/HtmlBannerWebView$HtmlBannerWebViewListener;

    invoke-direct {v1, p1}, Lcom/fusepowered/m2/m2l/HtmlBannerWebView$HtmlBannerWebViewListener;-><init>(Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;)V

    invoke-direct {v0, v1, p0, p4, p3}, Lcom/fusepowered/m2/m2l/HtmlWebViewClient;-><init>(Lcom/fusepowered/m2/m2l/HtmlWebViewListener;Lcom/fusepowered/m2/m2l/BaseHtmlWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/HtmlBannerWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 50
    return-void
.end method
