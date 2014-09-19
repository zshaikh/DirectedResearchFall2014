.class public Lcom/fusepowered/m2/m2l/factories/HtmlInterstitialWebViewFactory;
.super Ljava/lang/Object;
.source "HtmlInterstitialWebViewFactory.java"


# static fields
.field protected static instance:Lcom/fusepowered/m2/m2l/factories/HtmlInterstitialWebViewFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/fusepowered/m2/m2l/factories/HtmlInterstitialWebViewFactory;

    invoke-direct {v0}, Lcom/fusepowered/m2/m2l/factories/HtmlInterstitialWebViewFactory;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/m2l/factories/HtmlInterstitialWebViewFactory;->instance:Lcom/fusepowered/m2/m2l/factories/HtmlInterstitialWebViewFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdConfiguration;)Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;
    .locals 7
    .parameter "context"
    .parameter "customEventInterstitialListener"
    .parameter "isScrollable"
    .parameter "redirectUrl"
    .parameter "clickthroughUrl"
    .parameter "adConfiguration"

    .prologue
    .line 51
    sget-object v0, Lcom/fusepowered/m2/m2l/factories/HtmlInterstitialWebViewFactory;->instance:Lcom/fusepowered/m2/m2l/factories/HtmlInterstitialWebViewFactory;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/fusepowered/m2/m2l/factories/HtmlInterstitialWebViewFactory;->internalCreate(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdConfiguration;)Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/m2l/factories/HtmlInterstitialWebViewFactory;)V
    .locals 0
    .parameter "factory"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    sput-object p0, Lcom/fusepowered/m2/m2l/factories/HtmlInterstitialWebViewFactory;->instance:Lcom/fusepowered/m2/m2l/factories/HtmlInterstitialWebViewFactory;

    .line 69
    return-void
.end method


# virtual methods
.method public internalCreate(Landroid/content/Context;Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdConfiguration;)Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;
    .locals 1
    .parameter "context"
    .parameter "customEventInterstitialListener"
    .parameter "isScrollable"
    .parameter "redirectUrl"
    .parameter "clickthroughUrl"
    .parameter "adConfiguration"

    .prologue
    .line 61
    new-instance v0, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;

    invoke-direct {v0, p1, p6}, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;-><init>(Landroid/content/Context;Lcom/fusepowered/m2/m2l/AdConfiguration;)V

    .line 62
    .local v0, htmlInterstitialWebView:Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;->init(Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;)V

    .line 63
    return-object v0
.end method
