.class Lcom/fusepowered/m1/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;
.super Lcom/fusepowered/m1/android/MMLayout$MMLayoutMMAdImpl;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/AdViewOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdViewOverlayViewMMAdImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/AdViewOverlayView;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m1/android/AdViewOverlayView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->this$0:Lcom/fusepowered/m1/android/AdViewOverlayView;

    .line 306
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m1/android/MMLayout$MMLayoutMMAdImpl;-><init>(Lcom/fusepowered/m1/android/MMLayout;Landroid/content/Context;)V

    .line 307
    new-instance v0, Lcom/fusepowered/m1/android/AdViewOverlayView$OverlayWebViewClientListener;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/AdViewOverlayView$OverlayWebViewClientListener;-><init>(Lcom/fusepowered/m1/android/MMAdImpl;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->mmWebViewClientListener:Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;

    .line 308
    return-void
.end method


# virtual methods
.method getMMWebViewClient()Lcom/fusepowered/m1/android/MMWebViewClient;
    .locals 4

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returning a client for user: OverlayWebViewClient, adimpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->this$0:Lcom/fusepowered/m1/android/AdViewOverlayView;

    iget-object v1, v1, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->this$0:Lcom/fusepowered/m1/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/fusepowered/m1/android/AdViewOverlayView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-wide v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->linkForExpansionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->this$0:Lcom/fusepowered/m1/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/OverlaySettings;->hasExpandUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    :cond_0
    new-instance v0, Lcom/fusepowered/m1/android/BannerExpandedWebViewClient;

    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->mmWebViewClientListener:Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;

    new-instance v2, Lcom/fusepowered/m1/android/AdViewOverlayView$OverlayRedirectionListenerImpl;

    invoke-direct {v2, p0}, Lcom/fusepowered/m1/android/AdViewOverlayView$OverlayRedirectionListenerImpl;-><init>(Lcom/fusepowered/m1/android/MMAdImpl;)V

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/m1/android/BannerExpandedWebViewClient;-><init>(Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->mmWebViewClient:Lcom/fusepowered/m1/android/MMWebViewClient;

    .line 330
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/fusepowered/m1/android/InterstitialWebViewClient;

    iget-object v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->mmWebViewClientListener:Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;

    new-instance v2, Lcom/fusepowered/m1/android/AdViewOverlayView$OverlayRedirectionListenerImpl;

    invoke-direct {v2, p0}, Lcom/fusepowered/m1/android/AdViewOverlayView$OverlayRedirectionListenerImpl;-><init>(Lcom/fusepowered/m1/android/MMAdImpl;)V

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/m1/android/InterstitialWebViewClient;-><init>(Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->mmWebViewClient:Lcom/fusepowered/m1/android/MMWebViewClient;

    goto :goto_0
.end method

.method isExpandingToUrl()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->this$0:Lcom/fusepowered/m1/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/OverlaySettings;->hasExpandUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->this$0:Lcom/fusepowered/m1/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/fusepowered/m1/android/AdViewOverlayView;->settings:Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/OverlaySettings;->hasLoadedExpandUrl()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeProgressBar()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->this$0:Lcom/fusepowered/m1/android/AdViewOverlayView;

    #calls: Lcom/fusepowered/m1/android/AdViewOverlayView;->removeProgressBar()V
    invoke-static {v0}, Lcom/fusepowered/m1/android/AdViewOverlayView;->access$200(Lcom/fusepowered/m1/android/AdViewOverlayView;)V

    .line 314
    return-void
.end method
