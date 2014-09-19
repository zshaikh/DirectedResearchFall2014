.class Lcom/fusepowered/m1/android/BannerExpandedWebViewClient;
.super Lcom/fusepowered/m1/android/MMWebViewClient;
.source "BannerExpandedWebViewClient.java"


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;)V
    .locals 0
    .parameter "mmWebViewClientListener"
    .parameter "redirListener"

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m1/android/MMWebViewClient;-><init>(Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;)V

    .line 10
    return-void
.end method


# virtual methods
.method setMraidState(Lcom/fusepowered/m1/android/MMWebView;)V
    .locals 0
    .parameter "mmWebView"

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMWebView;->setMraidPlacementTypeInline()V

    .line 16
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMWebView;->setMraidExpanded()V

    .line 17
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMWebView;->setMraidReady()V

    .line 18
    return-void
.end method
