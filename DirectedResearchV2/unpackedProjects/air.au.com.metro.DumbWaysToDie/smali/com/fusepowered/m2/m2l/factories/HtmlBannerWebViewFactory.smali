.class public Lcom/fusepowered/m2/m2l/factories/HtmlBannerWebViewFactory;
.super Ljava/lang/Object;
.source "HtmlBannerWebViewFactory.java"


# static fields
.field protected static instance:Lcom/fusepowered/m2/m2l/factories/HtmlBannerWebViewFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/fusepowered/m2/m2l/factories/HtmlBannerWebViewFactory;

    invoke-direct {v0}, Lcom/fusepowered/m2/m2l/factories/HtmlBannerWebViewFactory;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/m2l/factories/HtmlBannerWebViewFactory;->instance:Lcom/fusepowered/m2/m2l/factories/HtmlBannerWebViewFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;ZLjava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdConfiguration;)Lcom/fusepowered/m2/m2l/HtmlBannerWebView;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "customEventBannerListener"    # Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;
    .param p2, "isScrollable"    # Z
    .param p3, "redirectUrl"    # Ljava/lang/String;
    .param p4, "clickthroughUrl"    # Ljava/lang/String;
    .param p5, "adConfiguration"    # Lcom/fusepowered/m2/m2l/AdConfiguration;

    .prologue
    .line 51
    sget-object v0, Lcom/fusepowered/m2/m2l/factories/HtmlBannerWebViewFactory;->instance:Lcom/fusepowered/m2/m2l/factories/HtmlBannerWebViewFactory;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/fusepowered/m2/m2l/factories/HtmlBannerWebViewFactory;->internalCreate(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;ZLjava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdConfiguration;)Lcom/fusepowered/m2/m2l/HtmlBannerWebView;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/m2l/factories/HtmlBannerWebViewFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/fusepowered/m2/m2l/factories/HtmlBannerWebViewFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    sput-object p0, Lcom/fusepowered/m2/m2l/factories/HtmlBannerWebViewFactory;->instance:Lcom/fusepowered/m2/m2l/factories/HtmlBannerWebViewFactory;

    .line 69
    return-void
.end method


# virtual methods
.method public internalCreate(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;ZLjava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdConfiguration;)Lcom/fusepowered/m2/m2l/HtmlBannerWebView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customEventBannerListener"    # Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;
    .param p3, "isScrollable"    # Z
    .param p4, "redirectUrl"    # Ljava/lang/String;
    .param p5, "clickthroughUrl"    # Ljava/lang/String;
    .param p6, "adConfiguration"    # Lcom/fusepowered/m2/m2l/AdConfiguration;

    .prologue
    .line 61
    new-instance v0, Lcom/fusepowered/m2/m2l/HtmlBannerWebView;

    invoke-direct {v0, p1, p6}, Lcom/fusepowered/m2/m2l/HtmlBannerWebView;-><init>(Landroid/content/Context;Lcom/fusepowered/m2/m2l/AdConfiguration;)V

    .line 62
    .local v0, "htmlBannerWebView":Lcom/fusepowered/m2/m2l/HtmlBannerWebView;
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/fusepowered/m2/m2l/HtmlBannerWebView;->init(Lcom/fusepowered/m2/m2l/CustomEventBanner$CustomEventBannerListener;ZLjava/lang/String;Ljava/lang/String;)V

    .line 63
    return-object v0
.end method
