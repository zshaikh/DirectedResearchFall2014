.class Lcom/fusepowered/m1/android/InterstitialWebViewClient;
.super Lcom/fusepowered/m1/android/MMWebViewClient;
.source "InterstitialWebViewClient.java"


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;)V
    .locals 0
    .parameter "mmWebViewClientListener"
    .parameter "redirListener"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m1/android/MMWebViewClient;-><init>(Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;)V

    .line 11
    return-void
.end method


# virtual methods
.method setMraidState(Lcom/fusepowered/m1/android/MMWebView;)V
    .locals 0
    .parameter "mmWebView"

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMWebView;->setMraidPlacementTypeInterstitial()V

    .line 17
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMWebView;->setMraidDefault()V

    .line 18
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMWebView;->setMraidReady()V

    .line 19
    return-void
.end method
