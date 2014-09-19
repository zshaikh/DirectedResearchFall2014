.class Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$1MoPubUriJavascriptInterface$1;
.super Ljava/lang/Object;
.source "HtmlInterstitialWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$1MoPubUriJavascriptInterface;->fireFinishLoad()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$1MoPubUriJavascriptInterface;

.field private final synthetic val$moPubUriJavascriptFireFinishLoadListener:Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$MoPubUriJavascriptFireFinishLoadListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$1MoPubUriJavascriptInterface;Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$MoPubUriJavascriptFireFinishLoadListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$1MoPubUriJavascriptInterface$1;->this$1:Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$1MoPubUriJavascriptInterface;

    iput-object p2, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$1MoPubUriJavascriptInterface$1;->val$moPubUriJavascriptFireFinishLoadListener:Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$MoPubUriJavascriptFireFinishLoadListener;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$1MoPubUriJavascriptInterface$1;->val$moPubUriJavascriptFireFinishLoadListener:Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$MoPubUriJavascriptFireFinishLoadListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$MoPubUriJavascriptFireFinishLoadListener;->onInterstitialLoaded()V

    .line 91
    return-void
.end method
