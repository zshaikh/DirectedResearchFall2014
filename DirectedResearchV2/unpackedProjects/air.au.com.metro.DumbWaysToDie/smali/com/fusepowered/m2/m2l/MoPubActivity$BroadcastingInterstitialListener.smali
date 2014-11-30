.class Lcom/fusepowered/m2/m2l/MoPubActivity$BroadcastingInterstitialListener;
.super Ljava/lang/Object;
.source "MoPubActivity.java"

# interfaces
.implements Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/M2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BroadcastingInterstitialListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/M2Activity;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/M2Activity;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MoPubActivity$BroadcastingInterstitialListener;->this$0:Lcom/fusepowered/m2/m2l/M2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubActivity$BroadcastingInterstitialListener;->this$0:Lcom/fusepowered/m2/m2l/M2Activity;

    const-string v1, "com.mopub.action.interstitial.click"

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/M2Activity;->broadcastInterstitialAction(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public onInterstitialDismissed()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubActivity$BroadcastingInterstitialListener;->this$0:Lcom/fusepowered/m2/m2l/M2Activity;

    const-string v1, "com.mopub.action.interstitial.fail"

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/M2Activity;->broadcastInterstitialAction(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubActivity$BroadcastingInterstitialListener;->this$0:Lcom/fusepowered/m2/m2l/M2Activity;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/M2Activity;->finish()V

    .line 142
    return-void
.end method

.method public onInterstitialLoaded()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubActivity$BroadcastingInterstitialListener;->this$0:Lcom/fusepowered/m2/m2l/M2Activity;

    # getter for: Lcom/fusepowered/m2/m2l/M2Activity;->mHtmlInterstitialWebView:Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/M2Activity;->access$0(Lcom/fusepowered/m2/m2l/M2Activity;)Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/HtmlInterstitialWebView;->loadUrl(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public onInterstitialShown()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public onLeaveApplication()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method
