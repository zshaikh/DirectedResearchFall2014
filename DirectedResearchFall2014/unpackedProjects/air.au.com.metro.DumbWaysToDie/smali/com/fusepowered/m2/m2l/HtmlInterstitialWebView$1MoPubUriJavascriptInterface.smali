.class final Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$1MoPubUriJavascriptInterface;
.super Ljava/lang/Object;
.source "HtmlInterstitialWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;->addMoPubUriJavascriptInterface(Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$MoPubUriJavascriptFireFinishLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MoPubUriJavascriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;

.field private final synthetic val$moPubUriJavascriptFireFinishLoadListener:Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$MoPubUriJavascriptFireFinishLoadListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$MoPubUriJavascriptFireFinishLoadListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$1MoPubUriJavascriptInterface;->this$0:Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;

    iput-object p2, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$1MoPubUriJavascriptInterface;->val$moPubUriJavascriptFireFinishLoadListener:Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$MoPubUriJavascriptFireFinishLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fireFinishLoad()Z
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$1MoPubUriJavascriptInterface;->this$0:Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;

    new-instance v1, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$1MoPubUriJavascriptInterface$1;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$1MoPubUriJavascriptInterface;->val$moPubUriJavascriptFireFinishLoadListener:Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$MoPubUriJavascriptFireFinishLoadListener;

    invoke-direct {v1, p0, v2}, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$1MoPubUriJavascriptInterface$1;-><init>(Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$1MoPubUriJavascriptInterface;Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView$MoPubUriJavascriptFireFinishLoadListener;)V

    #calls: Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;->postHandlerRunnable(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;->access$0(Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;Ljava/lang/Runnable;)V

    .line 93
    const/4 v0, 0x1

    return v0
.end method
