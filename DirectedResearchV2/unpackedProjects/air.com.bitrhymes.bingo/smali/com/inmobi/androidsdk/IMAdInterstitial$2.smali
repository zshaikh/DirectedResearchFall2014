.class Lcom/inmobi/androidsdk/IMAdInterstitial$2;
.super Ljava/lang/Object;
.source "IMAdInterstitial.java"

# interfaces
.implements Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/IMAdInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/IMAdInterstitial;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$2;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissAdScreen()V
    .locals 3

    .prologue
    .line 690
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$2;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 691
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 678
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 679
    const-string v1, "Error loading the interstitial ad "

    .line 678
    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$2;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;)Lcom/inmobi/androidsdk/IMAdInterstitial$a;

    move-result-object v0

    const/16 v1, 0x136

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial$a;->sendEmptyMessage(I)Z

    .line 681
    return-void
.end method

.method public onExpand()V
    .locals 0

    .prologue
    .line 664
    return-void
.end method

.method public onExpandClose()V
    .locals 0

    .prologue
    .line 668
    return-void
.end method

.method public onLeaveApplication()V
    .locals 3

    .prologue
    .line 672
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$2;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 673
    return-void
.end method

.method public onShowAdScreen()V
    .locals 3

    .prologue
    .line 685
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$2;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 686
    return-void
.end method
